#include <stdio.h>

#include "ramInterface.h"
#include "types.h"


void main(){

	// Reading from memory
	readMemory(ADR_TORQUE_PRESSURE, 0x00000000);

	// Writing to memory
	writeMemory(ADR_MOTOR_SPEED, 0x00000000);
}
