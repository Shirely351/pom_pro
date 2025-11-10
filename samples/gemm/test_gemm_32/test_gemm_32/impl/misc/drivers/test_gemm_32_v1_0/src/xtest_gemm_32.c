// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_gemm_32.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_gemm_32_CfgInitialize(XTest_gemm_32 *InstancePtr, XTest_gemm_32_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_gemm_32_Start(XTest_gemm_32 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_AP_CTRL) & 0x80;
    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_gemm_32_IsDone(XTest_gemm_32 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_gemm_32_IsIdle(XTest_gemm_32 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_gemm_32_IsReady(XTest_gemm_32 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_gemm_32_EnableAutoRestart(XTest_gemm_32 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTest_gemm_32_DisableAutoRestart(XTest_gemm_32 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_AP_CTRL, 0);
}

void XTest_gemm_32_Set_v0(XTest_gemm_32 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_V0_DATA, Data);
}

u32 XTest_gemm_32_Get_v0(XTest_gemm_32 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_V0_DATA);
    return Data;
}

void XTest_gemm_32_Set_v1(XTest_gemm_32 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_V1_DATA, Data);
}

u32 XTest_gemm_32_Get_v1(XTest_gemm_32 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_V1_DATA);
    return Data;
}

void XTest_gemm_32_InterruptGlobalEnable(XTest_gemm_32 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_GIE, 1);
}

void XTest_gemm_32_InterruptGlobalDisable(XTest_gemm_32 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_GIE, 0);
}

void XTest_gemm_32_InterruptEnable(XTest_gemm_32 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_IER);
    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_IER, Register | Mask);
}

void XTest_gemm_32_InterruptDisable(XTest_gemm_32 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_IER);
    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_IER, Register & (~Mask));
}

void XTest_gemm_32_InterruptClear(XTest_gemm_32 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_gemm_32_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_ISR, Mask);
}

u32 XTest_gemm_32_InterruptGetEnabled(XTest_gemm_32 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_IER);
}

u32 XTest_gemm_32_InterruptGetStatus(XTest_gemm_32 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_gemm_32_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_GEMM_32_CTRL_ADDR_ISR);
}

