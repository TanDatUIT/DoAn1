// inference_app.c — Chạy inference pipeline Denoiser+Classifier trên KV260
// Biên dịch: gcc -O2 -o inference_app inference_app.c
// Chạy:      sudo ./inference_app [số_ảnh_test, mặc định 50]

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include "embedded_data.h"

// ─── Địa chỉ AXI từ Block Design ─────────────────────────────────────────────
#define CTRL_BASE        0xA0000000UL   // s_axi_control   (ap_ctrl + digit)
#define CTRL_R_BASE      0xA0010000UL   // s_axi_control_r (con trỏ buffer DDR)
#define MAP_SIZE         0x10000UL      // 64 KB

// s_axi_control offsets
#define AP_CTRL          0x00   // bit0=ap_start, bit1=ap_done, bit2=ap_idle
#define DIGIT_DATA       0x10   // kết quả dự đoán (0–9)

// s_axi_control_r offsets — 3 con trỏ 64-bit (lo/hi word mỗi cái)
#define INPUT_ADDR_LO    0x10
#define INPUT_ADDR_HI    0x14
#define DENOISER_ADDR_LO 0x1C
#define DENOISER_ADDR_HI 0x20
#define CLASSIF_ADDR_LO  0x28
#define CLASSIF_ADDR_HI  0x2C

// ─── Lấy địa chỉ vật lý của địa chỉ ảo (cần chạy sudo) ──────────────────────
static uint64_t virt_to_phys(void *vaddr) {
    long pgsz = getpagesize();
    int fd = open("/proc/self/pagemap", O_RDONLY);
    if (fd < 0) { perror("pagemap"); return 0; }

    uint64_t vpn = (uint64_t)vaddr / pgsz;
    uint64_t entry = 0;
    lseek(fd, (off_t)(vpn * 8), SEEK_SET);
    if (read(fd, &entry, 8) != 8) { close(fd); return 0; }
    close(fd);

    if (!(entry & (1ULL << 63))) {
        fprintf(stderr, "Trang chưa được nạp vào RAM — mlock thất bại\n");
        return 0;
    }
    uint64_t pfn = entry & 0x7FFFFFFFFFFFFFULL;
    return (pfn * pgsz) + ((uint64_t)vaddr % pgsz);
}

int main(int argc, char *argv[]) {
    int n_test = (argc > 1) ? atoi(argv[1]) : 50;
    if (n_test > N_IMAGES) n_test = N_IMAGES;

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

    size_t sz_input    = ((N_INPUT    * sizeof(int16_t) + pgsz-1) / pgsz) * pgsz;
    size_t sz_denoiser = ((N_DENOISER * sizeof(int16_t) + pgsz-1) / pgsz) * pgsz;
    size_t sz_classif  = ((N_CLASSIF  * sizeof(int16_t) + pgsz-1) / pgsz) * pgsz;

    int16_t *buf_input    = (int16_t*)aligned_alloc(pgsz, sz_input);
    int16_t *buf_denoiser = (int16_t*)aligned_alloc(pgsz, sz_denoiser);
    int16_t *buf_classif  = (int16_t*)aligned_alloc(pgsz, sz_classif);

    if (!buf_input || !buf_denoiser || !buf_classif) {
        perror("aligned_alloc"); return 1;
    }

    // Ghim trang vào RAM, không để OS swap ra đĩa
    mlock(buf_input,    sz_input);
    mlock(buf_denoiser, sz_denoiser);
    mlock(buf_classif,  sz_classif);

    // ── 4. Copy weights từ ROM (embedded) vào buffer ──────────────────────
    memcpy(buf_denoiser, WEIGHTS_DENOISER, N_DENOISER * sizeof(int16_t));
    memcpy(buf_classif,  WEIGHTS_CLASSIF,  N_CLASSIF  * sizeof(int16_t));
    __sync_synchronize();

    // ── 5. Lấy địa chỉ vật lý weights (không đổi trong suốt vòng lặp) ────
    uint64_t phys_denoiser = virt_to_phys(buf_denoiser);
    uint64_t phys_classif  = virt_to_phys(buf_classif);

    if (!phys_denoiser || !phys_classif) {
        fprintf(stderr, "Không lấy được địa chỉ vật lý\n"); return 1;
    }

    ctrl_r[DENOISER_ADDR_LO/4] = (uint32_t)(phys_denoiser & 0xFFFFFFFF);
    ctrl_r[DENOISER_ADDR_HI/4] = (uint32_t)(phys_denoiser >> 32);
    ctrl_r[CLASSIF_ADDR_LO/4]  = (uint32_t)(phys_classif  & 0xFFFFFFFF);
    ctrl_r[CLASSIF_ADDR_HI/4]  = (uint32_t)(phys_classif  >> 32);

    printf("Denoiser weights  @ 0x%016llX\n", (unsigned long long)phys_denoiser);
    printf("Classif  weights  @ 0x%016llX\n", (unsigned long long)phys_classif);
    printf("Chạy %d ảnh test...\n\n", n_test);

    // ── 6. Vòng lặp inference ──────────────────────────────────────────────
    int correct = 0;
    printf("%-5s %-6s %-6s %s\n", "Anh", "Nhan", "DuDoan", "OK?");
    printf("─────────────────────\n");

    for (int img = 0; img < n_test; img++) {
        // Copy ảnh nhiễu vào buffer DMA
        memcpy(buf_input, TEST_IMAGES[img], N_INPUT * sizeof(int16_t));
        __sync_synchronize();

        // Ghi địa chỉ ảnh
        uint64_t phys_input = virt_to_phys(buf_input);
        if (!phys_input) { fprintf(stderr, "Lỗi phys input ảnh %d\n", img); continue; }

        ctrl_r[INPUT_ADDR_LO/4] = (uint32_t)(phys_input & 0xFFFFFFFF);
        ctrl_r[INPUT_ADDR_HI/4] = (uint32_t)(phys_input >> 32);

        // Kích hoạt IP (AP_START)
        ctrl[AP_CTRL/4] = 0x01;

        // Chờ AP_DONE (bit 1)
        int timeout = 20000000;
        while (!(ctrl[AP_CTRL/4] & 0x02) && --timeout);
        if (!timeout) {
            fprintf(stderr, "TIMEOUT anh %d\n", img);
            continue;
        }

        uint32_t pred = ctrl[DIGIT_DATA/4];
        int ok = ((int)pred == TEST_LABELS[img]);
        if (ok) correct++;

        printf("%-5d %-6d %-6u %s\n", img, TEST_LABELS[img], pred, ok ? "OK" : "FAIL");
    }

    printf("─────────────────────\n");
    printf("Accuracy: %d/%d = %.2f%%\n", correct, n_test, 100.0*correct/n_test);

    // ── Cleanup ────────────────────────────────────────────────────────────
    munlock(buf_input,    sz_input);
    munlock(buf_denoiser, sz_denoiser);
    munlock(buf_classif,  sz_classif);
    free(buf_input); free(buf_denoiser); free(buf_classif);
    munmap((void*)ctrl,   MAP_SIZE);
    munmap((void*)ctrl_r, MAP_SIZE);
    close(mem_fd);
    return 0;
}
