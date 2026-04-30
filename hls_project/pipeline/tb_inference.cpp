#include "common.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "inference_top.h"

// Số ảnh test (tăng lên để kiểm tra accuracy)
#define N_TEST 100

int main() {
    // 1. Load denoiser weights
    fxp *dw = (fxp*)malloc(665 * sizeof(fxp));
    float tmp;
    // Đường dẫn tuyệt đối đến thư mục pipeline/
    const char *DATA_DIR = "D:/HOCTAP/CLAUDE/PROJECT_ONE/DoAn1/hls_project/pipeline/";
    char path[512];

    sprintf(path, "%sWeights_denoiser.txt", DATA_DIR);
    FILE *f = fopen(path, "r");
    if (!f) { printf("ERROR: Weights_denoiser.txt not found at %s\n", path); return 1; }
    for (int i = 0; i < 665; i++) { fscanf(f, "%f", &tmp); dw[i] = tmp; }
    fclose(f);

    // 2. Load classifier weights
    fxp *cw = (fxp*)malloc(5738 * sizeof(fxp));
    sprintf(path, "%sWeights_classifier.txt", DATA_DIR);
    f = fopen(path, "r");
    if (!f) { printf("ERROR: Weights_classifier.txt not found at %s\n", path); return 1; }
    for (int i = 0; i < 5738; i++) { fscanf(f, "%f", &tmp); cw[i] = tmp; }
    fclose(f);

    // 3. Load test images (noisy, 784 pixels mỗi ảnh)
    fxp *images = (fxp*)malloc(N_TEST * 784 * sizeof(fxp));
    sprintf(path, "%sX_test_noisy.txt", DATA_DIR);
    f = fopen(path, "r");
    if (!f) { printf("ERROR: X_test_noisy.txt not found at %s\n", path); return 1; }
    for (int i = 0; i < N_TEST * 784; i++) { fscanf(f, "%f", &tmp); images[i] = tmp; }
    fclose(f);

    // 4. Load ground-truth labels
    int *labels = (int*)malloc(N_TEST * sizeof(int));
    sprintf(path, "%sY_test.txt", DATA_DIR);
    f = fopen(path, "r");
    if (!f) { printf("ERROR: Y_test.txt not found at %s\n", path); return 1; }
    for (int i = 0; i < N_TEST; i++) { fscanf(f, "%d", &labels[i]); }
    fclose(f);

    // 5. Chạy inference pipeline và đếm đúng
    int correct = 0;
    fxp img[784];
    int digit;

    for (int i = 0; i < N_TEST; i++) {
        for (int k = 0; k < 784; k++) img[k] = images[i * 784 + k];
        inference_top(img, &digit, dw, cw);
        if (digit == labels[i]) correct++;
        printf("  [%3d] label=%d  pred=%d  %s\n",
               i, labels[i], digit, (digit == labels[i]) ? "OK" : "FAIL");
    }

    printf("\n=== Accuracy: %d/%d = %.2f%% ===\n",
           correct, N_TEST, 100.0f * correct / N_TEST);

    free(dw); free(cw); free(images); free(labels);
    return 0;
}
