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

/* Initial value of dac count which is midpoint = 1.65 V*/
uint16_t dac_count = 0x7FF;

#define ADC_VREF                (3.3f) 
#define ADC_COUNT_MAX           (4095U)
uint16_t adc_count;
float input_voltage;






// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
        DAC_DataWrite(DAC_CHANNEL_0, dac_count);
         ADC_Enable();

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
//        SYS_Tasks ( );
        
        for(int dac_count=0;dac_count<4096;dac_count++){
                    DAC_DataWrite(DAC_CHANNEL_0, dac_count);
            
        /* Start ADC conversion */
        ADC_ConversionStart();

        /* Wait till ADC conversion result is available */
        while(!ADC_ConversionStatusGet())
        {
        };

        /* Read the ADC result */
        adc_count = ADC_ConversionResultGet();
        input_voltage = (float)adc_count * ADC_VREF / ADC_COUNT_MAX;
        }
        
                for(int dac_count=4095;dac_count>=0;dac_count--){
                    DAC_DataWrite(DAC_CHANNEL_0, dac_count);
            
        /* Start ADC conversion */
        ADC_ConversionStart();

        /* Wait till ADC conversion result is available */
        while(!ADC_ConversionStatusGet())
        {
        };

        /* Read the ADC result */
        adc_count = ADC_ConversionResultGet();
        input_voltage = (float)adc_count * ADC_VREF / ADC_COUNT_MAX;
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

