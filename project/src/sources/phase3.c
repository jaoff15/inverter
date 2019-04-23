
/* Includes */
#include "../headers/phase3.h"

/* This function calculates the value of the third phase based on
 the two other phases and the symmetry between them. */
double getPhase3(double phase1, double phase2){
	return -( phase1 + phase2);
}
