/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
        
                // Turn ON LED0, OFF LED1
//        LED0_Set();   // Set logic level ON (Check if active-low: could be LED0_Clear() if so)
//        LED1_Clear(); // Set logic level OFF
        
        
        LED1_Toggle();
        LED0_Toggle();
        
        // Simple delay
//        for (volatile uint32_t i = 0; i < 10000000; i++);

        // Turn OFF LED0, ON LED1
//        LED0_Clear();
//        LED1_Set();
        
        for (volatile uint32_t i = 0; i < 10000000; i++);   
    }
    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

