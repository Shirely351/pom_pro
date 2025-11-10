// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_bicg_256.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_bicg_256_CfgInitialize(XTest_bicg_256 *InstancePtr, XTest_bicg_256_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_bicg_256_Start(XTest_bicg_256 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_AP_CTRL) & 0x80;
    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_bicg_256_IsDone(XTest_bicg_256 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_bicg_256_IsIdle(XTest_bicg_256 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_bicg_256_IsReady(XTest_bicg_256 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_bicg_256_EnableAutoRestart(XTest_bicg_256 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTest_bicg_256_DisableAutoRestart(XTest_bicg_256 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_AP_CTRL, 0);
}

void XTest_bicg_256_InterruptGlobalEnable(XTest_bicg_256 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_GIE, 1);
}

void XTest_bicg_256_InterruptGlobalDisable(XTest_bicg_256 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_GIE, 0);
}

void XTest_bicg_256_InterruptEnable(XTest_bicg_256 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_IER);
    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_IER, Register | Mask);
}

void XTest_bicg_256_InterruptDisable(XTest_bicg_256 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_IER);
    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_IER, Register & (~Mask));
}

void XTest_bicg_256_InterruptClear(XTest_bicg_256 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_bicg_256_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_ISR, Mask);
}

u32 XTest_bicg_256_InterruptGetEnabled(XTest_bicg_256 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_IER);
}

u32 XTest_bicg_256_InterruptGetStatus(XTest_bicg_256 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_bicg_256_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_BICG_256_CTRL_ADDR_ISR);
}

