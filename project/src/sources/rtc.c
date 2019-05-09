
/* Includes */
#include "../headers/rtc.h"

Controller cQ;
Controller cD;

double gAngle;

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

		/* Interrupt task */
		if(interruptRun){
			interruptTask();
		}

		/* Cyclic task */
		counter++;
		if(counter % CYCLE_TIME == 0){
			counter = 0;
			cyclicTask();
		}
		usleep(1);					// Sleep
	}
}



/* Cyclic tasks */
void interruptTask(){
	/* Initialize controller */

	/* Measurements */
	double angle;
	readMemory(ROTOR_ANGLE, &gAngle);			// Read angle from memory
	angle = 0;									// Temporary

	double iA = gIA;

	iA = -0.809207777821378;	 				// Temporary

	double iB = gIB;
	iB =
	iB = -0.104205583519848; 					// Temporary

	 // Calculate third phase
	double iC = getPhase3(iA,iB);				// Calculate phase current 3



	/* Clarke Park */
	double iD, iQ;
	clarkePark(&iD, &iQ, iA, iB, iC, deg2rad(gAngle));



	/* Control */
	double outD = getOutput(&cD, iD);
	double outQ = getOutput(&cQ, iQ);


	/* Inverse Park Clarke */
	double vA, vB, vC;
	invClarkePark(&vA, &vB, &vC, outD, outQ, deg2rad(gAngle));



	double dcA, dcB, dcC;
	getDutyCycles(vA, vB, vC, &dcA, &dcB, &dcC);


	/* Writing to memory */
	writeMemory(PHASE_THRESHOLD_A, vA);
	writeMemory(PHASE_THRESHOLD_B, vB);
	writeMemory(PHASE_THRESHOLD_C, vC);

}

void cyclicTask(){
	printf("Angle: %lf\n",gAngle);
}







