
/* Includes */
#include "../headers/clarkepark.h"


/* Combined clarke and park function. Performs both functions */
void clarkePark(double *iD, double *iQ, double iA, double iB, double iC, double angle){
	// Clarke
	double iAlpha;
	double iBeta;
	clarke(&iAlpha, &iBeta, iA, iB, iC);

	// Park
	double tmp_iD;
	double tmp_iQ;
	park(&tmp_iD, &tmp_iQ, iAlpha, iBeta, angle);

	// Write to output
	*iD = tmp_iD;
	*iQ = tmp_iQ;
}


/* Combined inverse park and inverse clarke function. Performs both functions */
void invClarkePark(double *iA, double *iB, double *iC, double iD, double iQ, double angle){
	// Inverse Park
	double iAlpha;
	double iBeta;
	invPark(&iAlpha, &iBeta, iD, iQ, angle);

	// Inverse Clarke
	double tmp_iA;
	double tmp_iB;
	double tmp_iC;
	invClarke(&tmp_iA, &tmp_iB, &tmp_iC, iAlpha, iBeta);


	// Write to output
	*iA = tmp_iA;
	*iB = tmp_iB;
	*iC = tmp_iC;
}




/* The Clarke function */
void clarke(double *iAlpha, double *iBeta, double iA, double iB, double iC){
	// Power Invariant Version
	// *iAlpha = TWO_THIRDS * iA - ONE_THIRD * (iB - iC);
	// *iBeta  = TWO_OVER_SQRT_THREE * (iB - iC);
	// Power Variant Version
	*iAlpha = TWO_THIRDS * iA - ONE_THIRD * iB - ONE_THIRD * iC;
	*iBeta  = SQRT_THREE_OVER_THREE * iB - SQRT_THREE_OVER_THREE * iC;
}

/* The inverse Clarke function */
void invClarke(double *iA, double *iB, double *iC, double iAlpha, double iBeta){
	// Power Invariant Version
	// *iA = (1/3)*sqrt(2)*sqrt(3)*iAlpha;
	// *iB = (1/2)*sqrt(2)*iBeta-(1/6)*sqrt(6)*iAlpha;
	// *iC = -(1/6)*sqrt(6)*iAlpha-(1/2)*sqrt(2)*iBeta;
	// Power Variant Version
	*iA = iAlpha;
	*iB = -HALF * iAlpha + SQRT_THREE_OVER_TWO * iBeta;
	*iC = -HALF * iAlpha - SQRT_THREE_OVER_TWO * iBeta;
}

/* The Park function */
void park(double *iD, double *iQ, double iAlpha, double iBeta, double angle){
	const double cosAngle = fastCos(angle);
	const double sinAngle = fastSin(angle);

	*iD = iAlpha * cosAngle + iBeta * sinAngle;
	*iQ = -iAlpha * sinAngle + iBeta * cosAngle;
}

/* The inverse Park function */
void invPark(double *iAlpha, double *iBeta, double iD, double iQ, double angle){
	const double cosAngle = fastCos(angle);
	const double sinAngle = fastSin(angle);

	*iAlpha = iD * cosAngle - iQ * sinAngle;
	*iBeta  = iD * sinAngle + iQ * cosAngle;
}






