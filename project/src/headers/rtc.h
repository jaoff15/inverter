

#ifndef HEADERS_RTC_H
#define HEADERS_RTC_H

/* Includes */
#include <unistd.h>
#include <stdio.h>
#include "ramInterface.h"
#include "math.h"
#include "clarkepark.h"
#include "phase3.h"
#include "types.h"
#include "pi_controller.h"
#include "isr.h"



#define CYCLE_TIME 100000		// Cycle time for the cycletask [us]


/* Variables */
long unsigned int counter;		// Variable to keep track of counter values


/* Function declarations */
/* Run-To-Completion OS */
void initRtc();
void rtc();



void cyclicTask();
void interruptTask();



#endif /* OS_H_ */
