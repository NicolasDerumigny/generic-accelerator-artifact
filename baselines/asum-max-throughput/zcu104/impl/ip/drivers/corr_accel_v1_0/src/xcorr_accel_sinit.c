// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcorr_accel.h"

extern XCorr_accel_Config XCorr_accel_ConfigTable[];

XCorr_accel_Config *XCorr_accel_LookupConfig(u16 DeviceId) {
	XCorr_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCORR_ACCEL_NUM_INSTANCES; Index++) {
		if (XCorr_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCorr_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCorr_accel_Initialize(XCorr_accel *InstancePtr, u16 DeviceId) {
	XCorr_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCorr_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCorr_accel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

