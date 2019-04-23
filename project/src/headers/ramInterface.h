
/* Includes */
#include <stdio.h>
#include "types.h"

/* Defines */
#define BASE_ADDRESS 0x40000000


enum RAM{
	CURRENT_MEASUREMENT_A,	// Offset   0 from base address
	CURRENT_MEASUREMENT_B,	// Offset   8 from base address
	ROTOR_ANGLE
}RAM;


// Function to read from a specified memory location
void readMemory(addr_typ addr, data_typ *data);

// Funciton to write to a specified memory location
void writeMemory(addr_typ addr, data_typ data);


