// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xinference_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XInference_top_CfgInitialize(XInference_top *InstancePtr, XInference_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XInference_top_Start(XInference_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XInference_top_IsDone(XInference_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XInference_top_IsIdle(XInference_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XInference_top_IsReady(XInference_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XInference_top_EnableAutoRestart(XInference_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XInference_top_DisableAutoRestart(XInference_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XInference_top_Get_digit(XInference_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_DIGIT_DATA);
    return Data;
}

u32 XInference_top_Get_digit_vld(XInference_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_DIGIT_CTRL);
    return Data & 0x1;
}

void XInference_top_Set_input_r(XInference_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_INPUT_R_DATA, (u32)(Data));
    XInference_top_WriteReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XInference_top_Get_input_r(XInference_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_INPUT_R_DATA);
    Data += (u64)XInference_top_ReadReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XInference_top_Set_denoiser_w(XInference_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_DENOISER_W_DATA, (u32)(Data));
    XInference_top_WriteReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_DENOISER_W_DATA + 4, (u32)(Data >> 32));
}

u64 XInference_top_Get_denoiser_w(XInference_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_DENOISER_W_DATA);
    Data += (u64)XInference_top_ReadReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_DENOISER_W_DATA + 4) << 32;
    return Data;
}

void XInference_top_Set_classifier_w(XInference_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_CLASSIFIER_W_DATA, (u32)(Data));
    XInference_top_WriteReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_CLASSIFIER_W_DATA + 4, (u32)(Data >> 32));
}

u64 XInference_top_Get_classifier_w(XInference_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XInference_top_ReadReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_CLASSIFIER_W_DATA);
    Data += (u64)XInference_top_ReadReg(InstancePtr->Control_r_BaseAddress, XINFERENCE_TOP_CONTROL_R_ADDR_CLASSIFIER_W_DATA + 4) << 32;
    return Data;
}

void XInference_top_InterruptGlobalEnable(XInference_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_GIE, 1);
}

void XInference_top_InterruptGlobalDisable(XInference_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_GIE, 0);
}

void XInference_top_InterruptEnable(XInference_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_IER);
    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XInference_top_InterruptDisable(XInference_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_IER);
    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XInference_top_InterruptClear(XInference_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XInference_top_WriteReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XInference_top_InterruptGetEnabled(XInference_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_IER);
}

u32 XInference_top_InterruptGetStatus(XInference_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XInference_top_ReadReg(InstancePtr->Control_BaseAddress, XINFERENCE_TOP_CONTROL_ADDR_ISR);
}

