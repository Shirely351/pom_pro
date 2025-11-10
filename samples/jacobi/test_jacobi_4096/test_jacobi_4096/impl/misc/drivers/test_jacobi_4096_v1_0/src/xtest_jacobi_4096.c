// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_jacobi_4096.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_jacobi_4096_CfgInitialize(XTest_jacobi_4096 *InstancePtr, XTest_jacobi_4096_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_jacobi_4096_Start(XTest_jacobi_4096 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_AP_CTRL) & 0x80;
    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_jacobi_4096_IsDone(XTest_jacobi_4096 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_jacobi_4096_IsIdle(XTest_jacobi_4096 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_jacobi_4096_IsReady(XTest_jacobi_4096 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_jacobi_4096_EnableAutoRestart(XTest_jacobi_4096 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTest_jacobi_4096_DisableAutoRestart(XTest_jacobi_4096 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_AP_CTRL, 0);
}

void XTest_jacobi_4096_Set_v0(XTest_jacobi_4096 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_V0_DATA, Data);
}

u32 XTest_jacobi_4096_Get_v0(XTest_jacobi_4096 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_V0_DATA);
    return Data;
}

void XTest_jacobi_4096_InterruptGlobalEnable(XTest_jacobi_4096 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_GIE, 1);
}

void XTest_jacobi_4096_InterruptGlobalDisable(XTest_jacobi_4096 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_GIE, 0);
}

void XTest_jacobi_4096_InterruptEnable(XTest_jacobi_4096 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_IER);
    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_IER, Register | Mask);
}

void XTest_jacobi_4096_InterruptDisable(XTest_jacobi_4096 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_IER);
    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_IER, Register & (~Mask));
}

void XTest_jacobi_4096_InterruptClear(XTest_jacobi_4096 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_jacobi_4096_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_ISR, Mask);
}

u32 XTest_jacobi_4096_InterruptGetEnabled(XTest_jacobi_4096 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_IER);
}

u32 XTest_jacobi_4096_InterruptGetStatus(XTest_jacobi_4096 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_jacobi_4096_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_JACOBI_4096_CTRL_ADDR_ISR);
}

