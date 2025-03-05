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
 *
 * @file   : task_system.c
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
#include "task_system_attribute.h"
#include "task_system_interface.h"
#include "task_actuator_attribute.h"
#include "task_actuator_interface.h"
#include "task_temperature_interface.h"
#include "display.h"


/********************** macros and definitions *******************************/
#define G_TASK_SYS_CNT_INI			0ul
#define G_TASK_SYS_TICK_CNT_INI		0ul

#define DEL_SYS_XX_MIN				0ul
#define DEL_SYS_XX_MED				50ul
#define DEL_SYS_XX_MAX				5000ul

#define SUBMENU_ID_MAX              2ul
#define TMPO_ESPERA_MAX             9ul
#define TMPO_ESPERA_MIN             1ul
#define TMPO_DEBAJO_MAX             9ul
#define TMPO_DEBAJO_MIN             1ul
#define TEMP_AMBIENTE				25ul


/********************** internal data declaration ****************************/
task_system_dta_t task_system_dta =
	{DEL_SYS_XX_MAX,
			ST_SYS_PORTON_CERRADO,
			ST_SYS_PORTON_CERRADO,
			EV_SYS_XX_IDLE,
			false,
			false,
			false,
			false};

task_menu_parameters_t task_menu_parameters =
		{1, TMPO_ESPERA_MAX, TMPO_DEBAJO_MAX, TEMP_AMBIENTE, TEMP_AMBIENTE,"                ","                "};

#define SYSTEM_DTA_QTY	(sizeof(task_system_dta)/sizeof(task_system_dta_t))

/********************** internal functions declaration ***********************/

/********************** internal data definition *****************************/
const char *p_task_system 		= "Task System (System Statechart)";
const char *p_task_system_ 		= "Non-Blocking & Update By Time Code";

/********************** external data declaration ****************************/
uint32_t g_task_system_cnt;
volatile uint32_t g_task_system_tick_cnt;

/********************** external functions definition ************************/
void task_system_init(void *parameters)
{
	task_system_dta_t 	*p_task_system_dta;
	task_menu_parameters_t *p_task_menu_parameters;
	task_system_st_t	state;
	task_system_ev_t	event;
	bool b_event;

	/* Print out: Task Initialized */
	LOGGER_LOG("  %s is running - %s\r\n", GET_NAME(task_system_init), p_task_system);
	LOGGER_LOG("  %s is a %s\r\n", GET_NAME(task_system), p_task_system_);

	g_task_system_cnt = G_TASK_SYS_CNT_INI;

	/* Print out: Task execution counter */
	LOGGER_LOG("   %s = %lu\r\n", GET_NAME(g_task_system_cnt), g_task_system_cnt);

	init_queue_event_task_system();

	/* Update Task Actuator Configuration & Data Pointer */
	p_task_system_dta = &task_system_dta;
	p_task_menu_parameters = &task_menu_parameters;
	/* Print out: Task execution FSM */
	state = p_task_system_dta->state;
	LOGGER_LOG("   %s = %lu", GET_NAME(state), (uint32_t)state);

	event = p_task_system_dta->event;
	LOGGER_LOG("   %s = %lu", GET_NAME(event), (uint32_t)event);

	b_event = p_task_system_dta->flag;
	LOGGER_LOG("   %s = %s\r\n", GET_NAME(b_event), (b_event ? "true" : "false"));

	/*INCIO EL DISPLAY*/
	displayInit(DISPLAY_CONNECTION_GPIO_4BITS);
	displayCharPositionWrite(0, 0);
	displayStringWrite("D=DEBAJO,A=T_AMB");
	displayCharPositionWrite(0, 1);
	displayStringWrite("M=T_MICR,E=ESPER");

	/*double raw = HAL_ADC_GetValue(&hadc1);
	raw = raw * 0.452;
	p_task_menu_parameters->temp_ambiente = (raw - 500.0)/10;*/


	g_task_system_tick_cnt = G_TASK_SYS_TICK_CNT_INI;
}

