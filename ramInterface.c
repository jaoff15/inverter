

#include "ramInterface.h"



// Function to read from a specified memory location
void readMemory(addr_typ _addr, data_typ *data){
	addr_typ addr = BASE_ADDRESS + (8 * _addr);

	printf("Address: %lu \n",addr);
	//Xil_In64(addr, data);
}

// Function to write to a specified memory location
void writeMemory(addr_typ _addr, data_typ data){
	addr_typ addr = BASE_ADDRESS + (8 * _addr);

	printf("Address: %lu \n",addr);
	//Xil_Out64(addr, data);
}
