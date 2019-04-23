

#ifndef OS_H_
#define OS_H_

/* Includes */
#include <unistd.h>
#include <stdio.h>

/* Defines */
#define COUNTER_SPEED 500000 	// 0.5 s / 500ms

#define CYCLE_TIME_1 1			// Prescaler of the COUNTER_SPEED for cycle class 1
#define CYCLE_TIME_2 2			// Prescaler of the COUNTER_SPEED for cycle class 2
#define CYCLE_TIME_3 4			// Prescaler of the COUNTER_SPEED for cycle class 3

#define TRUE 1
#define FALSE 0

/* Variables */
long unsigned int counter = 0;		// Variable to keep track of counter values
int runs = 0;						// Temporary variable to stop rtc after a while

char cyclicRun;						// Flag to signal the cyclic scheduler to run
char interruptRun;					// Flag to signal the interrupt scheduler to run

/* Function declarations */
/* Run-To-Completion OS */
void rtc();
static void isr();
static void scheduler();
static void cyclicScheduler();
static void interruptScheduler();

/* Task declaration for cyclic tasks */
static void taskClass1();
static void taskClass2();
static void taskClass3();

/* Task declaration for interrupt tasks */
static void taskInterrupt1();
static void taskInterrupt2();
static void taskInterrupt3();



#endif /* OS_H_ */
