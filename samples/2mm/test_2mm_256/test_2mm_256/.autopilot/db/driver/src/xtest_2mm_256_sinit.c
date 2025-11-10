// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_2mm_256.h"

extern XTest_2mm_256_Config XTest_2mm_256_ConfigTable[];

XTest_2mm_256_Config *XTest_2mm_256_LookupConfig(u16 DeviceId) {
	XTest_2mm_256_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_2MM_256_NUM_INSTANCES; Index++) {
		if (XTest_2mm_256_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_2mm_256_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_2mm_256_Initialize(XTest_2mm_256 *InstancePtr, u16 DeviceId) {
	XTest_2mm_256_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_2mm_256_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_2mm_256_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

