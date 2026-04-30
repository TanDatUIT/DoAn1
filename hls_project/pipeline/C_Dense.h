#ifndef C_DENSE_H
#define C_DENSE_H
#include "common.h"

void C_Dense_0(fxp input_Dense[128],fxp output_Dense[32],fxp bias[32],fxp weight[4096]);
void C_Dense_1(fxp input_Dense[32],fxp output_Dense[16],fxp bias[16],fxp weight[512]);
void C_Dense_2(fxp input_Dense[16],fxp &output_Dense_0,fxp bias[10],fxp weight[160]);

#endif // C_DENSE_H
