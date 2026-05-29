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
//#define ADC_COUNT_MAX           (4095U)
//uint16_t adc_count;
//float input_voltage;

/* collecting 10 sample */
#define ADC_VREF                (3.3f) 
#define ADC_COUNT_MAX           (4095U)
uint16_t adc_count;
uint16_t adc_count_arr[10];
float input_voltage;
volatile uint8_t adc_Index = 0;



#define LUT_SIZE 10
#define N_SAMPLES   10
#define SCALE 1000

int16_t adc_shifted[N_SAMPLES];
int32_t result_sin[N_SAMPLES];
int32_t result_cos[N_SAMPLES];

/* unsigned LUT */
/* const uint16_t sine_LUT[LUT_SIZE] = {
    2048,  // 0°
    3251,  // 36°
    3995,  // 72°
    3995,  // 108°
    3251,  // 144°
    2048,  // 180°
    844,   // 216°
    100,   // 252°
    100,   // 288°
    844    // 324°
};
*/
//uint32_t result_arr[10];


/* signed LUT */
/*
const int16_t sine_LUT[10] = {
     0,     // 0°
  1203,
  1947,
  1947,
  1203,
     0,
 -1203,
 -1947,
 -1947,
 -1203
};
int32_t result_signed[10];
*/

int16_t sine_LUT[N_SAMPLES] = {
     0,   588,   951,   951,   588,
     0,  -588,  -951,  -951,  -588
};

int16_t cosine_LUT[N_SAMPLES] = {
   1000,   809,   309,  -309,  -809,
  -1000,  -809,  -309,   309,   809
};




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
    TC0_TimerStart();
    
    static bool prev = false;   // ? OUTSIDE loop (important)

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        
//                ADC_ConversionStart();
//        while(!ADC_ConversionStatusGet())
//        {      };       
//        adc_count = ADC_ConversionResultGet();
//        input_voltage = (float)adc_count * ADC_VREF / ADC_COUNT_MAX;
        
        //New
        
//            if (ADC_ConversionStatusGet())
//    {
//        adc_count = ADC_ConversionResultGet();
//        input_voltage = (float)adc_count * ADC_VREF / ADC_COUNT_MAX;
//    }
        
        
        /* collecting 10 sample */
//        if (ADC_ConversionStatusGet()){
//                      adc_count_arr[adc_Index] = ADC_ConversionResultGet();
//        //input_voltage = (float)adc_count * ADC_VREF / ADC_COUNT_MAX;
//        adc_Index++;
//        if(adc_Index>= 10){
//            adc_Index = 0;
//        }
//        }
        
                bool curr = ADC_ConversionStatusGet();   // inside loop

        if (curr && !prev)
        {
            adc_count = ADC_ConversionResultGet();
            adc_count_arr[adc_Index] = adc_count;
            
            /* Unsigned */
//            result_arr[adc_Index] = (uint32_t)adc_count_arr[adc_Index] * sine_LUT[adc_Index];
            
            /* Signed */
//        result_signed[adc_Index] = ((int32_t)adc_count_arr[adc_Index] * sine_LUT[adc_Index]) / 2048;
            adc_Index++;
            if (adc_Index >= N_SAMPLES)
            {
                adc_Index = 0;
                uint32_t sum = 0;

                for(int i = 0; i < N_SAMPLES; i++)
                {
                sum += adc_count_arr[i];
                }

                uint16_t avg = sum / N_SAMPLES;
                
                

                for(int i = 0; i < N_SAMPLES; i++)
                {
                 adc_shifted[i] = (int16_t)adc_count_arr[i] - avg;
                }
                
                

                for(int i = 0; i < N_SAMPLES; i++)
                {
                 result_sin[i] = ((int32_t)adc_shifted[i] * sine_LUT[i])  / SCALE;;
                }
                
                

                for(int i = 0; i < N_SAMPLES; i++)
                {
                result_cos[i] = ((int32_t)adc_shifted[i] * cosine_LUT[i]) / SCALE;
                }
//                
            }
        }

        prev = curr;   // update state
        
        
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

