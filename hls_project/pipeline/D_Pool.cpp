#include "common.h"
void D_Max_Pool2D_0(fxp input_MaxPooling[3136], fxp output_MaxPooling[784]){
	int PoolSize = 2;
	int stride = 2;
	int index = 0;
	for (int i = 0; i < 4; i++){
		index = 0;
		for (int z = 0; z < 14; z++){
			for (int y = 0; y < 14; y++){
				fxp max_c = -10;
				for (int h = 0; h < PoolSize; h++){
					for (int w = 0; w < PoolSize; w++){
						int Pool_index = 28 * 28 * i + 28 * h + 28 * stride * z + w + y * stride;
						fxp Pool_value = input_MaxPooling[Pool_index];
						if (Pool_value >= max_c) max_c = Pool_value;
					}
				}
				int outIndex = 14 * 14 * i + index;
				output_MaxPooling[outIndex] = max_c;
				index++;
			}
		}
	}
}
void D_UpSampling2D_0(fxp input_Up[1568], fxp output_Up[6272]){
	for (int c = 0; c < 8; c++){
		for (int y = 0; y < 28; y++){
			for (int x = 0; x < 28; x++){
				output_Up[28*28*c + 28*y + x] = input_Up[14*14*c + 14*(y/2) + (x/2)];
			}
		}
	}
}
