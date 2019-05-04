
#ifndef HEADERS_RAMINTERFACE_H
#define HEADERS_RAMINTERFACE_H
/* Includes */
#include <stdio.h>
#include "types.h"

/* Defines */
#define BASE_ADDRESS 0x40000000


enum RAM{
	CURRENT_MEASUREMENT_A,	// Offset 0*8= 0 from base address
	CURRENT_MEASUREMENT_B,	// Offset 1*8= 8 from base address
	ROTOR_ANGLE,			// Offset 2*8=16 from base address
	PHASE_THRESHOLD_A,		// Offset 3*8=24 from base address
	PHASE_THRESHOLD_B,	    // Offset 4*8=32 from base address
	PHASE_THRESHOLD_C		// Offset 5*8=40 from base address
}RAM;


// Function to read from a specified memory location
void readMemory(addr_typ addr, data_typ *data);

// Funciton to write to a specified memory location
void writeMemory(addr_typ addr, data_typ data);


#endif
