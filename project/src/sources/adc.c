/*
 * adc.c
 *
 *  Created on: May 9, 2019
 *      Author: jacoboffersen
 */


#include "../headers/adc.h"



void initIoDevices(){
	XAdcPs_Config *ConfigPtr;												// Create config pointer
	XAdcInstPtr = &XAdcInst;												// Set the xadc pointer to point to the
																			// ADC instance address
	ConfigPtr = XAdcPs_LookupConfig(XADC_DEVICE_ID);						// set the config pointer to point to
																			// where the device configuration can be found
	XAdcPs_CfgInitialize(XAdcInstPtr, ConfigPtr, ConfigPtr->BaseAddress); 	// Initialize xadc
	XAdcPs_SetSequencerMode(XAdcInstPtr, XADCPS_SEQ_MODE_CONTINPASS);		// Set adc to sequencer mode

}
