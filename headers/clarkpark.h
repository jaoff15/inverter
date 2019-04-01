
#ifndef HEADERS_CLARKPARK_H
#define HEADERS_CLARKPARK_H


#include <stdio.h>
#include <math.h>



#define TWO_THIRDS 				0.666666666666667
#define ONE_THIRD 				0.333333333333333
#define TWO_OVER_SQRT_THREE 	1.154700538379252
#define SQRT_THREE_OVER_TWO 	0.866025403784439
#define HALF 					0.5



// Clark/Park and inverse Clark/Park
void clarkPark(double *iD, double *iQ, double iA, double iB, double iC, double angle);
void invClarkPark(double *iA, double *iB, double *iC, double iD, double iQ, double angle);

// Clark and inverse Clark
void clark(double *iAlpha, double *iBeta, double iA, double iB, double iC);
void invClark(double *iA, double *iB, double *iC, double iAlpha, double iBeta);

// Park and inverse Park
void park(double *iD, double *iQ, double iAlpha, double iBeta, double angle);
void invPark(double *iAlpha, double *iBeta, double iD, double iQ, double angle);


#endif
