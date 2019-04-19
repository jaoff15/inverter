


#define PWM_COUNTER_MAX 	100
#define PWM_COUNTER_FREQUENCY 	50  //[ns]


/* Function to find the duty cycle for all phases */
void getDutyCycles(float ia, float ib, float ic, float *dcA, float *dcB, float *dcC);

static void assignDutyCycles(int sector, float tAon, float tBon, float tCon, float *dcA, float * dcB, float *dcC);

/* Function to get the current section */
static int getSector(float ia, float ib, float ic);

/* Function to get the sector boundaries */
static void getSectorBoundaries(int sector, float *t1, float *t2);

/* Function used to saturate the boundaries */
static void getSaturatedBoundaries(float t1, float t2, float *t1sat, float *t2sat);

static void getOnTimes(float t1, float t2, float *tAon, float *tBon, float *tCon);


/* Helper functions */
/* Get the PWM counter's max value */
static float getPwmCounterMax();

/* Get the PWM counter frequency */
static float getPwmFrequency();

/* Get the PWM counter time */
static float getPwmCounterTime();


