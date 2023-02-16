// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCORR_ACCEL_H
#define XCORR_ACCEL_H

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
#include "xcorr_accel_hw.h"

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
} XCorr_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCorr_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCorr_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCorr_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCorr_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCorr_accel_ReadReg(BaseAddress, RegOffset) \
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
int XCorr_accel_Initialize(XCorr_accel *InstancePtr, u16 DeviceId);
XCorr_accel_Config* XCorr_accel_LookupConfig(u16 DeviceId);
int XCorr_accel_CfgInitialize(XCorr_accel *InstancePtr, XCorr_accel_Config *ConfigPtr);
#else
int XCorr_accel_Initialize(XCorr_accel *InstancePtr, const char* InstanceName);
int XCorr_accel_Release(XCorr_accel *InstancePtr);
#endif

void XCorr_accel_Start(XCorr_accel *InstancePtr);
u32 XCorr_accel_IsDone(XCorr_accel *InstancePtr);
u32 XCorr_accel_IsIdle(XCorr_accel *InstancePtr);
u32 XCorr_accel_IsReady(XCorr_accel *InstancePtr);
void XCorr_accel_EnableAutoRestart(XCorr_accel *InstancePtr);
void XCorr_accel_DisableAutoRestart(XCorr_accel *InstancePtr);

u64 XCorr_accel_Get_start_time(XCorr_accel *InstancePtr);
u64 XCorr_accel_Get_end_time(XCorr_accel *InstancePtr);

void XCorr_accel_InterruptGlobalEnable(XCorr_accel *InstancePtr);
void XCorr_accel_InterruptGlobalDisable(XCorr_accel *InstancePtr);
void XCorr_accel_InterruptEnable(XCorr_accel *InstancePtr, u32 Mask);
void XCorr_accel_InterruptDisable(XCorr_accel *InstancePtr, u32 Mask);
void XCorr_accel_InterruptClear(XCorr_accel *InstancePtr, u32 Mask);
u32 XCorr_accel_InterruptGetEnabled(XCorr_accel *InstancePtr);
u32 XCorr_accel_InterruptGetStatus(XCorr_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
