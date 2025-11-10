// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_gesummv_32.h"

extern XTest_gesummv_32_Config XTest_gesummv_32_ConfigTable[];

XTest_gesummv_32_Config *XTest_gesummv_32_LookupConfig(u16 DeviceId) {
	XTest_gesummv_32_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_GESUMMV_32_NUM_INSTANCES; Index++) {
		if (XTest_gesummv_32_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_gesummv_32_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_gesummv_32_Initialize(XTest_gesummv_32 *InstancePtr, u16 DeviceId) {
	XTest_gesummv_32_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_gesummv_32_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_gesummv_32_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

