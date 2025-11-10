// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTEST_SEIDEL_4096_H
#define XTEST_SEIDEL_4096_H

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
#include "xtest_seidel_4096_hw.h"

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
} XTest_seidel_4096_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XTest_seidel_4096;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTest_seidel_4096_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTest_seidel_4096_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTest_seidel_4096_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTest_seidel_4096_ReadReg(BaseAddress, RegOffset) \
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
int XTest_seidel_4096_Initialize(XTest_seidel_4096 *InstancePtr, u16 DeviceId);
XTest_seidel_4096_Config* XTest_seidel_4096_LookupConfig(u16 DeviceId);
int XTest_seidel_4096_CfgInitialize(XTest_seidel_4096 *InstancePtr, XTest_seidel_4096_Config *ConfigPtr);
#else
int XTest_seidel_4096_Initialize(XTest_seidel_4096 *InstancePtr, const char* InstanceName);
int XTest_seidel_4096_Release(XTest_seidel_4096 *InstancePtr);
#endif

void XTest_seidel_4096_Start(XTest_seidel_4096 *InstancePtr);
u32 XTest_seidel_4096_IsDone(XTest_seidel_4096 *InstancePtr);
u32 XTest_seidel_4096_IsIdle(XTest_seidel_4096 *InstancePtr);
u32 XTest_seidel_4096_IsReady(XTest_seidel_4096 *InstancePtr);
void XTest_seidel_4096_EnableAutoRestart(XTest_seidel_4096 *InstancePtr);
void XTest_seidel_4096_DisableAutoRestart(XTest_seidel_4096 *InstancePtr);

void XTest_seidel_4096_Set_v0(XTest_seidel_4096 *InstancePtr, u32 Data);
u32 XTest_seidel_4096_Get_v0(XTest_seidel_4096 *InstancePtr);

void XTest_seidel_4096_InterruptGlobalEnable(XTest_seidel_4096 *InstancePtr);
void XTest_seidel_4096_InterruptGlobalDisable(XTest_seidel_4096 *InstancePtr);
void XTest_seidel_4096_InterruptEnable(XTest_seidel_4096 *InstancePtr, u32 Mask);
void XTest_seidel_4096_InterruptDisable(XTest_seidel_4096 *InstancePtr, u32 Mask);
void XTest_seidel_4096_InterruptClear(XTest_seidel_4096 *InstancePtr, u32 Mask);
u32 XTest_seidel_4096_InterruptGetEnabled(XTest_seidel_4096 *InstancePtr);
u32 XTest_seidel_4096_InterruptGetStatus(XTest_seidel_4096 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
