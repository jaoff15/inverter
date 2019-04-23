
#ifndef HEADERS_CLARKEPARK_H
#define HEADERS_CLARKEPARK_H

/* Includes */
#include <stdio.h>
#include "../headers/math.h"


/* Defines */
#define TWO_THIRDS 					0.666666666666667	// 2/3
#define ONE_THIRD 					0.333333333333333	// 1/3
#define TWO_OVER_SQRT_THREE 		1.154700538379252	// 2/sqrt(3)
#define SQRT_THREE_OVER_TWO 		0.866025403784439	// sqrt(3)/2
#define HALF 						0.5					// 1/2
#define SQRT_THREE_OVER_THREE		0.577350269189626	// sqrt(3)/3



/* Function that does both a Clarke tranformation and a Park tranformation */
void clarkePark(double *iD, double *iQ, double iA, double iB, double iC, double angle);

/* Function that does both an inverse Clarke tranformation and an inverse Park tranformation */
void invClarkePark(double *iA, double *iB, double *iC, double iD, double iQ, double angle);

/* Function that performes a Clarke transformation */
void clarke(double *iAlpha, double *iBeta, double iA, double iB, double iC);

/* Function that performes an inverse Clarke transformation */
void invClarke(double *iA, double *iB, double *iC, double iAlpha, double iBeta);

/* Function that performes a Park transformation */
void park(double *iD, double *iQ, double iAlpha, double iBeta, double angle);

/* Function that performes an inverse Park transformation */
void invPark(double *iAlpha, double *iBeta, double iD, double iQ, double angle);


#endif
