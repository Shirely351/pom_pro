// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_3mm_1024.h"

extern XTest_3mm_1024_Config XTest_3mm_1024_ConfigTable[];

XTest_3mm_1024_Config *XTest_3mm_1024_LookupConfig(u16 DeviceId) {
	XTest_3mm_1024_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_3MM_1024_NUM_INSTANCES; Index++) {
		if (XTest_3mm_1024_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_3mm_1024_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_3mm_1024_Initialize(XTest_3mm_1024 *InstancePtr, u16 DeviceId) {
	XTest_3mm_1024_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_3mm_1024_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_3mm_1024_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

