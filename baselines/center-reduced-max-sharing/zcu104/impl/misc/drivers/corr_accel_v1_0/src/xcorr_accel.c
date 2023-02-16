// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcorr_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCorr_accel_CfgInitialize(XCorr_accel *InstancePtr, XCorr_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCorr_accel_Start(XCorr_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCorr_accel_IsDone(XCorr_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCorr_accel_IsIdle(XCorr_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCorr_accel_IsReady(XCorr_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCorr_accel_EnableAutoRestart(XCorr_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCorr_accel_DisableAutoRestart(XCorr_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

u64 XCorr_accel_Get_start_time(XCorr_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_START_TIME_DATA);
    Data += (u64)XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_START_TIME_DATA + 4) << 32;
    return Data;
}

u64 XCorr_accel_Get_end_time(XCorr_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_END_TIME_DATA);
    Data += (u64)XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_END_TIME_DATA + 4) << 32;
    return Data;
}

void XCorr_accel_InterruptGlobalEnable(XCorr_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XCorr_accel_InterruptGlobalDisable(XCorr_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XCorr_accel_InterruptEnable(XCorr_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_IER);
    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XCorr_accel_InterruptDisable(XCorr_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_IER);
    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCorr_accel_InterruptClear(XCorr_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCorr_accel_WriteReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XCorr_accel_InterruptGetEnabled(XCorr_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_IER);
}

u32 XCorr_accel_InterruptGetStatus(XCorr_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCorr_accel_ReadReg(InstancePtr->Control_BaseAddress, XCORR_ACCEL_CONTROL_ADDR_ISR);
}

