/*
 * Copyright (c) 2023 Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * 3. Neither the name of the copyright holder nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * @file   : task_adc.c
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

/********************** inclusions *******************************************/
/* Project includes. */
#include "main.h"

/* Demo includes. */
#include "logger.h"
#include "dwt.h"

/* Application & Tasks includes. */
#include "board.h"
#include "app.h"
#include "task_temperature_interface.h"

/********************** macros and definitions *******************************/

#define SAMPLES_COUNTER (150)

#define AVG_SLOPE (4.3F)
#define V_AT_25C (1.43F)

/********************** internal data declaration ****************************/
uint32_t tickstart;
uint16_t indice_micro;
uint16_t indice_ambiente;

uint16_t sample_array_micro[SAMPLES_COUNTER];
uint16_t sample_array_ambiente[SAMPLES_COUNTER];
bool b_trig_new_conversion_micro;
bool b_trig_new_conversion_ambiente;
uint16_t promedio(uint16_t sample_array[SAMPLES_COUNTER]);

valor_sensor_t task_valor_sensor_list[] = {
		{false, 0},
		{false, 0}
};

/********************** internal functions definitions ***********************/

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc);
bool test3_tick_micro();
bool test3_tick_ambiente();
/********************** internal data definition *****************************/
const char *p_task_adc 		= "Task ADC";

/********************** external data declaration *****************************/
extern ADC_HandleTypeDef hadc1;
extern ADC_HandleTypeDef hadc2;

/********************** external functions definition ************************/

void task_adc_init(void *parameters)
{
	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_adc_init), p_task_adc);
	HAL_NVIC_SetPriority(ADC1_2_IRQn, 2, 0);
	HAL_NVIC_EnableIRQ(ADC1_2_IRQn);

	indice_micro = 0;
	indice_ambiente = 0;
	tickstart = HAL_GetTick();
}

void task_adc_update(void *parameters){
	bool obtener_valor_sensor_micro = test3_tick_micro();
	bool obtener_valor_sensor_amb = test3_tick_ambiente();
}


bool test3_tick_micro() {

	bool b_done = false;

	if (indice_micro>=SAMPLES_COUNTER) {
		b_done = true;
		goto test3_tick_end;
	}

	/* start of first conversion */
	if (0==indice_micro) {
		b_trig_new_conversion_micro = true;
	}

	if (b_trig_new_conversion_micro) {
		b_trig_new_conversion_micro = false;
		HAL_ADC_Start_IT(&hadc1);
	}

test3_tick_end:
	if (b_done) {
		uint16_t prom = promedio(sample_array_micro);
		//LOGGER_LOG("%u\n",prom);
		float V_Sense = (prom * 3.3) / 4096;
		float Temperature = (((V_AT_25C - V_Sense) * 1000.0) /AVG_SLOPE) + 25.0;
		/*LOGGER_LOG("temperatura: %f\n", Temperature);
		LOGGER_LOG("Fue una tanda-----------\n");*/
		cargar_valor_sensor(SENSOR_MICRO,Temperature);
		indice_micro = 0;
	}
	return b_done;
}

bool test3_tick_ambiente() {

	bool b_done = false;

	if (indice_ambiente>=SAMPLES_COUNTER) {
		b_done = true;
		goto test3_tick_end_amb;
	}

	/* start of first conversion */
	if (0==indice_ambiente) {
		b_trig_new_conversion_ambiente = true;
	}


	if (b_trig_new_conversion_ambiente) {
		b_trig_new_conversion_ambiente = false;
		HAL_ADC_Start_IT(&hadc2);
	}

test3_tick_end_amb:
	if (b_done) {
		uint16_t prom = promedio(sample_array_ambiente);
		//LOGGER_LOG("%u\n",prom);
		float raw = (prom * 3.3/4096)*1000;
		float Temperature_amb = (raw-150.0) /10.0;

		/*float V_Sense = (prom * 3.3) / 4096;
		float Temperature_amb = (((V_AT_25C - V_Sense) * 1000.0) /AVG_SLOPE) + 25.0;*/

		/*LOGGER_LOG("temperatura amb: %f\n", Temperature_amb);
		LOGGER_LOG("Fue una tanda-----------\n");*/
		cargar_valor_sensor(SENSOR_AMBIENTE, Temperature_amb);
		indice_ambiente = 0;
	}
	return b_done;
}


void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc) {
	//ADC_HandleTypeDef *aux;
	if (hadc == &hadc1){
		//aux = &hadc1;
		sample_array_micro[indice_micro++] = HAL_ADC_GetValue(hadc);
		if (indice_micro < SAMPLES_COUNTER) {
			b_trig_new_conversion_micro = true;
		}
	}
	else if(hadc == &hadc2) {
		//aux = &hadc2;
		sample_array_ambiente[indice_ambiente++] = HAL_ADC_GetValue(hadc);
		if (indice_ambiente < SAMPLES_COUNTER) {
			b_trig_new_conversion_ambiente = true;
		}
	}

}

uint16_t promedio(uint16_t sample_array[SAMPLES_COUNTER]){
	uint32_t averaged = 0;
	for(uint8_t averager=1 ; averager<SAMPLES_COUNTER ; averager++){
		averaged += sample_array[averager];
	}
	averaged = averaged / SAMPLES_COUNTER;
	return averaged;
}

/********************** end of file ******************************************/
