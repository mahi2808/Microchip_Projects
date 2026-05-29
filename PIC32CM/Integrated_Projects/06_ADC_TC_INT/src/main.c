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

#include<stdio.h>
#include<math.h>
#include<stdint.h>

volatile bool resultReady = false;
volatile uint16_t adc_result[10];
volatile uint32_t adc_Avgresult = 0;
volatile uint8_t adc_Sample_Number = 0;
volatile bool Adc_sample_flg = false;

float adc_Rms_Vtg = 0; // need to make float

void adc0_callback(ADC_STATUS status, uintptr_t context) {

    //            Adc_sample_flg = true;  

    if (adc_Sample_Number < 10) {
        adc_result[adc_Sample_Number] = ADC_ConversionResultGet();
        adc_Avgresult += adc_result[adc_Sample_Number] * adc_result[adc_Sample_Number];
    }

    adc_Sample_Number++;

    if (adc_Sample_Number >= 10) {
        resultReady = true;
        ADC_InterruptsDisable(ADC_INTFLAG_RESRDY_Msk);
    }

}

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void) {
    /* Initialize all modules */
    SYS_Initialize(NULL);

    TC0_TimerStart();
    ADC_CallbackRegister(adc0_callback, (uintptr_t) NULL);
    ADC_Enable();

    TCC0_PWMStart();

    //    SERCOM3_USART_Write("HELLO\r\n", 7);

    while (true) {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks();

        //            printf("\r ADC Result: 0x%X", adc_result);


        if (resultReady == true) {
            resultReady = false;
            adc_Avgresult = adc_Avgresult / 10;
            adc_Avgresult = sqrtf(adc_Avgresult);
            adc_Rms_Vtg = (float) ((adc_Avgresult * 3.3) / 4095);

            for (int i = 0; i < 10; i++) {
                adc_result[i] = false;
            }
            ADC_InterruptsEnable(ADC_INTFLAG_RESRDY_Msk);
            adc_Sample_Number = 0;
        }
    }
    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE);
}


/*******************************************************************************
 End of File
 */

