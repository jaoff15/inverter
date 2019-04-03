
#include <stdio.h>
#include "clarkepark.h"

void main(){
	// Measurements	
	double angle = 0;
	double iA = -0.809207777821378;
	double iB = -0.104205583519848;
	

	double iC = 0.913413361341225;


	double iD;
	double iQ;
	clarkePark(&iD, &iQ, iA, iB, iC, angle);
	
	double new_iA = 0;
	double new_iB = 0;
	double new_iC = 0;
	invClarkePark(&new_iA, &new_iB, &new_iC, iD, iQ, angle);




	printf("iA: %f\n",new_iA);
	printf("iB: %f\n",new_iB);
	printf("iC: %f\n",new_iC);


}


