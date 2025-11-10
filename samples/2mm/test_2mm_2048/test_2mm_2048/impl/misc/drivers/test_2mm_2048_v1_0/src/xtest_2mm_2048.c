// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_2mm_2048.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_2mm_2048_CfgInitialize(XTest_2mm_2048 *InstancePtr, XTest_2mm_2048_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_2mm_2048_Start(XTest_2mm_2048 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_AP_CTRL) & 0x80;
    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_2mm_2048_IsDone(XTest_2mm_2048 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_2mm_2048_IsIdle(XTest_2mm_2048 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_2mm_2048_IsReady(XTest_2mm_2048 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_2mm_2048_EnableAutoRestart(XTest_2mm_2048 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTest_2mm_2048_DisableAutoRestart(XTest_2mm_2048 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_AP_CTRL, 0);
}

void XTest_2mm_2048_Set_v0(XTest_2mm_2048 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_V0_DATA, Data);
}

u32 XTest_2mm_2048_Get_v0(XTest_2mm_2048 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_V0_DATA);
    return Data;
}

void XTest_2mm_2048_Set_v1(XTest_2mm_2048 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_V1_DATA, Data);
}

u32 XTest_2mm_2048_Get_v1(XTest_2mm_2048 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_V1_DATA);
    return Data;
}

void XTest_2mm_2048_Set_v2(XTest_2mm_2048 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_V2_DATA, Data);
}

u32 XTest_2mm_2048_Get_v2(XTest_2mm_2048 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_V2_DATA);
    return Data;
}

void XTest_2mm_2048_InterruptGlobalEnable(XTest_2mm_2048 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_GIE, 1);
}

void XTest_2mm_2048_InterruptGlobalDisable(XTest_2mm_2048 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_GIE, 0);
}

void XTest_2mm_2048_InterruptEnable(XTest_2mm_2048 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_IER);
    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_IER, Register | Mask);
}

void XTest_2mm_2048_InterruptDisable(XTest_2mm_2048 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_IER);
    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_IER, Register & (~Mask));
}

void XTest_2mm_2048_InterruptClear(XTest_2mm_2048 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_2mm_2048_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_ISR, Mask);
}

u32 XTest_2mm_2048_InterruptGetEnabled(XTest_2mm_2048 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_IER);
}

u32 XTest_2mm_2048_InterruptGetStatus(XTest_2mm_2048 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_2mm_2048_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_2MM_2048_CTRL_ADDR_ISR);
}

