

#include <stdio.h>
#include "types.h"


#define BASE_ADDRESS 0x40000000


enum RAM{
	ADR_TORQUE_PRESSURE,	// Offset   0 from base address
	ADR_MOTOR_SPEED,	// Offset   8 from base address
	ADR_MOTOR_POSITION	// Offset  16 from base address
}RAM;


// Function to read from a specified memory location
void readMemory(addr_typ addr, data_typ *data);

// Funciton to write to a specified memory location
void writeMemory(addr_typ addr, data_typ data);


