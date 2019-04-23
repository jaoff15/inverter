
#include <stdio.h>
#include "xil_printf.h"
#include "platform.h"
#include "headers/dutycycle.h"
#include "headers/math.h"
#include "headers/clarkepark.h"
#include "headers/phase3.h"
#include "headers/ramInterface.h"
#include "headers/types.h"
#include "headers/pi.h"

int main()
{
    init_platform();


    rtc();
    print("Run\n\r");

    cleanup_platform();
    return 0;
}




/* Initialize controller */
//Controller cQ;
//Controller cD;
// double kpQ = 1.1;
// double kiQ = 1.2;
// double kpD = 1.1;
// double kiD = 1.2;
//initController(&cQ, kpQ, kiQ);
//initController(&cD, kpD, kiD);


/* Measurements */
//	double angle;
//	readMemory(ANGLE, angle);					// Read angle from memory

//  double iA;
//	double iA = -0.809207777821378;	 			// For test
//	readMemory(CURRENT_MEASUREMENT_A, iA);		// Read phase current 1 from memory

//  double iB;
//	double iB = -0.104205583519848; 			// For test
//	readMemory(CURRENT_MEASUREMENT_B, iB);		// Read phase current 2 from memory

// // Calculate third phase
//	double iC = getPhase3(iA,iB);				// Calculate phase current 3

/* Clarke Park */
//	double iD, iQ;
//	clarkePark(&iD, &iQ, iA, iB, iC, deg2rad(angle));

/* Control */
//	double outQ, outD;
//	outQ = getOutput(&cQ, iQ);
//	outD = getOutput(&cD, iD);

/* Inverse Park Clarke */
//	double va, vb, vc;
//	invClarkePark(&va, &vb, &vc, outD, outQ, deg2rad(angle));

/* Get duty cycles */
//	double thA, thB, thC;
//	getDutyCycles((double)va, (double)vb, (double)vc, &thA, &thB, &thC);


//	// Writing to memory
//	writeMemory(PHASE_THRESHOLD_A, thA);
//	writeMemory(PHASE_THRESHOLD_B, thB);
//	writeMemory(PHASE_THRESHOLD_C, thC);

