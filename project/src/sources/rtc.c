
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
		double angle = 90;
//		readMemory(ROTOR_ANGLE, &angle);					// Read angle from memory

		double iA;
		readMemory(CURRENT_MEASUREMENT_A, &iA);		// Read phase current 1 from memory
		iA = -0.809207777821378;	 			// For test

		double iB;
		readMemory(CURRENT_MEASUREMENT_B, &iB);		// Read phase current 2 from memory
		iB = -0.104205583519848; 			// For test

		 // Calculate third phase
		double iC = getPhase3(iA,iB);				// Calculate phase current 3



		/* Clarke Park */
		double iD, iQ;
		clarkePark(&iD, &iQ, iA, iB, iC, deg2rad(angle));

		/* Control */
		printf("iD: %f\n",iD);
		printController(&cD);
		double outD = getOutput(&cD, iD);
		printf("D: %f\n",outD);


		printf("iQ: %f\n",iQ);
		printController(&cQ);
		double outQ = getOutput(&cQ, iQ);
		printf("Q: %f\n",outQ);

		/* Inverse Park Clarke */
		double va, vb, vc;
		invClarkePark(&va, &vb, &vc, outD, outQ, deg2rad(angle));

		/* Get duty cycles */
	//	double thA, thB, thC;
	//	getDutyCycles((double)va, (double)vb, (double)vc, &thA, &thB, &thC);


//		printf("A: %f\n",va);
//		printf("B: %f\n",vb);
//		printf("C: %f\n",vc);

		/* Writing to memory */
	//	writeMemory(PHASE_THRESHOLD_A, thA);
	//	writeMemory(PHASE_THRESHOLD_B, thB);
	//	writeMemory(PHASE_THRESHOLD_C, thC);
}

static void taskClass2(){
//	printf("Cyclic Task 2\n");

}

static void taskClass3(){
//	printf("Cyclic Task 3\n");

}









