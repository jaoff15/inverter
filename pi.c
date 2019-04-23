
#include "pi.h"
#include <stdio.h>

// Function to initialize a controller with a set of start values
void initController(Controller *c, double _kp, double _ki){
	setKp(c, _kp);
	setKi(c, _ki);
	setLastInput(c, 0.0);
	setLastOutput(c, 0.0);
}

// Function to get the next output of a controller with a new input
double getOutput(Controller *c, double input){
	// Collect controller data
	const double inputOld 	= getLastInput(c);
	const double outputOld  = getLastOutput(c);
	const double kp 	= getKp(c);
	const double ki 	= getKi(c);
	
	// Calculate new output
	double output =  outputOld + (kp * input) + (ki * inputOld);
	
	// Anti integrator windup. Limit the output to within set limits
	if(output > MAX_OUTPUT){		// Check upper limit
		output = MAX_OUTPUT;		// Limit output
	}
	
	if(output < MIN_OUTPUT){		// Check lower limit
		output = MIN_OUTPUT;		// Limit output
	}	

	// Store new input and output
	setLastInput(c, input);
	setLastOutput(c, output);
	
	// Return new output
	return output;
}	

// Function to print the specified controllers internal values
void printController(Controller *c){
	const double inputOld 	= getLastInput(c);
	const double outputOld = getLastOutput(c);
	const double kp 	= getKp(c);
	const double ki 	= getKi(c);
	printf("kp: %f\n",kp);
	printf("ki: %f\n",ki);
	printf("input_old: %f\n",inputOld);
	printf("output_old: %f\n",outputOld);
}



// Functions to read out values of the specified controller
double getKp(Controller *c){
	return c->kp;
}
double getKi(Controller *c){
	return c->ki;
}
double getLastOutput(Controller *c){
	return c->outputOld;
}
double getLastInput(Controller *c){
	return c->inputOld;
}

// Functions to read out values of the specified controller
double setKp(Controller *c, double _kp){
	c->kp = _kp;
}
double setKi(Controller *c, double _ki){
	c->ki = _ki;
}
double setLastOutput(Controller *c, double _outputOld){
	c->outputOld = _outputOld;
}
double setLastInput(Controller *c, double _inputOld){
	c->inputOld = _inputOld;
}
