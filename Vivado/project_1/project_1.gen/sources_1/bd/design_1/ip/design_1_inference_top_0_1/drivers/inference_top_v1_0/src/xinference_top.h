// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XINFERENCE_TOP_H
#define XINFERENCE_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xinference_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XInference_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XInference_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XInference_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XInference_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XInference_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XInference_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XInference_top_Initialize(XInference_top *InstancePtr, u16 DeviceId);
XInference_top_Config* XInference_top_LookupConfig(u16 DeviceId);
int XInference_top_CfgInitialize(XInference_top *InstancePtr, XInference_top_Config *ConfigPtr);
#else
int XInference_top_Initialize(XInference_top *InstancePtr, const char* InstanceName);
int XInference_top_Release(XInference_top *InstancePtr);
#endif

void XInference_top_Start(XInference_top *InstancePtr);
u32 XInference_top_IsDone(XInference_top *InstancePtr);
u32 XInference_top_IsIdle(XInference_top *InstancePtr);
u32 XInference_top_IsReady(XInference_top *InstancePtr);
void XInference_top_EnableAutoRestart(XInference_top *InstancePtr);
void XInference_top_DisableAutoRestart(XInference_top *InstancePtr);

u32 XInference_top_Get_digit(XInference_top *InstancePtr);
u32 XInference_top_Get_digit_vld(XInference_top *InstancePtr);
void XInference_top_Set_input_r(XInference_top *InstancePtr, u64 Data);
u64 XInference_top_Get_input_r(XInference_top *InstancePtr);
void XInference_top_Set_denoiser_w(XInference_top *InstancePtr, u64 Data);
u64 XInference_top_Get_denoiser_w(XInference_top *InstancePtr);
void XInference_top_Set_classifier_w(XInference_top *InstancePtr, u64 Data);
u64 XInference_top_Get_classifier_w(XInference_top *InstancePtr);

void XInference_top_InterruptGlobalEnable(XInference_top *InstancePtr);
void XInference_top_InterruptGlobalDisable(XInference_top *InstancePtr);
void XInference_top_InterruptEnable(XInference_top *InstancePtr, u32 Mask);
void XInference_top_InterruptDisable(XInference_top *InstancePtr, u32 Mask);
void XInference_top_InterruptClear(XInference_top *InstancePtr, u32 Mask);
u32 XInference_top_InterruptGetEnabled(XInference_top *InstancePtr);
u32 XInference_top_InterruptGetStatus(XInference_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
