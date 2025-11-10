// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtest_vgg16.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTest_vgg16_CfgInitialize(XTest_vgg16 *InstancePtr, XTest_vgg16_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTest_vgg16_Start(XTest_vgg16 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_AP_CTRL) & 0x80;
    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTest_vgg16_IsDone(XTest_vgg16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTest_vgg16_IsIdle(XTest_vgg16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTest_vgg16_IsReady(XTest_vgg16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTest_vgg16_EnableAutoRestart(XTest_vgg16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_AP_CTRL, 0x80);
}

void XTest_vgg16_DisableAutoRestart(XTest_vgg16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_AP_CTRL, 0);
}

void XTest_vgg16_Set_v0(XTest_vgg16 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_V0_DATA, Data);
}

u32 XTest_vgg16_Get_v0(XTest_vgg16 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_V0_DATA);
    return Data;
}

void XTest_vgg16_InterruptGlobalEnable(XTest_vgg16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_GIE, 1);
}

void XTest_vgg16_InterruptGlobalDisable(XTest_vgg16 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_GIE, 0);
}

void XTest_vgg16_InterruptEnable(XTest_vgg16 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_IER);
    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_IER, Register | Mask);
}

void XTest_vgg16_InterruptDisable(XTest_vgg16 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_IER);
    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_IER, Register & (~Mask));
}

void XTest_vgg16_InterruptClear(XTest_vgg16 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTest_vgg16_WriteReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_ISR, Mask);
}

u32 XTest_vgg16_InterruptGetEnabled(XTest_vgg16 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_IER);
}

u32 XTest_vgg16_InterruptGetStatus(XTest_vgg16 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTest_vgg16_ReadReg(InstancePtr->Ctrl_BaseAddress, XTEST_VGG16_CTRL_ADDR_ISR);
}

