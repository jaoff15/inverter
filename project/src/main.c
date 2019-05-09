
#include <stdio.h>
#include "xil_printf.h"
#include "platform.h"
#include "headers/rtc.h"

int main()
{
    init_platform();


    cyclicTask();

//    initRtc();
//    rtc();
    print("Run\n\r");


//    /* Get value from terminal */
//    int c = getchar( );
//    /* Write value to terminal */
//	putchar( c );

    cleanup_platform();
    return 0;
}



