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

#define GCLK_FREQ 48000000UL
#define PRESCALER 64


void PWM_SetFrequency(uint32_t freq)
{
    uint32_t per = (GCLK_FREQ / (PRESCALER * freq)) - 1;

    TCC0_REGS->TCC_PER = per;

    // Wait for sync
    while (TCC0_REGS->TCC_SYNCBUSY);
}

void PWM_SetDuty(uint8_t duty_percent)
{
    uint32_t cc = ((TCC0_REGS->TCC_PER + 1) * duty_percent) / 100;
    TCC0_REGS->TCC_CC[0] = cc;

    while (TCC0_REGS->TCC_SYNCBUSY);
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
    
//    TCC0_PWMStart();
    
//    TCC0_PWMStop
    
    SYSTICK_TimerStart();

//    SYSTICK_DelayMs(300);


    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
       PWM_SetFrequency(15);   // 1 kHz
       PWM_SetDuty(50);         // 50%
       TCC0_PWMStart();
       SYSTICK_DelayMs(142);
       TCC0_PWMStop();
//       
       PWM_SetFrequency(24);   // 1.5 kHz
       PWM_SetDuty(50);         // 50%
       TCC0_PWMStart();
       SYSTICK_DelayMs(142);
       TCC0_PWMStop();
//                       
       PWM_SetFrequency(30);   // 1.9 kHz
       PWM_SetDuty(50);         // 50%
       TCC0_PWMStart();
       SYSTICK_DelayMs(142);
       TCC0_PWMStop();
//
      PWM_SetFrequency(40);  // 2.5 kHz
      PWM_SetDuty(50);
      TCC0_PWMStart();
      SYSTICK_DelayMs(142);
      TCC0_PWMStop();
//
//
      PWM_SetFrequency(48); // 3 kHz
      PWM_SetDuty(50);   
      TCC0_PWMStart();
      SYSTICK_DelayMs(142);
      TCC0_PWMStop();
//      
      PWM_SetFrequency(55); // 3.5 kHz
      PWM_SetDuty(50);   
      TCC0_PWMStart();
      SYSTICK_DelayMs(142);
      TCC0_PWMStop();
//      
      PWM_SetFrequency(64); // 4 kHz
      PWM_SetDuty(50);   
      TCC0_PWMStart();
      SYSTICK_DelayMs(142);
      TCC0_PWMStop();
      
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

