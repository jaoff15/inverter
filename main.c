#include <stdio.h>
#include "phase3.h"



void main(){

	double phase1 = -0.8092;
	double phase2 = -0.1042;
	double phase3 = getPhase3(phase1, phase2);

	printf("Phase1: %f, Phase2: %f, Phase3: %f",phase1, phase2, phase3);

}
