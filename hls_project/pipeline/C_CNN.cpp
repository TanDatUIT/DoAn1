#include "common.h"
#include "C_Conv.h"
#include "C_Pool.h"
#include "C_Dense.h"
void C_CNN(fxp InModel[784],fxp &OutModel0,fxp Weights[5738]){
	fxp Conv1_C1[2304];
	fxp MaxPool_S2[576];
	fxp Conv2_C3[512];
	fxp MaxPool_S4[128];
	fxp Flatten[128];
	fxp Dense_C5[32];
	fxp Dense_F6[16];
	C_Conv2D_0(&InModel[0],Conv1_C1,&Weights[100],&Weights[0]);
	C_Max_Pool2D_0(Conv1_C1,MaxPool_S2);
	C_Conv2D_1(MaxPool_S2,Conv2_C3,&Weights[904],&Weights[104]);
	C_Max_Pool2D_1(Conv2_C3,MaxPool_S4);
	C_flatten0(MaxPool_S4,Flatten);
	C_Dense_0(Flatten,Dense_C5,&Weights[5008],&Weights[912]);
	C_Dense_1(Dense_C5,Dense_F6,&Weights[5552],&Weights[5040]);
	C_Dense_2(Dense_F6,OutModel0,&Weights[5728],&Weights[5568]);
}
