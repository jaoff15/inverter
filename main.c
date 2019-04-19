
#include <stdio.h>
#include "dutycycle.h"
#include "math.h"
#include "clarkepark.h"
#include "phase3.h"

void main(){

	// Measurements	
	double angle = 0;
	double iA = -0.809207777821378;
	double iB = -0.104205583519848;
	double iC = getPhase3(phase1, phase2);


	double iD, iQ;
	clarkePark(&iD, &iQ, iA, iB, iC, angle);
	
	double va = 0;
	double vb = 0;
	double vc = 0;
	invClarkePark(&va, &vb, &vc, iD, iQ, angle);

	double dcA, dcB, dcC;
	getDutyCycles((double)va, (double)vb, (double)vc, &dcA, &dcB, &dcC);


	printf("dcA: %f\n",dcA);
	printf("dcB: %f\n",dcB);
	printf("dcC: %f\n",dcC);


}

