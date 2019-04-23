

#ifndef HEADERS_RTC_H
#define HEADERS_RTC_H

/* Includes */
#include <unistd.h>
#include <stdio.h>
#include "../headers/ramInterface.h"
#include "../headers/math.h"
#include "../headers/clarkepark.h"
#include "../headers/phase3.h"
#include "../headers/types.h"
#include "pi_controller.h"


/* Defines */
#define COUNTER_SPEED 	500000 		// 0.5 s / 500ms

#define CYCLE_TIME_1 	1			// Prescaler of the COUNTER_SPEED for cycle class 1
#define CYCLE_TIME_2 	2			// Prescaler of the COUNTER_SPEED for cycle class 2
#define CYCLE_TIME_3 	4			// Prescaler of the COUNTER_SPEED for cycle class 3

/* Variables */
long unsigned int counter;		// Variable to keep track of counter values
int runs;						// Temporary variable to stop rtc after a while

unsigned int cyclicRun;				// Flag to signal the cyclic scheduler to run
unsigned int interruptRun;			// Flag to signal the interrupt scheduler to run

/* Function declarations */
/* Run-To-Completion OS */
void initRtc();
void rtc();

/* Interrupt Service Routine for signaling the interrupt scheduler */
static void isrTask();

/* Interrupt Service Routine for incrementing the counter handling the cyclic scheduling */
static void isrCounter();

/* The scheduler handling the execution of the two sub schedulers */
static void scheduler();

/* The cyclic scheduler handling all execution of cyclic tasks */
static void cyclicScheduler();

/* The interrupt scheduler handling all interrupt triggered tasks */
static void interruptScheduler();

/* Task declaration for cyclic tasks */
static void taskClass1();
static void taskClass2();
static void taskClass3();




#endif /* OS_H_ */
