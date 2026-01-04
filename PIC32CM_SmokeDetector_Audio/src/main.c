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

volatile uint32_t audio_index = 0;

void TC0_Callback(uintptr_t context);

/* 5 kHz test tone
 * Sample rate: 20 kHz
 * 4 samples per cycle
 */
const uint8_t audio_5khz[] =
{
    128, 255, 128, 0
};

#define AUDIO_LEN   (sizeof(audio_5khz))

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    TC0_TimerCallbackRegister(TC0_Callback, 0);
    
    TC0_TimerStart();

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
    
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

void TC0_Callback(uintptr_t context)
{
    uint16_t dac_value;

    /* Convert 8-bit audio sample to 12-bit DAC */
    dac_value = ((uint16_t)audio_5khz[audio_index]) << 4;

    /* Write to DAC */
    DAC_DataWrite(DAC_CHANNEL_0, dac_value);

    /* Move to next sample */
    audio_index++;

    if (audio_index >= AUDIO_LEN)
    {
        audio_index = 0;   // repeat sound
    }
}

/*******************************************************************************
 End of File
*/

