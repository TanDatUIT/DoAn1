#include <ap_axi_sdata.h>
typedef ap_fixed<16,8> fxp;
void Padding_Conv2D_0(fxp input_Pad_Conv[784], fxp output_Pad_Conv[900]);
#include <ap_axi_sdata.h>
typedef ap_fixed<16,8> fxp;
void Conv2D_0(fxp Input_Conv[900],fxp Output_Conv[3136], fxp bias[4], fxp kernel[36]);
void Padding_Conv2D_1(fxp input_Pad_Conv[784], fxp output_Pad_Conv[1024]);
void Conv2D_1(fxp Input_Conv[1024],fxp Output_Conv[1568], fxp bias[8], fxp kernel[288]);
void Padding_Conv2D_2(fxp input_Pad_Conv[6272], fxp output_Pad_Conv[7200]);
void Conv2D_2(fxp Input_Conv[7200],fxp Output_Conv[3136], fxp bias[4], fxp kernel[288]);
#include <cmath>
void Padding_Conv2D_3(fxp input_Pad_Conv[3136], fxp output_Pad_Conv[3600]);
#include <cmath>
void Conv2D_3(fxp Input_Conv[3600],fxp Output_Conv[784], fxp bias[1], fxp kernel[36]);
