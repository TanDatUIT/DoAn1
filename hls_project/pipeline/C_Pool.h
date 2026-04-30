#ifndef C_POOL_H
#define C_POOL_H
#include "common.h"

void C_Max_Pool2D_0(fxp input_MaxPooling[104], fxp output_MaxPooling[48]);
void C_Max_Pool2D_1(fxp input_MaxPooling[80], fxp output_MaxPooling[32]);
void C_flatten0(fxp input_Flatten[128],fxp output_Flatten[128]);

#endif // C_POOL_H
