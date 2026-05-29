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

#define ADC_VREF                (3.3f) 
#define ADC_COUNT_MAX           (4095U)
uint16_t adc_count;
uint16_t adc_count_arr[10];
float input_voltage;
volatile uint8_t adc_Index = 0;



// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
     TCC0_PWMStart();
     
     ADC_Enable();

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        //M
        
//        ADC_ConversionStart();
        while(!ADC_ConversionStatusGet())
        {      };       
//        adc_count = ADC_ConversionResultGet();
        
          adc_count_arr[adc_Index] = ADC_ConversionResultGet();
        input_voltage = (float)adc_count * ADC_VREF / ADC_COUNT_MAX;
        adc_Index++;
        if(adc_Index>= 10){
            adc_Index = 0;
        }

        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

