

#ifndef HEADERS_MATH_H
#define HEADERS_MATH_H

/* Includes */
#include <stdio.h>

/* Defines */
#define SIN_N 		360				// Number of datapoints in the sinus constant array
#define RAD_TO_DEG	57.2957795		// Value used for converting from radians to degrees
#define DEG_TO_RAD 	0.0174532925 	// Value used for converting from degrees to radians




/* Function that calculates sin(angle) */
double fastSin(double angle);

/* Function that calculates cos(angle) */
double fastCos(double angle);

/* Convert from radians to degrees */
double rad2deg(double angle);

/* Convert from degrees to radians */
double deg2rad(double angle);



#endif
