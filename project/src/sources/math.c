/* Includes */
#include "../headers/math.h"

/* Function that returns sin(angle) */
double fastSin(double angle){
	unsigned int index;
	index = (unsigned int)angle;
	return (double)sinusValues[index % SIN_N];
}	

/* Function that returns cos(angle) */
double fastCos(double angle){
	double newAngle = (double)((int)(angle + 90) % (int)360);
	return (double)fastSin(newAngle);
}





