#ifndef C_CONV_H
#define C_CONV_H
#include "common.h"

void C_Conv2D_0(fxp Input_Conv[784],fxp Output_Conv[2304], fxp bias[4], fxp kernel[100]);
void C_Conv2D_1(fxp Input_Conv[576],fxp Output_Conv[512], fxp bias[8], fxp kernel[800]);

#endif // C_CONV_H
