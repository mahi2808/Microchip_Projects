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
#include "definitions.h"                // SYS function prototypes\

#define     VREF    (3.3f)
uint16_t raw_data;
uint16_t adcResult;
float vtg;


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
        SYS_Tasks ( );
        
        /*
        ADC_ConversionStart();
        
           while (ADC_ConversionStatusGet() == false)
        {
            // just keep checking the flag
        }
        
        ADC_ChannelSelect(ADC_POSINPUT_AIN0,ADC_NEGINPUT_AVSS);
        
        raw_data = ADC_ConversionResultGet();
        vtg = (float)raw_data * VREF / 4095;
        
         */
        
        
        
        
          
        // Select channel for single-ended conversion (e.g., AN0):
//        ADC_ChannelSelect(ADC_POSINPUT_AIN0, ADC_NEGINPUT_AVSS);
        
        // Start conversion:
        ADC_ConversionStart();

        // Poll for conversion complete:
        while(!ADC_ConversionStatusGet());

        // Read result:
        adcResult = ADC_ConversionResultGet();
//        vtg = (float)((adcResult / 4095)* VREF);
         vtg = ((float)adcResult * VREF) / 4095.0f;

        // --- Use adcResult as needed (display, processing, etc.) ---
    
    }
         

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

