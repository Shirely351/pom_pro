// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTEST_GESUMMV_64_H
#define XTEST_GESUMMV_64_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xtest_gesummv_64_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Ctrl_BaseAddress;
} XTest_gesummv_64_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XTest_gesummv_64;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTest_gesummv_64_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTest_gesummv_64_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTest_gesummv_64_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTest_gesummv_64_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XTest_gesummv_64_Initialize(XTest_gesummv_64 *InstancePtr, u16 DeviceId);
XTest_gesummv_64_Config* XTest_gesummv_64_LookupConfig(u16 DeviceId);
int XTest_gesummv_64_CfgInitialize(XTest_gesummv_64 *InstancePtr, XTest_gesummv_64_Config *ConfigPtr);
#else
int XTest_gesummv_64_Initialize(XTest_gesummv_64 *InstancePtr, const char* InstanceName);
int XTest_gesummv_64_Release(XTest_gesummv_64 *InstancePtr);
#endif

void XTest_gesummv_64_Start(XTest_gesummv_64 *InstancePtr);
u32 XTest_gesummv_64_IsDone(XTest_gesummv_64 *InstancePtr);
u32 XTest_gesummv_64_IsIdle(XTest_gesummv_64 *InstancePtr);
u32 XTest_gesummv_64_IsReady(XTest_gesummv_64 *InstancePtr);
void XTest_gesummv_64_EnableAutoRestart(XTest_gesummv_64 *InstancePtr);
void XTest_gesummv_64_DisableAutoRestart(XTest_gesummv_64 *InstancePtr);

void XTest_gesummv_64_Set_v0(XTest_gesummv_64 *InstancePtr, u32 Data);
u32 XTest_gesummv_64_Get_v0(XTest_gesummv_64 *InstancePtr);
void XTest_gesummv_64_Set_v1(XTest_gesummv_64 *InstancePtr, u32 Data);
u32 XTest_gesummv_64_Get_v1(XTest_gesummv_64 *InstancePtr);

void XTest_gesummv_64_InterruptGlobalEnable(XTest_gesummv_64 *InstancePtr);
void XTest_gesummv_64_InterruptGlobalDisable(XTest_gesummv_64 *InstancePtr);
void XTest_gesummv_64_InterruptEnable(XTest_gesummv_64 *InstancePtr, u32 Mask);
void XTest_gesummv_64_InterruptDisable(XTest_gesummv_64 *InstancePtr, u32 Mask);
void XTest_gesummv_64_InterruptClear(XTest_gesummv_64 *InstancePtr, u32 Mask);
u32 XTest_gesummv_64_InterruptGetEnabled(XTest_gesummv_64 *InstancePtr);
u32 XTest_gesummv_64_InterruptGetStatus(XTest_gesummv_64 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
