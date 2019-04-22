#include "os.h"

/* Variables declarations */

long unsigned int counter = 0;
int runs = 0;

char cyclicRun;
char interruptRun;

void rtc(){
	while(1){
		/* Handle conditions for cyclic scheduling */
		counter++;				// Increment counter
		if(counter > 1000){
			cyclicRun = TRUE;	// Set flag
			counter = 0;		// Reset counter
			runs++;				// Increment run counter
		}

		/* Handle conditions for cyclic scheduling */
		if(runs == 5 && counter == 0){
			isr();				// Run ISR
		}

		/* Run scheduler */
		scheduler();


		/* Limit run time */
		if(runs >= 10){
			break;
		}

		usleep(500);			// Sleep
	}
}

static void isr(){
	interruptRun = TRUE;
}

static void scheduler(){
	if(cyclicRun){
		cyclicScheduler();
	}

	if(interruptRun){
		interruptScheduler();
	}


}

static void cyclicScheduler(){
	/* Cycle class 1 */
	if(!(runs % CYCLE_TIME_1)){
		taskClass1();
	}
	/* Cycle class 2 */
	if(!(runs % CYCLE_TIME_2)){
		taskClass2();
	}
	/* Cycle class 3 */
	if(!(runs % CYCLE_TIME_3)){
		taskClass3();
	}

	/* Clear flag */
	cyclicRun 	 = FALSE;
}

static void interruptScheduler(){
	/* All taskscold */
	taskInterrupt1();
	taskInterrupt2();
	taskInterrupt3();


	/* Clear flag */
	interruptRun = FALSE;
}

static void taskClass1(){
	printf("Cyclic Task 1\n");

}

static void taskClass2(){
	printf("Cyclic Task 2\n");

}

static void taskClass3(){
	printf("Cyclic Task 3\n");

}


static void taskInterrupt1(){
	printf("Interrupt Task 1\n");
}
static void taskInterrupt2(){
	printf("Interrupt Task 2\n");
}
static void taskInterrupt3(){
	printf("Interrupt Task 3\n");
}
