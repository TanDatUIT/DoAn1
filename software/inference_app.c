// inference_app.c — Chạy inference pipeline Denoiser+Classifier trên KV260
// Biên dịch: gcc -O2 -o inference_app inference_app.c
// Chạy:      sudo ./inference_app [số_ảnh_test]

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

// ─── Địa chỉ AXI từ Block Design ─────────────────────────────────────────────
#define CTRL_BASE       0xA0000000UL    // s_axi_control   (ap_ctrl + digit)
#define CTRL_R_BASE     0xA0010000UL    // s_axi_control_r (con trỏ buffer)
#define MAP_SIZE        0x10000UL       // 64 KB mỗi vùng

// s_axi_control offsets (byte)
#define AP_CTRL         0x00    // bit0=ap_start, bit1=ap_done, bit2=ap_idle
#define DIGIT_DATA      0x10    // kết quả dự đoán (0–9)

// s_axi_control_r offsets (byte) — con trỏ 64-bit chia thành 2 word 32-bit
#define INPUT_ADDR_LO   0x10
#define INPUT_ADDR_HI   0x14
#define DENOISER_ADDR_LO 0x1C
#define DENOISER_ADDR_HI 0x20
#define CLASSIF_ADDR_LO  0x28
#define CLASSIF_ADDR_HI  0x2C

// ─── Kích thước dữ liệu ───────────────────────────────────────────────────────
#define N_INPUT     784     // 28×28 pixels
#define N_DENOISER  665     // weights denoiser
#define N_CLASSIF   5738    // weights classifier

// ap_fixed<16,8>: lưu dưới dạng int16_t, scale = 2^8 = 256
typedef int16_t fxp_t;
#define FLOAT_TO_FXP(x)  ((fxp_t)((x) * 256.0f + 0.5f))

// ─── Lấy địa chỉ vật lý từ địa chỉ ảo (cần root) ────────────────────────────
static uint64_t virt_to_phys(void *vaddr) {
    int fd = open("/proc/self/pagemap", O_RDONLY);
    if (fd < 0) { perror("pagemap"); return 0; }

    uint64_t vpn = (uint64_t)vaddr / getpagesize();
    uint64_t entry = 0;
    lseek(fd, (off_t)(vpn * 8), SEEK_SET);
    if (read(fd, &entry, 8) != 8) { close(fd); return 0; }
    close(fd);

    if (!(entry & (1ULL << 63))) {
        fprintf(stderr, "Trang chưa được map vào RAM — mlock chưa thành công\n");
        return 0;
    }
    uint64_t pfn = entry & 0x7FFFFFFFFFFFFFULL;
    return (pfn * getpagesize()) + ((uint64_t)vaddr % getpagesize());
}

// ─── Đọc mảng float từ file (một giá trị mỗi dòng) ──────────────────────────
static int load_floats(const char *path, float *out, int n) {
    FILE *f = fopen(path, "r");
    if (!f) { fprintf(stderr, "Không mở được: %s\n", path); return -1; }
    for (int i = 0; i < n; i++) {
        if (fscanf(f, "%f", &out[i]) != 1) {
            fprintf(stderr, "Thiếu dữ liệu tại index %d trong %s\n", i, path);
            fclose(f); return -1;
        }
    }
    fclose(f);
    return 0;
}

// ─── Đọc nhãn (label) từ file ────────────────────────────────────────────────
static int load_labels(const char *path, int *labels, int n) {
    FILE *f = fopen(path, "r");
    if (!f) { fprintf(stderr, "Không mở được: %s\n", path); return -1; }
    for (int i = 0; i < n; i++) {
        if (fscanf(f, "%d", &labels[i]) != 1) {
            fprintf(stderr, "Thiếu nhãn tại index %d\n", i);
            fclose(f); return -1;
        }
    }
    fclose(f);
    return 0;
}

