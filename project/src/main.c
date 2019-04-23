
#include <stdio.h>
#include "xil_printf.h"
#include "platform.h"
#include "headers/rtc.h"

int main()
{
    init_platform();


    rtc();
    print("Run\n\r");

    cleanup_platform();
    return 0;
}



