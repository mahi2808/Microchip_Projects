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
#define VREF (3.3f)

        uint16_t adcResults[2]; // adjust array size for the number of channels
    float voltages[2];

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
     ADC_Enable();

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
//        SYS_Tasks ( );
        
                // Channel 0 (e.g., PA02, AIN0)
        ADC_ChannelSelect(ADC_POSINPUT_AIN1, ADC_NEGINPUT_AVSS);
        ADC_ConversionStart();
        while (!ADC_ConversionStatusGet());
        adcResults[0] = ADC_ConversionResultGet();
        voltages[0] = ((float)adcResults[0] * VREF) / 4095.0f;

        // Channel 1 (e.g., PA03, AIN1)
        ADC_ChannelSelect(ADC_POSINPUT_AIN3, ADC_NEGINPUT_AVSS);
        ADC_ConversionStart();
        while (!ADC_ConversionStatusGet());
        adcResults[1] = ADC_ConversionResultGet();
        voltages[1] = ((float)adcResults[1] * VREF) / 4095.0f;

        // ... now voltages[0] & voltages[1] contain respective channel voltages
        // Use, transmit, or process them as needed

        // Optional: insert a small delay if polling in a tight loop
        
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

