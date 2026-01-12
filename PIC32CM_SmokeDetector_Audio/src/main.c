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

volatile bool sw0_pressed = false;
volatile bool Sample_Rate_8KHz = false;

volatile uint32_t audio_index = 0;

void SW0_Callback(uintptr_t context)
{
    sw0_pressed = !sw0_pressed;
    audio_index = 0;
}



void TC0_Callback(uintptr_t context);

extern const unsigned char attention_clear_area_female_455102_raw[];
extern const unsigned int attention_clear_area_female_455102_raw_len;

extern const unsigned char Hrudayat_Vaje_Something_80kb_raw[];
extern const unsigned int Hrudayat_Vaje_Something_80kb_raw_len;

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
    
    EIC_CallbackRegister(EIC_PIN_12, SW0_Callback, 0);

    
    TC0_TimerCallbackRegister(TC0_Callback, 0);
    
    TC0_TimerStart();

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
        if(Sample_Rate_8KHz == true){
            
            Sample_Rate_8KHz = false;
            
                uint16_t dac_value;

    if(sw0_pressed == false){
        dac_value = ((uint16_t)attention_clear_area_female_455102_raw[audio_index]) << 4;
            DAC_DataWrite(DAC_CHANNEL_0, dac_value);
                audio_index++;
    if (audio_index >= attention_clear_area_female_455102_raw_len)
    {
        audio_index = 0;   // loop audio
    }
    }
    if(sw0_pressed == !false){
    dac_value =
//        ((uint16_t)attention_clear_area_female_455102_raw[audio_index]) << 4;
    ((uint16_t)Hrudayat_Vaje_Something_80kb_raw[audio_index]) << 4;
    DAC_DataWrite(DAC_CHANNEL_0, dac_value);
    audio_index++;
    if (audio_index >= Hrudayat_Vaje_Something_80kb_raw_len)
        
    {
        audio_index = 0;   // loop audio
    }
    }
        }
    
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}

void TC0_Callback(uintptr_t context)
{
    Sample_Rate_8KHz = true;
}


/*******************************************************************************
 End of File
*/

