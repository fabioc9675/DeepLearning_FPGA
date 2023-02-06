/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

/*
 * nnTest.c
 *
 *  Created on: Jun 11, 2020
 *      Author: VIPIN
 */


#include "dataValues.h"
#include "xaxidma.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xscugic.h"
#include "sleep.h"

XScuGic IntcInstance;
XAxiDma myDma;

int done = 0;

static void nnISR();


int main(){
    u32 status;
    u32 detectedDigit;

	XAxiDma_Config *myDmaConfig;

	print("Hola Fabian\n");

	myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
	status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
	if(status != XST_SUCCESS){
		print("DMA initialization failed\n");
		return -1;
	}

	XScuGic_Config *IntcConfig;
	IntcConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
	status =  XScuGic_CfgInitialize(&IntcInstance, IntcConfig, IntcConfig->CpuBaseAddress);
	if(status != XST_SUCCESS){
		xil_printf("Interrupt controller initialization failed..");
		return -1;
	}

	XScuGic_SetPriorityTriggerType(&IntcInstance,XPAR_FABRIC_ZYNET_0_INTR_INTR,0xA0,3);
	status = XScuGic_Connect(&IntcInstance,XPAR_FABRIC_ZYNET_0_INTR_INTR,(Xil_InterruptHandler)nnISR,0);
	if(status != XST_SUCCESS){
		xil_printf("Interrupt connection failed");
		return -1;
	}
	XScuGic_Enable(&IntcInstance,XPAR_FABRIC_ZYNET_0_INTR_INTR);
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,(Xil_ExceptionHandler)XScuGic_InterruptHandler,(void *)&IntcInstance);
	Xil_ExceptionEnable();

	status = XAxiDma_SimpleTransfer(&myDma, (u32)dataValues,2*28*28,XAXIDMA_DMA_TO_DEVICE);  // when bus is 8 bits, just 28*28, when bus is 16 bits 2*28*28
	if(status != XST_SUCCESS){
		print("DMA initialization failed\n");
		return -1;
	}

	while(!done);

	detectedDigit = Xil_In32(XPAR_ZYNET_0_BASEADDR+8);

	xil_printf("Detected number %d expected number %d\n\r",detectedDigit,result);
}



static void nnISR(){
	done = 1;
	Xil_In32(XPAR_ZYNET_0_BASEADDR+24); //read clear interrupt
}

