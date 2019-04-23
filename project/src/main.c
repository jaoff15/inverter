
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"


int main()
{
    init_platform();


    rtc();
    print("Run\n\r");

    cleanup_platform();
    return 0;
}


