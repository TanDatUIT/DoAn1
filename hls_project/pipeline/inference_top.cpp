#include "common.h"
#include "inference_top.h"
#include "D_CNN.h"
#include "C_CNN.h"

// Top function: ảnh nhiễu 28x28 → chữ số dự đoán (0-9)
// Signature này là HLS top function — sẽ được synthesize thành IP core
void inference_top(fxp input[784], int *digit,
                   fxp denoiser_w[665], fxp classifier_w[5738])
{
#pragma HLS INTERFACE m_axi port=input         offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=denoiser_w   offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=classifier_w offset=slave bundle=gmem1
#pragma HLS INTERFACE s_axilite port=digit   bundle=control
#pragma HLS INTERFACE s_axilite port=return  bundle=control

    fxp denoised[784];   // buffer ảnh sạch trung gian
    fxp digit_fxp;       // output classifier (scalar — argmax đã tính bên trong)

    // Giai đoạn 1: Denoiser (Autoencoder)
    D_CNN(input, denoised, denoiser_w);

    // Giai đoạn 2: Classifier (LeNet-lite)
    C_CNN(denoised, digit_fxp, classifier_w);

    *digit = (int)digit_fxp;
}
