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

#define AudioNumber 2
void TC0_Callback(uintptr_t context);
void SW0_Callback(uintptr_t context);

volatile uint8_t sw0_pressed = false;
volatile bool Sample_Rate_8KHz = false;
volatile uint32_t audio_index = 0;

extern const unsigned char fire_alert_V1_8KHz_raw[];
extern const unsigned int fire_alert_V1_8KHz_raw_len;

extern const unsigned char Fire_fire_human_voice_raw[];
extern const unsigned int Fire_fire_human_voice_raw_len;

extern const unsigned char Alarm_1_alert_raw[];
extern const unsigned int Alarm_1_alert_raw_len;

extern const unsigned char Alarm_2_alert_raw[];
extern const unsigned int Alarm_2_alert_raw_len;

// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main(void) {
    /* Initialize all modules */
    SYS_Initialize(NULL);

    EIC_CallbackRegister(EIC_PIN_12, SW0_Callback, 0);
    TC0_TimerCallbackRegister(TC0_Callback, 0);
    TC0_TimerStart();

    while (true) {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks();

        /* 8 KHz sampling rate */
        if (Sample_Rate_8KHz == true) {
            Sample_Rate_8KHz = false;

            uint16_t dac_value;
//                        if (sw0_pressed == false) { // total 41kb with my song
//                            dac_value = ((uint16_t) fire_alert_V1_8KHz_raw[audio_index]) << 4;
//                            DAC_DataWrite(DAC_CHANNEL_0, dac_value);
//                            audio_index++;
//                            if (audio_index >= fire_alert_V1_8KHz_raw_len) {
//                                audio_index = 0; // loop audio
//                            }
//                        }
            if (sw0_pressed == false) {
                dac_value = ((uint16_t) Fire_fire_human_voice_raw[audio_index]) << 4;
                DAC_DataWrite(DAC_CHANNEL_0, dac_value);
                audio_index++;
                if (audio_index >= Fire_fire_human_voice_raw_len) {
                    audio_index = 0; // loop audio
                }
            }
            if (sw0_pressed == 1) {
                dac_value = ((uint16_t) Alarm_1_alert_raw[audio_index]) << 4;
                DAC_DataWrite(DAC_CHANNEL_0, dac_value);
                audio_index++;
                if (audio_index >= Alarm_1_alert_raw_len) {
                    audio_index = 0; // loop audio
                }
            }

            if (sw0_pressed == 2) {
                dac_value = ((uint16_t) Alarm_2_alert_raw[audio_index]) << 4;
                DAC_DataWrite(DAC_CHANNEL_0, dac_value);
                audio_index++;
                if (audio_index >= Alarm_2_alert_raw_len) {
                    audio_index = 0; // loop audio
                }
            }
        }
    }
    /* Execution should not come here during normal operation */
    return ( EXIT_FAILURE);
}

void TC0_Callback(uintptr_t context) {
    Sample_Rate_8KHz = true;
}

void SW0_Callback(uintptr_t context) {
    sw0_pressed++;
    if (sw0_pressed > AudioNumber) {
        sw0_pressed = false;
    }
    audio_index = 0;
}

/*******************************************************************************
 End of File
 */

