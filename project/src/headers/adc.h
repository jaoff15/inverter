/*
 * adc.h
 *
 *  Created on: May 9, 2019
 *      Author: jacoboffersen
 */

#ifndef SRC_HEADERS_ADC_H_
#define SRC_HEADERS_ADC_H_

#include "xparameters.h"
#include "xadcps.h"
#include "xstatus.h"


#define XADC_DEVICE_ID 		XPAR_XADCPS_0_DEVICE_ID


#define IA   XADCPS_CH_AUX_MIN + 0
#define IB   XADCPS_CH_AUX_MIN + 1


/* Global variables */
static XAdcPs XAdcInst;      /* XADC driver instance */
static XAdcPs *XAdcInstPtr;	 /* Pointer to driver istance */



void initIoDevices();

#endif /* SRC_HEADERS_ADC_H_ */
