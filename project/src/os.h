

#ifndef OS_H_
#define OS_H_

/* Includes */
#include <unistd.h>
#include <stdio.h>

/* Defines */
#define COUNTER_SPEED 500000 // 0.5 s / 500ms

#define CYCLE_TIME_1 1
#define CYCLE_TIME_2 2
#define CYCLE_TIME_3 4

#define TRUE 1
#define FALSE 0

/* Function declarations */
/* Run-To-Completion OS */
void rtc();
static void isr();
static void scheduler();
static void cyclicScheduler();
static void interruptScheduler();


static void taskClass1();
static void taskClass2();
static void taskClass3();


static void taskInterrupt1();
static void taskInterrupt2();
static void taskInterrupt3();



#endif /* OS_H_ */