int main(int argc, char *argv[]) {
    int n_test = 50;
    if (argc > 1) n_test = atoi(argv[1]);

    // ── 1. Mở /dev/mem ──────────────────────────────────────────────────────
    int mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd < 0) { perror("Cần sudo: open /dev/mem"); return 1; }

    // ── 2. Map AXI-Lite registers ──────────────────────────────────────────
    volatile uint32_t *ctrl = (uint32_t*)mmap(
        NULL, MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, mem_fd, CTRL_BASE);
    volatile uint32_t *ctrl_r = (uint32_t*)mmap(
        NULL, MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, mem_fd, CTRL_R_BASE);

    if (ctrl == MAP_FAILED || ctrl_r == MAP_FAILED) {
        perror("mmap registers"); return 1;
    }

    // ── 3. Cấp phát buffer căn trang cho DMA ───────────────────────────────
    long pgsz = getpagesize();
    // Mỗi buffer phải nằm gọn trong các trang liên tiếp → cấp phát riêng
    size_t sz_input   = ((N_INPUT   * sizeof(fxp_t) + pgsz-1) / pgsz) * pgsz;
    size_t sz_denoiser= ((N_DENOISER* sizeof(fxp_t) + pgsz-1) / pgsz) * pgsz;
    size_t sz_classif = ((N_CLASSIF * sizeof(fxp_t) + pgsz-1) / pgsz) * pgsz;

    fxp_t *buf_input    = (fxp_t*)aligned_alloc(pgsz, sz_input);
    fxp_t *buf_denoiser = (fxp_t*)aligned_alloc(pgsz, sz_denoiser);
    fxp_t *buf_classif  = (fxp_t*)aligned_alloc(pgsz, sz_classif);

    if (!buf_input || !buf_denoiser || !buf_classif) {
        perror("aligned_alloc"); return 1;
    }

    // Ghim vào RAM, tránh bị swap ra đĩa
    mlock(buf_input,    sz_input);
    mlock(buf_denoiser, sz_denoiser);
    mlock(buf_classif,  sz_classif);

    // ── 4. Load weights (chỉ cần load 1 lần) ──────────────────────────────
    float *fw_den = malloc(N_DENOISER * sizeof(float));
    float *fw_cls = malloc(N_CLASSIF  * sizeof(float));

    if (load_floats("Weights_denoiser.txt",   fw_den, N_DENOISER) < 0) return 1;
    if (load_floats("Weights_classifier.txt", fw_cls, N_CLASSIF)  < 0) return 1;

    for (int i = 0; i < N_DENOISER; i++) buf_denoiser[i] = FLOAT_TO_FXP(fw_den[i]);
    for (int i = 0; i < N_CLASSIF;  i++) buf_classif[i]  = FLOAT_TO_FXP(fw_cls[i]);

    free(fw_den); free(fw_cls);

    // ── 5. Load tất cả ảnh test và nhãn ────────────────────────────────────
    float *all_images = malloc(n_test * N_INPUT * sizeof(float));
    int   *labels     = malloc(n_test * sizeof(int));

    if (load_floats("X_test_noisy.txt", all_images, n_test * N_INPUT) < 0) return 1;
    if (load_labels("Y_test.txt",       labels,     n_test)           < 0) return 1;

    // ── 6. Lấy địa chỉ vật lý của các buffer ──────────────────────────────
    uint64_t phys_denoiser = virt_to_phys(buf_denoiser);
    uint64_t phys_classif  = virt_to_phys(buf_classif);

    if (!phys_denoiser || !phys_classif) {
        fprintf(stderr, "Không lấy được địa chỉ vật lý\n"); return 1;
    }

    // Weights không đổi → ghi con trỏ 1 lần
    ctrl_r[DENOISER_ADDR_LO/4] = (uint32_t)(phys_denoiser & 0xFFFFFFFF);
    ctrl_r[DENOISER_ADDR_HI/4] = (uint32_t)(phys_denoiser >> 32);
    ctrl_r[CLASSIF_ADDR_LO/4]  = (uint32_t)(phys_classif  & 0xFFFFFFFF);
    ctrl_r[CLASSIF_ADDR_HI/4]  = (uint32_t)(phys_classif  >> 32);

    printf("Weights denoiser  @ phys 0x%016llX\n", (unsigned long long)phys_denoiser);
    printf("Weights classifier@ phys 0x%016llX\n", (unsigned long long)phys_classif);

    // ── 7. Vòng lặp inference ──────────────────────────────────────────────
    int correct = 0;
    printf("\n%-6s %-8s %-8s %-6s\n", "Ảnh", "Nhãn", "Dự đoán", "OK?");
    printf("──────────────────────────\n");

    for (int img = 0; img < n_test; img++) {
        // Copy ảnh vào buffer (float → fxp)
        float *src = all_images + img * N_INPUT;
        for (int i = 0; i < N_INPUT; i++)
            buf_input[i] = FLOAT_TO_FXP(src[i]);

        // Đảm bảo CPU đã ghi xong trước khi IP đọc
        __sync_synchronize();

        // Lấy địa chỉ vật lý ảnh (mỗi ảnh đều cùng buffer → lấy 1 lần cũng được)
        uint64_t phys_input = virt_to_phys(buf_input);
        if (!phys_input) { fprintf(stderr, "Lỗi phys input\n"); continue; }

        ctrl_r[INPUT_ADDR_LO/4] = (uint32_t)(phys_input & 0xFFFFFFFF);
        ctrl_r[INPUT_ADDR_HI/4] = (uint32_t)(phys_input >> 32);

        // Khởi động IP
        ctrl[AP_CTRL/4] = 0x01;

        // Chờ AP_DONE (bit 1)
        int timeout = 10000000;
        while (!(ctrl[AP_CTRL/4] & 0x02) && --timeout);
        if (!timeout) {
            fprintf(stderr, "TIMEOUT ảnh %d\n", img);
            continue;
        }

        uint32_t pred = ctrl[DIGIT_DATA/4];
        int ok = (pred == (uint32_t)labels[img]);
        if (ok) correct++;

        printf("%-6d %-8d %-8u %s\n", img, labels[img], pred, ok ? "✓" : "✗");
    }

    printf("──────────────────────────\n");
    printf("Accuracy: %d/%d = %.2f%%\n", correct, n_test, 100.0*correct/n_test);

    // ── Cleanup ────────────────────────────────────────────────────────────
    munlock(buf_input,    sz_input);
    munlock(buf_denoiser, sz_denoiser);
    munlock(buf_classif,  sz_classif);
    free(buf_input); free(buf_denoiser); free(buf_classif);
    free(all_images); free(labels);
    munmap((void*)ctrl,   MAP_SIZE);
    munmap((void*)ctrl_r, MAP_SIZE);
    close(mem_fd);
    return 0;
}
