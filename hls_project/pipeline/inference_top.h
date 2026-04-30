#ifndef INFERENCE_TOP_H
#define INFERENCE_TOP_H
#include "common.h"

// Top function cho Vitis HLS
// input[784]        : ảnh MNIST 28x28 nhiễu, pixel [0,1] dạng ap_fixed<16,8>
// digit             : kết quả dự đoán 0-9
// denoiser_w[665]   : weights của Denoiser (từ Weights_denoiser.txt)
// classifier_w[5738]: weights của Classifier (từ Weights_classifier.txt)
void inference_top(fxp input[784], int *digit,
                   fxp denoiser_w[665], fxp classifier_w[5738]);

#endif // INFERENCE_TOP_H
