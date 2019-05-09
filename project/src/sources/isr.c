/*
 * isr.c
 *
 *  Created on: May 9, 2019
 *      Author: jacoboffersen
 */


#include "../headers/isr.h"

void isr(){
	/* Read in ADC1 and ADC2 */
	gIA = XAdcPs_GetAdcData(XAdcInstPtr, IA);
	gIB = XAdcPs_GetAdcData(XAdcInstPtr, IB);


	/* Send run command*/
	interruptRun = TRUE;
}
