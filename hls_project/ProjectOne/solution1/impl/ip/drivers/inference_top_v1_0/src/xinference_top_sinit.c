// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xinference_top.h"

extern XInference_top_Config XInference_top_ConfigTable[];

XInference_top_Config *XInference_top_LookupConfig(u16 DeviceId) {
	XInference_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XINFERENCE_TOP_NUM_INSTANCES; Index++) {
		if (XInference_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XInference_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XInference_top_Initialize(XInference_top *InstancePtr, u16 DeviceId) {
	XInference_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XInference_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XInference_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

