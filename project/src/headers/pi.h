
#ifndef PI_H
#define PI_H

/* Includes */
#include <stdio.h>

/* Defines */
// Output upper and lower limits
#define MAX_OUTPUT 10
#define MIN_OUTPUT 0

// Struct to contain the data of a PI controller
typedef struct Controller{
	double ki;
	double kp;
	double outputOld; 
	double inputOld;  
} Controller;

// Function to initialize a controller with a set of start values
void initController(Controller *c, double _kp, double _ki);

// Function to get the next output of a controller with a new input
double getOutput(Controller *c, double input);

// Function to print the specified controllers internal values
void printController(Controller *c);


// Functions to read out values of the specified controller
double getKp(Controller *c);
double getKi(Controller *c);
double getLastOutput(Controller *c);
double getLastInput(Controller *c);

// Functions to write values to the specified controller
double setKp(Controller *c, double _kp);
double setKi(Controller *c, double _ki);
double setLastOutput(Controller *c, double _outputOld);
double setLastInput(Controller *c, double _inputOld);


#endif



