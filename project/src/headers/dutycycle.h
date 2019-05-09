
#ifndef HEADERS_DUTYCYCLE_H
#define HEADERS_DUTYCYCLE_H



#define PWM_COUNTER_MAX 	100
#define PWM_COUNTER_FREQUENCY 	50  //[ns]


/* Function to find the duty cycle for all phases */
void getDutyCycles(double ia, double ib, double ic, double *dcA, double *dcB, double *dcC);

static void assignDutyCycles(int sector, double tAon, double tBon, double tCon, double *dcA, double * dcB, double *dcC);

/* Function to get the current section */
static void getSector(double va, double vb, double vc);

/* Function to get the sector boundaries */
static void getSectorBoundaries(int sector, double *t1, double *t2);

/* Function used to saturate the boundaries */
static void getSaturatedBoundaries(double t1, double t2, double *t1sat, double *t2sat);

static void getOnTimes(double t1, double t2, double *tAon, double *tBon, double *tCon);


/* Helper functions */
/* Get the PWM counter's max value */
static double getPwmCounterMax();

/* Get the PWM counter frequency */
static double getPwmFrequency();

/* Get the PWM counter time */
static double getPwmCounterTime();



#endif
