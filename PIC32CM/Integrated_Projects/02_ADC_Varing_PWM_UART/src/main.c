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

volatile bool resultReady = false;

volatile uint16_t adc_result = 0;

volatile uint32_t duty = 0;

void adc0_callback(ADC_STATUS status, uintptr_t context )
{
    adc_result = ADC_ConversionResultGet();
    resultReady = true;
}

void tcc0_callback(uint32_t status, uintptr_t context)
{
    TCC0_PWM24bitDutySet(TCC0_CHANNEL0, duty);

    if (duty > 2000)
    {
        duty = 0U;    
    }
    
    else
    {
        duty += 25;
    }
}
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    TCC0_PWMCallbackRegister(tcc0_callback, (uintptr_t)NULL);
    TCC0_PWMStart();
    
    ADC_CallbackRegister(adc0_callback, (uintptr_t)NULL);
    ADC_Enable();    
    
    TC0_TimerStart();

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
        if(resultReady == true)
        {
            resultReady = false;
            
//            char errorMessage[] = "\r\n**** USART error has occurred ****\r\n";
//            SERCOM3_USART_Write(&errorMessage[0],sizeof(errorMessage));

            printf("\r ADC Result: 0x%X", adc_result);
        }
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/
