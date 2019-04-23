
#include <stdio.h>
#include "xil_printf.h"
#include "headers/platform.h"
#include "headers/dutycycle.h"
#include "headers/math.h"
#include "headers/clarkepark.h"
#include "headers/phase3.h"
#include "headers/ramInterface.h"
#include "headers/types.h"

int main()
{
    init_platform();


    rtc();
    print("Run\n\r");

    cleanup_platform();
    return 0;
}





//void main(){
//
//	// Measurements
//	double angle = 0;
//	double iA = -0.809207777821378;
//	double iB = -0.104205583519848;
//	double iC = getPhase3(phase1, phase2);
//
//
//	double iD, iQ;
//	clarkePark(&iD, &iQ, iA, iB, iC, deg2rad(angle));
//
//	double va = 0;
//	double vb = 0;
//	double vc = 0;
//	invClarkePark(&va, &vb, &vc, iD, iQ, deg2rad(angle));
//
//	double dcA, dcB, dcC;
//	getDutyCycles((double)va, (double)vb, (double)vc, &dcA, &dcB, &dcC);
//
//
//	printf("dcA: %f\n",dcA);
//	printf("dcB: %f\n",dcB);
//	printf("dcC: %f\n",dcC);
//
//
//}


//void main(){
//
//	// Reading from memory
//	readMemory(ADR_TORQUE_PRESSURE, 0x00000000);
//
//	// Writing to memory
//	writeMemory(ADR_MOTOR_SPEED, 0x00000000);
//}
