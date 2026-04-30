#include "common.h"
#include "D_Conv.h"
#include "D_Pool.h"
void D_CNN(fxp InModel[784],fxp OutModel0[784],fxp Weights[665]){
	fxp OutPadConv0[900];
	fxp conv1[3136];
	fxp pool[784];
	fxp OutPadConv1[1024];
	fxp conv2[1568];
	fxp upsample[6272];
	fxp OutPadConv2[7200];
	fxp conv3[3136];
	fxp OutPadConv3[3600];
	fxp conv4[784];
	D_Padding_Conv2D_0(&InModel[0],OutPadConv0);
	D_Conv2D_0(OutPadConv0,conv1,&Weights[36],&Weights[0]);
	D_Max_Pool2D_0(conv1,pool);
	D_Padding_Conv2D_1(pool,OutPadConv1);
	D_Conv2D_1(OutPadConv1,conv2,&Weights[328],&Weights[40]);
	D_UpSampling2D_0(conv2,upsample);
	D_Padding_Conv2D_2(upsample,OutPadConv2);
	D_Conv2D_2(OutPadConv2,conv3,&Weights[624],&Weights[336]);
	D_Padding_Conv2D_3(conv3,OutPadConv3);
	D_Conv2D_3(OutPadConv3,conv4,&Weights[664],&Weights[628]);
	// Copy output (Py2C bug: OutModel0 never assigned)
	for(int i = 0; i < 784; i++){
		OutModel0[i] = conv4[i];
	}
}
