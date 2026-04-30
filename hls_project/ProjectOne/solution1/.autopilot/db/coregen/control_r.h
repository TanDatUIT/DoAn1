// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of denoiser_w
//        bit 31~0 - denoiser_w[31:0] (Read/Write)
// 0x20 : Data signal of denoiser_w
//        bit 31~0 - denoiser_w[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of classifier_w
//        bit 31~0 - classifier_w[31:0] (Read/Write)
// 0x2c : Data signal of classifier_w
//        bit 31~0 - classifier_w[63:32] (Read/Write)
// 0x30 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_INPUT_R_DATA      0x10
#define CONTROL_R_BITS_INPUT_R_DATA      64
#define CONTROL_R_ADDR_DENOISER_W_DATA   0x1c
#define CONTROL_R_BITS_DENOISER_W_DATA   64
#define CONTROL_R_ADDR_CLASSIFIER_W_DATA 0x28
#define CONTROL_R_BITS_CLASSIFIER_W_DATA 64
