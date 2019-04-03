

#include "headers/clarkpark.h"


// Combined clark and park function. Performs both functions
void clarkPark(double *iD, double *iQ, double iA, double iB, double iC, double angle){
	// Clark
	double iAlpha;
	double iBeta;
	clark(&iAlpha, &iBeta, iA, iB, iC);

	// Park
	double tmp_iD;
	double tmp_iQ;
	park(&tmp_iD, &tmp_iQ, iAlpha, iBeta, angle);

	// Write to output
	*iD = tmp_iD;
	*iQ = tmpiQ;
}


// Combined inverse park and inverse clark function. Performs both functions
void invClarkPark(double *iA, double *iB, double *iC, double iD, double iQ, double angle){
	// Inverse Park
	double iAlpha;
	double iBeta;
	invPark(&iAlpha, &iBeta, iD, iQ, angle);

	// Inverse Clark
	double tmp_iA;
	double tmp_iB;
	double tmp_iC;
	invClark(&tmp_iA, &tmp_iB, &tmp_iC, iAlpha, iBeta);


	// Write to output
	*iA = tmp_iA;
	*iB = tmp_iB;
	*iC = tmp_iC;
}




// The Clark function
void clark(double *iAlpha, double *iBeta, double iA, double iB, double iC){
	// Scaled version
	// *iAlpha = TWO_THIRDS * iA - ONE_THIRD * (iB - iC);
	// *iBeta  = TWO_OVER_SQRT_THREE * (iB - iC);
	// None scaled version
	*iAlpha = iA + (-HALF * iB) + (-HALF * iC);
	*iBeta  = (SQRT_THREE_OVER_TWO * iB) + (-SQRT_THREE_OVER_TWO * iC);
}

// The inverse Clark function
void invClark(double *iA, double *iB, double *iC, double iAlpha, double iBeta){
	*iA = iAlpha;
	*iB = -HALF * iAlpha + SQRT_THREE_OVER_TWO * iBeta;
	*iC = -HALF * iAlpha - SQRT_THREE_OVER_TWO * iBeta;
}

// The Park function
void park(double *iD, double *iQ, double iAlpha, double iBeta, double angle){
	const double cosAngle = cos(angle);
	const double sinAngle = sin(angle);

	*iD = iAlpha * cosAngle + iBeta * sinAngle;
	*iQ = -iAlpha * sinAngle + iBeta * cosAngle;
}

// The inverse Park function
void invPark(double *iAlpha, double *iBeta, double iD, double iQ, double angle){
	const double cosAngle = cos(angle);
	const double sinAngle = sin(angle);

	*iAlpha = iD * cosAngle - iQ * sinAngle;
	*iBeta  = iD * sinAngle + iQ * cosAngle;
}






