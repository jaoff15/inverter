

#include "dutycycle.h"
#include <stdio.h>
#include <math.h>

void main(){
	float dcA, dcB, dcC;
	float ia = -0.809207777821378;
	float ib = -0.104205583519848;
	float ic = 0.913413361341225;
	getDutyCycles(ia, ib, ic, &dcA, &dcB, &dcC);
	printf("dcA:%f, dcB:%f, dcC:%f \n",dcA, dcB, dcC);
}
