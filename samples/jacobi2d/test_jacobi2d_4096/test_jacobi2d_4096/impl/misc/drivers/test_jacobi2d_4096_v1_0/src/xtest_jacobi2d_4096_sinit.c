// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_jacobi2d_4096.h"

extern XTest_jacobi2d_4096_Config XTest_jacobi2d_4096_ConfigTable[];

XTest_jacobi2d_4096_Config *XTest_jacobi2d_4096_LookupConfig(u16 DeviceId) {
	XTest_jacobi2d_4096_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_JACOBI2D_4096_NUM_INSTANCES; Index++) {
		if (XTest_jacobi2d_4096_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_jacobi2d_4096_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_jacobi2d_4096_Initialize(XTest_jacobi2d_4096 *InstancePtr, u16 DeviceId) {
	XTest_jacobi2d_4096_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_jacobi2d_4096_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_jacobi2d_4096_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

