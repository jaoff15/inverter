
#ifndef HEADERS_CLARKEPARK_H
#define HEADERS_CLARKEPARK_H


#include <stdio.h>
#include <math.h>



#define TWO_THIRDS 				0.666666666666667
#define ONE_THIRD 				0.333333333333333
#define TWO_OVER_SQRT_THREE 	1.154700538379252
#define SQRT_THREE_OVER_TWO 	0.866025403784439
#define HALF 					0.5
#define SQRT_THREE_OVER_THREE			0.577350269189626



// Clarke/Park and inverse Clarke/Park
void clarkePark(double *iD, double *iQ, double iA, double iB, double iC, double angle);
void invClarkePark(double *iA, double *iB, double *iC, double iD, double iQ, double angle);

// Clarke and inverse Clarke
void clarke(double *iAlpha, double *iBeta, double iA, double iB, double iC);
void invClarke(double *iA, double *iB, double *iC, double iAlpha, double iBeta);

// Park and inverse Park
void park(double *iD, double *iQ, double iAlpha, double iBeta, double angle);
void invPark(double *iAlpha, double *iBeta, double iD, double iQ, double angle);


#endif
