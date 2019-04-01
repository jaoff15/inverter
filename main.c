


#include "pi.h"
#include <stdio.h>


void main(){
	Controller c;

	initController(&c, 1.1, 1.2);
	
	double output1;
	double output2;
	double output3;

	output1 = getOutput(&c, 1);
	output2 = getOutput(&c, 1);
	output3 = getOutput(&c, 1);
	
	printf("output1:%f\n",output1);
	printf("output2:%f\n",output2);
	printf("output3:%f\n",output3);

}
