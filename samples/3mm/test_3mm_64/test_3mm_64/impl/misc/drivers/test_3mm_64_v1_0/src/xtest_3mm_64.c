// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_3mm_64.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_3mm_64_CfgInitialize(XTest_3mm_64 *InstancePtr, XTest_3mm_64_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_3mm_64_Start(XTest_3mm_64 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_AP_CTRL) & 0x80;
    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_3mm_64_IsDone(XTest_3mm_64 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_3mm_64_IsIdle(XTest_3mm_64 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_3mm_64_IsReady(XTest_3mm_64 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_3mm_64_EnableAutoRestart(XTest_3mm_64 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTest_3mm_64_DisableAutoRestart(XTest_3mm_64 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_AP_CTRL, 0);
}

void XTest_3mm_64_Set_v0(XTest_3mm_64 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_V0_DATA, Data);
}

u32 XTest_3mm_64_Get_v0(XTest_3mm_64 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_V0_DATA);
    return Data;
}

void XTest_3mm_64_InterruptGlobalEnable(XTest_3mm_64 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_GIE, 1);
}

void XTest_3mm_64_InterruptGlobalDisable(XTest_3mm_64 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_GIE, 0);
}

void XTest_3mm_64_InterruptEnable(XTest_3mm_64 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_IER);
    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_IER, Register | Mask);
}

void XTest_3mm_64_InterruptDisable(XTest_3mm_64 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_IER);
    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_IER, Register & (~Mask));
}

void XTest_3mm_64_InterruptClear(XTest_3mm_64 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_3mm_64_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_ISR, Mask);
}

u32 XTest_3mm_64_InterruptGetEnabled(XTest_3mm_64 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_IER);
}

u32 XTest_3mm_64_InterruptGetStatus(XTest_3mm_64 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_3mm_64_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_3MM_64_CTRL_ADDR_ISR);
}

