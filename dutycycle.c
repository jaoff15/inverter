

#include "dutycycle.h"

/* Function to find the duty cycle for all phases */
void getDutyCycles(float va, float vb, float vc, float *dcA, float *dcB, float *dcC){
	// Find current sector
	int sector = getSector(va, vb, vc);

	// Get the boundaries of the current sector
	float t1, t2;
	getSectorBoundaries(sector, &t1, &t2);		


	// Saturate the boundaries
	float t1sat, t2sat;
	getSaturatedBoundaries(t1, t2, &t1sat, &t2sat);	


	// Find on times for the 3 phases
	float tAon, tBon, tCon;
	getOnTimes(t1, t2, &tAon, &tBon, &tCon);

	// Assign the right duty cycle to the right motor phase
	assignDutyCycles(sector, tAon, tBon, tCon, dcA, dcB, dcC);
}


static void assignDutyCycles(int sector, float tAon, float tBon, float tCon, float *dcA, float * dcB, float *dcC){
	switch(sector){
	case 1:
		*dcA = tBon;
		*dcB = tAon;
		*dcC = tCon;
		break;
	case 2:
		*dcA = tAon;
		*dcB = tCon;
		*dcC = tBon;
		break;
	case 3:
		*dcA = tAon;
		*dcB = tBon;
		*dcC = tCon;
		break;
	case 4:
		*dcA = tCon;
		*dcB = tBon;
		*dcC = tAon;
		break;
	case 5:
		*dcA = tCon;
		*dcB = tAon;
		*dcC = tBon;
		break;
	case 6:
		*dcA = tBon;
		*dcB = tCon;
		*dcC = tAon;
		break;
	default:
		break;
	}
}


/* Function to get the current section */
static int getSector(float va, float vb, float vc){
	int a,b,c;
	if(va > 0){
		a = 1;
	}else{
		a = 0;
	}
	if(vb > 0){
		b = 1;
	}else{
		b = 0;
	}
	if(vc > 0){
		c = 1;
	}else{
		c = 0;
	}
	return a + 2*b + 4*c;
}

/* Function to get the sector boundaries */
static void getSectorBoundaries(int sector, float *t1, float *t2){
	float x,y,z;	
	switch(sector){
	case 1:
		*t1 =  z;
		*t2 =  y;	
		break;
	case 2:
		*t1 =  y;
		*t2 = -x;
		break;
	case 3:
		*t1 = -z;
		*t2 =  x;
		break;
	case 4:
		*t1 = -x;
		*t2 =  z;
		break;
	case 5:
		*t1 =  x;
		*t2 = -y;
		break;
	case 6:
		*t1 = -y;
		*t2 = -z;
		break;
	default:
		break;
	}
}

/* Function used to saturate the boundaries */
static void getSaturatedBoundaries(float t1, float t2, float *t1sat, float *t2sat){
	float counterTime = getPwmCounterTime();
	if(t1+t2 > counterTime){
		*t1sat = t1 * (counterTime)/(t1+t2);
		*t2sat = t2 * (counterTime)/(t1+t2);
	}
}

static void getOnTimes(float t1, float t2, float *tAon, float *tBon, float *tCon){
	*tAon = (getPwmCounterTime()-t1-t2)/2;
	*tBon = *tAon + t1;
	*tCon = *tBon + t2;
}


/* Helper functions */

/* Get the PWM counter's max value */
static float getPwmCounterMax(){
	return PWM_COUNTER_MAX;
}

/* Get the PWM counter frequency */
static float getPwmFrequency(){
	return PWM_COUNTER_FREQUENCY; //[ns]
}

/* Get the PWM counter time */
static float getPwmCounterTime(){
	return getPwmCounterMax() * getPwmFrequency(); //[ns]
}


