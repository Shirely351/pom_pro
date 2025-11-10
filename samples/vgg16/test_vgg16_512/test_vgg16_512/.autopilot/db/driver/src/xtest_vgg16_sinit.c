// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_vgg16.h"

extern XTest_vgg16_Config XTest_vgg16_ConfigTable[];

XTest_vgg16_Config *XTest_vgg16_LookupConfig(u16 DeviceId) {
	XTest_vgg16_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_VGG16_NUM_INSTANCES; Index++) {
		if (XTest_vgg16_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_vgg16_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_vgg16_Initialize(XTest_vgg16 *InstancePtr, u16 DeviceId) {
	XTest_vgg16_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_vgg16_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_vgg16_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

