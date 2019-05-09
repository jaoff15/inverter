/*
 * isr.h
 *
 *  Created on: May 9, 2019
 *      Author: jacoboffersen
 */

#ifndef SRC_HEADERS_ISR_H_
#define SRC_HEADERS_ISR_H_

#include "types.h"
#include "xil_printf.h"
#include "adc.h"

// Flag to signal the interrupt task to run
bool interruptRun;

static u32 gIA;
static u32 gIB;

void isr();

#endif /* SRC_HEADERS_ISR_H_ */
