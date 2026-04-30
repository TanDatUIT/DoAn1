#include "common.h"
void D_Padding_Conv2D_0(fxp input_Pad_Conv[784], fxp output_Pad_Conv[900]){
	loop_for_3_channel_pad_0:
	for (int c = 0; c < 1; c++){
		loop_for_channel_pad_0:
		for (int n = 0; n < 30; n++){
			loop_for_weight_pad_0:
			for (int i = 0; i < 30; i++){
				if (n < 1 || n >= 29) output_Pad_Conv[30 * 30 * c + 30 * n + i]=0;
				 else 
					if (i < 1 || i >= 29) output_Pad_Conv[30 * 30 * c + 30 * n + i]=0; else output_Pad_Conv[30 * 30 * c + 30 * n + i] = input_Pad_Conv[28 * 28 * c + 28 * (n - 1) + i - 1];
			}
		}
	}
}
void D_Conv2D_0(fxp Input_Conv[900],fxp Output_Conv[3136], fxp bias[4], fxp kernel[36]){
	loop_for_channel2D_0:
	int stride = 1;
	for (int n = 0; n < 4; n++){
		loop_for_bp2D_0:
		for (int x = 0; x < 28; x++){
			loop_for_ap2D_0:
			for (int y = 0; y < 28; y++){
				fxp s = 0;
				loop_for_fc_0:
				for (int k = 0; k < 1; k++){
					loop_for_fb_0:
					for (int i = 0; i < 3; i++){
						loop_for_fa_0:
						for (int j = 0; j < 3; j++){
							s=s+(kernel[1*3*3*n+3*3*k+3*i+j])*(Input_Conv[30*30*k+30*(i+x*stride)+j+y*stride]);}
					}
				}
				if ((s+bias[n])<0) Output_Conv[28*28*n+28*x+y]=0; else Output_Conv[28*28*n+28*x+y]=s+bias[n];
			}
		}
	}
}
void D_Padding_Conv2D_1(fxp input_Pad_Conv[784], fxp output_Pad_Conv[1024]){
	loop_for_3_channel_pad_1:
	for (int c = 0; c < 4; c++){
		loop_for_channel_pad_1:
		for (int n = 0; n < 16; n++){
			loop_for_weight_pad_1:
			for (int i = 0; i < 16; i++){
				if (n < 1 || n >= 15) output_Pad_Conv[16 * 16 * c + 16 * n + i]=0;
				 else 
					if (i < 1 || i >= 15) output_Pad_Conv[16 * 16 * c + 16 * n + i]=0; else output_Pad_Conv[16 * 16 * c + 16 * n + i] = input_Pad_Conv[14 * 14 * c + 14 * (n - 1) + i - 1];
			}
		}
	}
}
void D_Conv2D_1(fxp Input_Conv[1024],fxp Output_Conv[1568], fxp bias[8], fxp kernel[288]){
	loop_for_channel2D_1:
	int stride = 1;
	for (int n = 0; n < 8; n++){
		loop_for_bp2D_1:
		for (int x = 0; x < 14; x++){
			loop_for_ap2D_1:
			for (int y = 0; y < 14; y++){
				fxp s = 0;
				loop_for_fc_1:
				for (int k = 0; k < 4; k++){
					loop_for_fb_1:
					for (int i = 0; i < 3; i++){
						loop_for_fa_1:
						for (int j = 0; j < 3; j++){
							s=s+(kernel[4*3*3*n+3*3*k+3*i+j])*(Input_Conv[16*16*k+16*(i+x*stride)+j+y*stride]);}
					}
				}
				if ((s+bias[n])<0) Output_Conv[14*14*n+14*x+y]=0; else Output_Conv[14*14*n+14*x+y]=s+bias[n];
			}
		}
	}
}
void D_Padding_Conv2D_2(fxp input_Pad_Conv[6272], fxp output_Pad_Conv[7200]){
	loop_for_3_channel_pad_2:
	for (int c = 0; c < 8; c++){
		loop_for_channel_pad_2:
		for (int n = 0; n < 30; n++){
			loop_for_weight_pad_2:
			for (int i = 0; i < 30; i++){
				if (n < 1 || n >= 29) output_Pad_Conv[30 * 30 * c + 30 * n + i]=0;
				 else 
					if (i < 1 || i >= 29) output_Pad_Conv[30 * 30 * c + 30 * n + i]=0; else output_Pad_Conv[30 * 30 * c + 30 * n + i] = input_Pad_Conv[28 * 28 * c + 28 * (n - 1) + i - 1];
			}
		}
	}
}
void D_Conv2D_2(fxp Input_Conv[7200],fxp Output_Conv[3136], fxp bias[4], fxp kernel[288]){
	loop_for_channel2D_2:
	int stride = 1;
	for (int n = 0; n < 4; n++){
		loop_for_bp2D_2:
		for (int x = 0; x < 28; x++){
			loop_for_ap2D_2:
			for (int y = 0; y < 28; y++){
				fxp s = 0;
				loop_for_fc_2:
				for (int k = 0; k < 8; k++){
					loop_for_fb_2:
					for (int i = 0; i < 3; i++){
						loop_for_fa_2:
						for (int j = 0; j < 3; j++){
							s=s+(kernel[8*3*3*n+3*3*k+3*i+j])*(Input_Conv[30*30*k+30*(i+x*stride)+j+y*stride]);}
					}
				}
				if ((s+bias[n])<0) Output_Conv[28*28*n+28*x+y]=0; else Output_Conv[28*28*n+28*x+y]=s+bias[n];
			}
		}
	}
}
void D_Padding_Conv2D_3(fxp input_Pad_Conv[3136], fxp output_Pad_Conv[3600]){
	loop_for_3_channel_pad_3:
	for (int c = 0; c < 4; c++){
		loop_for_channel_pad_3:
		for (int n = 0; n < 30; n++){
			loop_for_weight_pad_3:
			for (int i = 0; i < 30; i++){
				if (n < 1 || n >= 29) output_Pad_Conv[30 * 30 * c + 30 * n + i]=0;
				 else 
					if (i < 1 || i >= 29) output_Pad_Conv[30 * 30 * c + 30 * n + i]=0; else output_Pad_Conv[30 * 30 * c + 30 * n + i] = input_Pad_Conv[28 * 28 * c + 28 * (n - 1) + i - 1];
			}
		}
	}
}
void D_Conv2D_3(fxp Input_Conv[3600],fxp Output_Conv[784], fxp bias[1], fxp kernel[36]){
	loop_for_channel2D_3:
	int stride = 1;
	for (int n = 0; n < 1; n++){
		loop_for_bp2D_3:
		for (int x = 0; x < 28; x++){
			loop_for_ap2D_3:
			for (int y = 0; y < 28; y++){
				fxp s = 0;
				loop_for_fc_3:
				for (int k = 0; k < 4; k++){
					loop_for_fb_3:
					for (int i = 0; i < 3; i++){
						loop_for_fa_3:
						for (int j = 0; j < 3; j++){
							s=s+(kernel[4*3*3*n+3*3*k+3*i+j])*(Input_Conv[30*30*k+30*(i+x*stride)+j+y*stride]);}
					}
				}
				Output_Conv[28*28*n+28*x+y]=(fxp)(1.0/(1.0 + exp(-(double)(s+bias[n]))));
			}
		}
	}
}
