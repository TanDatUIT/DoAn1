#include "Conv.h"
#include "Pool.h"
#include "Dense.h"
#include <algorithm>
#include <string.h>
#include <ap_axi_sdata.h>
typedef ap_fixed<16,8> fxp;
void CNN(fxp InModel[784],fxp OutModel0[784],fxp Weights[665]){
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
	Padding_Conv2D_0(&InModel[0],OutPadConv0);
	Conv2D_0(OutPadConv0,conv1,&Weights[36],&Weights[0]);
	Max_Pool2D_0(conv1,pool);
	Padding_Conv2D_1(pool,OutPadConv1);
	Conv2D_1(OutPadConv1,conv2,&Weights[328],&Weights[40]);
	UpSampling2D_0(conv2,upsample);
	Padding_Conv2D_2(upsample,OutPadConv2);
	Conv2D_2(OutPadConv2,conv3,&Weights[624],&Weights[336]);
	Padding_Conv2D_3(conv3,OutPadConv3);
	Conv2D_3(OutPadConv3,conv4,&Weights[664],&Weights[628]);
	// Copy output (Py2C bug: OutModel0 never assigned)
	for(int i = 0; i < 784; i++){
		OutModel0[i] = conv4[i];
	}
}
