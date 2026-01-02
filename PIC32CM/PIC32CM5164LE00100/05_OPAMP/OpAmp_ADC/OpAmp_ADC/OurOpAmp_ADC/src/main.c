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


//#define ADC_VREF                (3.3f)
//
//volatile bool adc_res_rdy_set    = false;
//uint16_t adc_count;
//float input_voltage;
//
//void ADC_CallBack_Function (ADC_STATUS status, uintptr_t context)
//{ 
//    adc_res_rdy_set = true;
//}



// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
//        ADC_CallbackRegister(ADC_CallBack_Function, (uintptr_t)NULL);
//    ADC_Enable();
//    /* Start ADC conversion */
//    ADC_ConversionStart();


    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
//                if(adc_res_rdy_set == true)
//        {
//            adc_res_rdy_set = false;
//
//            /* Read the ADC result */
//            adc_count = ADC_ConversionResultGet();
//
//            input_voltage = (float)adc_count * ADC_VREF / 4095U;
//
//            /* Start ADC conversion */
//            ADC_ConversionStart();
//        }

        
        
        
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

