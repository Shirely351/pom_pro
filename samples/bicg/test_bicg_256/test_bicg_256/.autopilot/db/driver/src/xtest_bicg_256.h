// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTEST_BICG_256_H
#define XTEST_BICG_256_H

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
#include "xtest_bicg_256_hw.h"

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
} XTest_bicg_256_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XTest_bicg_256;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTest_bicg_256_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTest_bicg_256_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTest_bicg_256_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTest_bicg_256_ReadReg(BaseAddress, RegOffset) \
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
int XTest_bicg_256_Initialize(XTest_bicg_256 *InstancePtr, u16 DeviceId);
XTest_bicg_256_Config* XTest_bicg_256_LookupConfig(u16 DeviceId);
int XTest_bicg_256_CfgInitialize(XTest_bicg_256 *InstancePtr, XTest_bicg_256_Config *ConfigPtr);
#else
int XTest_bicg_256_Initialize(XTest_bicg_256 *InstancePtr, const char* InstanceName);
int XTest_bicg_256_Release(XTest_bicg_256 *InstancePtr);
#endif

void XTest_bicg_256_Start(XTest_bicg_256 *InstancePtr);
u32 XTest_bicg_256_IsDone(XTest_bicg_256 *InstancePtr);
u32 XTest_bicg_256_IsIdle(XTest_bicg_256 *InstancePtr);
u32 XTest_bicg_256_IsReady(XTest_bicg_256 *InstancePtr);
void XTest_bicg_256_EnableAutoRestart(XTest_bicg_256 *InstancePtr);
void XTest_bicg_256_DisableAutoRestart(XTest_bicg_256 *InstancePtr);


void XTest_bicg_256_InterruptGlobalEnable(XTest_bicg_256 *InstancePtr);
void XTest_bicg_256_InterruptGlobalDisable(XTest_bicg_256 *InstancePtr);
void XTest_bicg_256_InterruptEnable(XTest_bicg_256 *InstancePtr, u32 Mask);
void XTest_bicg_256_InterruptDisable(XTest_bicg_256 *InstancePtr, u32 Mask);
void XTest_bicg_256_InterruptClear(XTest_bicg_256 *InstancePtr, u32 Mask);
u32 XTest_bicg_256_InterruptGetEnabled(XTest_bicg_256 *InstancePtr);
u32 XTest_bicg_256_InterruptGetStatus(XTest_bicg_256 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