void task_system_update(void *parameters)
{
	//int posicion;
	//uint8_t tick_display = 0;

	task_system_dta_t *p_task_system_dta;
	bool b_time_update_required = false;

	/*AGREGO VARIABLES PARA EL MENU Y DISPLAY*/
	task_menu_parameters_t *p_task_menu_parameters;

	//levantar temperature de task_temperature.c, lo cargo




	/* Update Task System Counter */
	g_task_system_cnt++;

	/* Protect shared resource (g_task_system_tick) */
	__asm("CPSID i");	/* disable interrupts*/
    if (G_TASK_SYS_TICK_CNT_INI < g_task_system_tick_cnt)
    {
    	g_task_system_tick_cnt--;
    	b_time_update_required = true;
    }
    __asm("CPSIE i");	/* enable interrupts*/

    while (b_time_update_required)
    {
		/* Protect shared resource (g_task_system_tick) */
		__asm("CPSID i");	/* disable interrupts*/
		if (G_TASK_SYS_TICK_CNT_INI < g_task_system_tick_cnt)
		{
			g_task_system_tick_cnt--;
			b_time_update_required = true;
		}
		else
		{
			b_time_update_required = false;
		}
		__asm("CPSIE i");	/* enable interrupts*/

    	/* Update Task System Data Pointer */
		p_task_system_dta = &task_system_dta;
		p_task_menu_parameters = &task_menu_parameters;

		p_task_menu_parameters->temp_micro = get_valor_sensor(SENSOR_MICRO);
		p_task_menu_parameters->temp_ambiente = get_valor_sensor(SENSOR_AMBIENTE);

		if (true == any_event_task_system())
		{
			p_task_system_dta->flag = true;
			p_task_system_dta->event = get_event_task_system();
		}

		switch (p_task_system_dta->state)
		{

		case ST_SYS_PORTON_CERRADO:

			/*SE EMPIEZA A ABRIR*/
			if ((true == p_task_system_dta->flag) && (EV_SYS_ACCIONAR_PORTON == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = ST_SYS_PORTON_ABRIENDO;
				p_task_system_dta->abriendo = true;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_LED_PORTON_ABRIENDO);
				put_event_task_actuator(EV_LED_XX_ON, ID_LED_PORTON_NO_CERRADO);
				put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PORTON_CERRADO);
				LOGGER_LOG("ABRIENDOOOOO \n");
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON ABRIENDO ");
				EscribirLinea2( p_task_menu_parameters);

			}
			/*AL MENU*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->last_state = p_task_system_dta->state;
				p_task_system_dta->state = ST_SYS_MENU_SETUP;
				p_task_menu_parameters->submenu = 1;
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "MENU SETUP      ");
				snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "TIEMPO DE ESPERA");

			}


			break;

		case ST_SYS_PORTON_ABRIENDO:

			/*SE TERMINA DE ABRIR*/
			if ((true == p_task_system_dta->flag) && (EV_SYS_PORTON_ABIERTO == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = ST_SYS_PORTON_ABIERTO;
				if(p_task_system_dta->auto_debajo == true){
					p_task_system_dta->tick = p_task_menu_parameters->tmpo_debajo *1000;
				}
				else
					p_task_system_dta->tick = p_task_menu_parameters->tmpo_espera *1000;
				put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PORTON_ABRIENDO);
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON ABIERTO  ");
				EscribirLinea2( p_task_menu_parameters);

			}

			/*SE FRENA EL PORTON*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_ACCIONAR_PORTON == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = ST_SYS_PORTON_FRENADO;
				put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PORTON_ABRIENDO);
				p_task_system_dta->tick = p_task_menu_parameters->tmpo_espera * 1000;
				LOGGER_LOG("FRENADOOOOOOO \n");
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON FRENADO  ");
				EscribirLinea2( p_task_menu_parameters);

			}

			/* AUTO DEBAJO*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_AUTO_DEBAJO_ON == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->evento = true;
					p_task_system_dta->auto_debajo = true;
					p_task_system_dta->tick = p_task_menu_parameters->tmpo_debajo * 1000;
				}
			else if ((true == p_task_system_dta->flag) && (EV_SYS_AUTO_DEBAJO_OFF == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->auto_debajo = false;
				p_task_system_dta->tick = p_task_menu_parameters->tmpo_espera * 1000;
			}

			/*AL MENU*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->last_state = p_task_system_dta->state;
				p_task_system_dta->state = ST_SYS_MENU_SETUP;
				p_task_menu_parameters->submenu = 1;
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "MENU SETUP      ");
				snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "TIEMPO DE ESPERA");
			}


			break;

		case ST_SYS_PORTON_ABIERTO:

			if ((true == p_task_system_dta->flag) && (EV_SYS_ACCIONAR_PORTON == p_task_system_dta->event) &&(p_task_system_dta->auto_debajo == false))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = ST_SYS_PORTON_CERRANDO;
				p_task_system_dta->abriendo = false;
				put_event_task_actuator(EV_LED_XX_BLINK, ID_LED_PORTON_CERRANDO);
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON CERRANDO ");
				EscribirLinea2( p_task_menu_parameters);

			}

			/* AUTO DEBAJO*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_AUTO_DEBAJO_ON == p_task_system_dta->event))
				{
					p_task_system_dta->flag = false;
					p_task_system_dta->evento = true;
					p_task_system_dta->auto_debajo = true;
					p_task_system_dta->tick = p_task_menu_parameters->tmpo_debajo * 1000;
				}
			else if ((true == p_task_system_dta->flag) && (EV_SYS_AUTO_DEBAJO_OFF == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->auto_debajo = false;
				p_task_system_dta->tick = p_task_menu_parameters->tmpo_espera * 1000;
			}

			/*CIERRE AUTOMATICO O SIRENA*/

			else if (p_task_system_dta->flag == false) {

				p_task_system_dta->tick--;

				if (p_task_system_dta->auto_debajo == false && (p_task_system_dta->tick > 0)){
					put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER);
				}

				else if ((p_task_system_dta->tick == 0) && (p_task_system_dta->auto_debajo == false))
				{
					p_task_system_dta->state = ST_SYS_PORTON_CERRANDO;
					p_task_system_dta->evento = true;
					p_task_system_dta->abriendo = false;
					put_event_task_actuator(EV_LED_XX_BLINK, ID_LED_PORTON_CERRANDO);
					put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER);
					snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON CERRANDO ");
					EscribirLinea2( p_task_menu_parameters);


					LOGGER_LOG("NO SUENA CHICARRA 336/n");
				}
				else if ((p_task_system_dta->tick == 0) && (p_task_system_dta->auto_debajo == true)){
					/*ACA SUENA LA SIRENA*/
					put_event_task_actuator(EV_LED_XX_BLINK, ID_BUZZER);

					//LOGGER_LOG("SUENA CHICHARRA 340 ");
				}
			}


			/*VA AL MENU Y GUARDA EL ESTADO EN EL QUE ESTA PARA VOLER AL MISMO*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
					{
						p_task_system_dta->flag = false;
						p_task_system_dta->evento = true;
						p_task_system_dta->last_state = p_task_system_dta->state;
						p_task_system_dta->state = ST_SYS_MENU_SETUP;
						p_task_menu_parameters->submenu = 1;
						snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "MENU SETUP      ");
						snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "TIEMPO DE ESPERA");
					}

			break;


		case ST_SYS_PORTON_FRENADO:

			/*SE EMPIEZA A ABRIR O CERRAR SEGUN SI SE ESTABA ABRIENDO O CERRANDO*/
			if ((true == p_task_system_dta->flag) && (EV_SYS_ACCIONAR_PORTON == p_task_system_dta->event))
			{
				if (p_task_system_dta->abriendo == false){
					p_task_system_dta->flag = false;
					p_task_system_dta->evento = true;
					p_task_system_dta->state = ST_SYS_PORTON_ABRIENDO;
					p_task_system_dta->abriendo = true;
					put_event_task_actuator(EV_LED_XX_BLINK, ID_LED_PORTON_ABRIENDO);
					snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON ABRIENDO ");
					EscribirLinea2( p_task_menu_parameters);


				}
				else if (p_task_system_dta->auto_debajo == false){
					p_task_system_dta->flag = false;
					p_task_system_dta->evento = true;
					p_task_system_dta->state = ST_SYS_PORTON_CERRANDO;
					p_task_system_dta->abriendo = false;
					put_event_task_actuator(EV_LED_XX_BLINK, ID_LED_PORTON_CERRANDO);
					LOGGER_LOG("CERRANDOOOOOOO \n");
					snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON CERRANDO ");
					EscribirLinea2( p_task_menu_parameters);

				}
			}

			/* CAMBIA SI HAY O NO UN AUTO DEBAJO*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_AUTO_DEBAJO_ON == p_task_system_dta->event))
				{
					LOGGER_LOG("apago chicharra 407 ");
					p_task_system_dta->flag = false;
					p_task_system_dta->evento = true;
					p_task_system_dta->auto_debajo = true;
					p_task_system_dta->tick = p_task_menu_parameters->tmpo_debajo * 1000;
				}
			else if ((true == p_task_system_dta->flag) && (EV_SYS_AUTO_DEBAJO_OFF == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->auto_debajo = false;
				p_task_system_dta->tick = p_task_menu_parameters->tmpo_espera * 1000;

			}
			 /*CIERRE AUTOMATICO O SIRENA*/
			else if (false == p_task_system_dta->flag) {


				p_task_system_dta->tick--;

				if (p_task_system_dta->auto_debajo == false && (p_task_system_dta->tick > 0)){
					put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER);
					//LOGGER_LOG("apago chicharra 427 ");

				}

				else if ((p_task_system_dta->tick == 0) && (p_task_system_dta->auto_debajo == false))
				{
					p_task_system_dta->state = ST_SYS_PORTON_CERRANDO;
					p_task_system_dta->evento = true;
					p_task_system_dta->abriendo = false;
					put_event_task_actuator(EV_LED_XX_BLINK, ID_LED_PORTON_CERRANDO);
					put_event_task_actuator(EV_LED_XX_OFF, ID_BUZZER);
					snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON CERRANDO ");
					EscribirLinea2( p_task_menu_parameters);

					LOGGER_LOG("NO SUENA CHICHARRA 441 ");

				}
				else if ((p_task_system_dta->tick == 0) && (p_task_system_dta->auto_debajo == true)){
					/*ACA SUENA LA SIRENA*/
					put_event_task_actuator(EV_LED_XX_BLINK, ID_BUZZER);
					//LOGGER_LOG("SUENA CHICHARRA 447 ");
				}

			}


			/*VA AL MENU Y GUARDA EL ESTADO EN EL QUE ESTA PARA VOLER AL MISMO*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->last_state = p_task_system_dta->state;
				p_task_system_dta->state = ST_SYS_MENU_SETUP;
				p_task_menu_parameters->submenu = 1;
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "MENU SETUP      ");
				snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "TIEMPO DE ESPERA");
			}


			break;

		case ST_SYS_PORTON_CERRANDO:

			/*SE FRENA EL PORTON*/
			if ((true == p_task_system_dta->flag) && (EV_SYS_ACCIONAR_PORTON == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = ST_SYS_PORTON_FRENADO;
				put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PORTON_CERRANDO);
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON FRENADO  ");
				EscribirLinea2( p_task_menu_parameters);

			}

			/* CAMBIA SI HAY O NO UN AUTO DEBAJO, EN ESTE CASO CAMBIA EL ESTADO*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_AUTO_DEBAJO_ON == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->auto_debajo = true;
				p_task_system_dta->tick = p_task_menu_parameters->tmpo_debajo * 1000;
				p_task_system_dta->state = ST_SYS_PORTON_FRENADO;
				put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PORTON_CERRANDO);
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON FRENADO  ");
				EscribirLinea2( p_task_menu_parameters);

			}

			/*SE TERMINA DE CERRAR*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_PORTON_CERRADO == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = ST_SYS_PORTON_CERRADO;
				put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PORTON_CERRANDO);
				put_event_task_actuator(EV_LED_XX_ON, ID_LED_PORTON_CERRADO);
				put_event_task_actuator(EV_LED_XX_OFF, ID_LED_PORTON_NO_CERRADO);
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "PORTON CERRADO  ");
				EscribirLinea2( p_task_menu_parameters);

			}

			/*VA AL MENU Y GUARDA EL ESTADO EN EL QUE ESTA PARA VOLER AL MISMO*/
			else if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->last_state = p_task_system_dta->state;
				p_task_system_dta->state = ST_SYS_MENU_SETUP;
				p_task_menu_parameters->submenu = 1;
				snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "MENU SETUP      ");
				snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "TIEMPO DE ESPERA");
			}

			break;

		case ST_SYS_MENU_SETUP:

			if ((true == p_task_system_dta->flag) && (EV_SYS_NEXT == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				if (p_task_menu_parameters->submenu == SUBMENU_ID_MAX){
					p_task_menu_parameters->submenu = 1;
					snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "TIEMPO DE ESPERA");

				}
				else{
					p_task_menu_parameters->submenu++;
					snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "TIEMPO DEBAJO   ");
				}

			}

			if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				if (p_task_menu_parameters->submenu == 1){
					p_task_system_dta->state = ST_SYS_MENU_ESPERA;
					snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "MENU ESPERA     ");
					snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "T ESPERA: %.0lu     " , p_task_menu_parameters->tmpo_espera);
				}
				else{
					p_task_system_dta->state =ST_SYS_MENU_DEBAJO;
					snprintf(p_task_menu_parameters->linea1, sizeof(p_task_menu_parameters->linea1), "MENU DEBAJO     ");
					snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "T DEBAJO: %.0lu     " , p_task_menu_parameters->tmpo_debajo);


				}

			}

			break;

		case ST_SYS_MENU_ESPERA:

			if ((true == p_task_system_dta->flag) && (EV_SYS_NEXT == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				if (p_task_menu_parameters->tmpo_espera == TMPO_ESPERA_MAX){
					p_task_menu_parameters->tmpo_espera  = TMPO_ESPERA_MIN;
				}
				else
					p_task_menu_parameters->tmpo_espera++;
				snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "T ESPERA: %.0lu     " , p_task_menu_parameters->tmpo_espera);


			}

			if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = p_task_system_dta->last_state;
				displayUpdateLinea1(p_task_system_dta,p_task_menu_parameters);
				EscribirLinea2( p_task_menu_parameters);

			}
			break;

		case ST_SYS_MENU_DEBAJO:

			if ((true == p_task_system_dta->flag) && (EV_SYS_NEXT == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				if (p_task_menu_parameters->tmpo_debajo == TMPO_DEBAJO_MAX){
					p_task_menu_parameters->tmpo_debajo = TMPO_DEBAJO_MIN;
				}
				else
					p_task_menu_parameters->tmpo_debajo++;

				snprintf(p_task_menu_parameters->linea2, sizeof(p_task_menu_parameters->linea2), "T DEBAJO: %.0lu     " , p_task_menu_parameters->tmpo_debajo);

			}

			if ((true == p_task_system_dta->flag) && (EV_SYS_MENU == p_task_system_dta->event))
			{
				p_task_system_dta->flag = false;
				p_task_system_dta->evento = true;
				p_task_system_dta->state = p_task_system_dta->last_state;
				displayUpdateLinea1(p_task_system_dta,p_task_menu_parameters);
				EscribirLinea2( p_task_menu_parameters);

			}
			break;

		default:

			break;


		}
		if (true == p_task_system_dta->evento){
		            p_task_system_dta->evento = false;
		            //posicion = 0;
		            displayCharPositionWrite(0, 0);
		            displayStringWrite(p_task_menu_parameters->linea1);
		            displayCharPositionWrite(0, 1);
		            displayStringWrite("                 ");
		            displayCharPositionWrite(0, 1);
		            displayStringWrite(p_task_menu_parameters->linea2);
		 }
		 /*else if(false == p_task_system_dta->evento){ // en este caso que no hay nuevos eventos quiero que shiftee

		            tick_display++;
		            if (tick_display > 500){
		                posicion++;
		                if(posicion >= sizeof(p_task_menu_parameters->texto) || p_task_menu_parameters->texto[posicion] == ' ' ){//aca puedo hacer algo con detectar espacios porque lo escribi todo sin espacios y puede ser una forma de detectar el fin de texto y despreocuparme por el tamaño
		                    posicion = 0; //vuelvo a escribir desde el inicio, va a pegar un salto pero al menos ya deberia haberse leido por completo.
		                }
		                //esto se puede hacer que actualice cada 10 segundos, osea me fijo en algun tick que pase 100 tics.

		                ActualizarL2(posicion, p_task_menu_parameters);
		                displayCharPositionWrite(0, 1);
		                displayStringWrite(p_task_menu_parameters->linea2);
		            tick_display = 0;
		            }
		        }
		        */

   }

}
/********************** end of file ******************************************/
