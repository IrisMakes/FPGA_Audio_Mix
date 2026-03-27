// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmixer.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMixer_CfgInitialize(XMixer *InstancePtr, XMixer_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMixer_Start(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMixer_IsDone(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMixer_IsIdle(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMixer_IsReady(XMixer *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMixer_EnableAutoRestart(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMixer_DisableAutoRestart(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_AP_CTRL, 0);
}

void XMixer_InterruptGlobalEnable(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_GIE, 1);
}

void XMixer_InterruptGlobalDisable(XMixer *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_GIE, 0);
}

void XMixer_InterruptEnable(XMixer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER);
    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER, Register | Mask);
}

void XMixer_InterruptDisable(XMixer *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER);
    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMixer_InterruptClear(XMixer *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMixer_WriteReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_ISR, Mask);
}

u32 XMixer_InterruptGetEnabled(XMixer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_IER);
}

u32 XMixer_InterruptGetStatus(XMixer *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMixer_ReadReg(InstancePtr->Control_BaseAddress, XMIXER_CONTROL_ADDR_ISR);
}

