
/* Includes */
#include "../headers/rtc.h"

Controller cQ;
Controller cD;

void initRtc(){
	double kpQ = 1;
	double kiQ = 1;
	initController(&cQ, kpQ, kiQ);

	double kpD = 1;
	double kiD = 1;
	initController(&cD, kpD, kiD);
}

/* Run-To-Completion OS */
void rtc(){
	while(1){
		/* Handle conditions for cyclic scheduling */
		isrCounter();				// Increment counter. Only temporary
		if(counter > COUNTER_SPEED){
			cyclicRun++;			// Set flag
			counter = 0;			// Reset counter
			runs++;					// Increment run counter
		}

		/* Handle conditions for cyclic scheduling. Only temporary */
		if(runs == 5 && counter == 0){
			isrTask();				// Run ISR
		}

		/* Run scheduler */
		scheduler();

		/* Limit run time */
		if(runs >= 1){
			break;
		}

		usleep(1);					// Sleep
	}
}

/* Interrupt Service Routine for the counter used for the cyclic scheduler */
static void isrCounter(){
	counter++;
}

/* Interrupt Service Routine used for signaling */
static void isrTask(){
	interruptRun++;
}

/* RTC scheduler */
static void scheduler(){
	if(cyclicRun){
		cyclicScheduler();
	}

	if(interruptRun){
		interruptScheduler();
	}


}

/* Task scheduler for cyclic tasks */
static void cyclicScheduler(){
	/* Clear flag */
	cyclicRun--;

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
}

/* Task scheduler for interrupt tasks */
static void interruptScheduler(){
	/* Clear flag */
	interruptRun--;

	/* All tasks */

}




/* Cyclic tasks */
static void taskClass1(){
//	printf("Cyclic Task 1\n");
	/* Initialize controller */

		/* Measurements */
		double angle;
		readMemory(ROTOR_ANGLE, &angle);			// Read angle from memory
		angle = 0;									// Temporary

		double iA;
		readMemory(CURRENT_MEASUREMENT_A, &iA);		// Read phase current 1 from memory
		iA = -0.809207777821378;	 				// Temporary

		double iB;
		readMemory(CURRENT_MEASUREMENT_B, &iB);		// Read phase current 2 from memory
		iB = -0.104205583519848; 					// Temporary

		 // Calculate third phase
		double iC = getPhase3(iA,iB);				// Calculate phase current 3



		/* Clarke Park */
		double iD, iQ;
		clarkePark(&iD, &iQ, iA, iB, iC, deg2rad(angle));



		/* Control */
		double outD = getOutput(&cD, iD);
		double outQ = getOutput(&cQ, iQ);


		/* Inverse Park Clarke */
		double vA, vB, vC;
		invClarkePark(&vA, &vB, &vC, outD, outQ, deg2rad(angle));


		printf("A: %f\n",vA);
		printf("B: %f\n",vB);
		printf("C: %f\n",vC);

		/* Writing to memory */
		writeMemory(PHASE_THRESHOLD_A, vA);
		writeMemory(PHASE_THRESHOLD_B, vB);
		writeMemory(PHASE_THRESHOLD_C, vC);

}

static void taskClass2(){
//	printf("Cyclic Task 2\n");

}

static void taskClass3(){
//	printf("Cyclic Task 3\n");

}









