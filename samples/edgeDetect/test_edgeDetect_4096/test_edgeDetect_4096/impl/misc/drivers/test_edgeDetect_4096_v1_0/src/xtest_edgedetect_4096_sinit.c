// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_edgedetect_4096.h"

extern XTest_edgedetect_4096_Config XTest_edgedetect_4096_ConfigTable[];

XTest_edgedetect_4096_Config *XTest_edgedetect_4096_LookupConfig(u16 DeviceId) {
	XTest_edgedetect_4096_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_EDGEDETECT_4096_NUM_INSTANCES; Index++) {
		if (XTest_edgedetect_4096_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_edgedetect_4096_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_edgedetect_4096_Initialize(XTest_edgedetect_4096 *InstancePtr, u16 DeviceId) {
	XTest_edgedetect_4096_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_edgedetect_4096_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_edgedetect_4096_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

