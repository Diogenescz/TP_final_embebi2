/*
 * Copyright (c) 2023 Juan Manuel Cruz <jcruz@fi.uba.ar>.
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
 * @file   : board.h
 * @date   : Set 26, 2023
 * @author : Juan Manuel Cruz <jcruz@fi.uba.ar> <jcruz@frba.utn.edu.ar>
 * @version	v1.0.0
 */

#ifndef BOARD_INC_BOARD_H_
#define BOARD_INC_BOARD_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/

/********************** macros ***********************************************/
#define NUCLEO_F103RC		(0)
#define NUCLEO_F401RE		(1)
#define NUCLEO_F446RE		(2)
#define NUCLEO_F429ZI		(3)
#define NUCLEO_F439ZI		(4)
#define NUCLEO_F413ZH		(5)
#define STM32F429I_DISCO1	(6)

#define BOARD (NUCLEO_F103RC)

/* STM32 Nucleo Boards - 64 Pins */
#if ((BOARD == NUCLEO_F103RC) || (BOARD == NUCLEO_F401RE) || (BOARD == NUCLEO_F446RE))

/*#define BTN_A_PIN		B1_Pin
#define BTN_A_PORT		B1_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_RESET
#define BTN_A_HOVER		GPIO_PIN_SET*/

#define BTN_MENU_PIN		A2_Pin
#define BTN_MENU_PORT		A2_GPIO_Port
#define BTN_MENU_PRESSED	GPIO_PIN_RESET
#define BTN_MENU_HOVER		GPIO_PIN_SET

#define SW_ABIERTO_PIN			D4_Pin
#define SW_ABIERTO_PORT			D4_GPIO_Port
#define SW_ABIERTO_PRESSED		GPIO_PIN_RESET
#define SW_ABIERTO_HOVER		GPIO_PIN_SET

#define BTN_ACCIONAR_PORTON_PIN			PB12_Pin
#define BTN_ACCIONAR_PORTON_PORT		PB12_GPIO_Port
#define BTN_ACCIONAR_PORTON_PRESSED		GPIO_PIN_RESET
#define BTN_ACCIONAR_PORTON_HOVER		GPIO_PIN_SET

#define SW_CERRADO_PIN			PB7_Pin
#define SW_CERRADO_PORT		PB7_GPIO_Port
#define SW_CERRADO_PRESSED		GPIO_PIN_RESET
#define SW_CERRADO_HOVER		GPIO_PIN_SET

#define BTN_NEXT_PIN		PB11_Pin
#define BTN_NEXT_PORT		PB11_GPIO_Port
#define BTN_NEXT_PRESSED	GPIO_PIN_RESET
#define BTN_NEXT_HOVER		GPIO_PIN_SET

#define SW_AUTO_DEBAJO_PIN			D14_Pin
#define SW_AUTO_DEBAJO_PORT		D14_GPIO_Port
#define SW_AUTO_DEBAJO_PRESSED		GPIO_PIN_RESET
#define SW_AUTO_DEBAJO_HOVER	    GPIO_PIN_SET

#define LED_LD2_PIN		LD2_Pin
#define LED_LD2_PORT	LD2_GPIO_Port
#define LED_LD2_ON		GPIO_PIN_SET
#define LED_LD2_OFF		GPIO_PIN_RESET

#define LED_CERRADO_PIN			A3_Pin
#define LED_CERRADO_PORT		A3_GPIO_Port
#define LED_CERRADO_ON			GPIO_PIN_SET
#define LED_CERRADO_OFF			GPIO_PIN_RESET

#define LED_ABRIENDO_PIN		PB14_Pin
#define LED_ABRIENDO_PORT		PB14_GPIO_Port
#define LED_ABRIENDO_ON			GPIO_PIN_SET
#define LED_ABRIENDO_OFF		GPIO_PIN_RESET

#define LED_ABIERTO_PIN			PB1_Pin
#define LED_ABIERTO_PORT		PB1_GPIO_Port
#define LED_ABIERTO_ON			GPIO_PIN_SET
#define LED_ABIERTO_OFF			GPIO_PIN_RESET

#define LED_CERRANDO_PIN		PB15_Pin
#define LED_CERRANDO_PORT		PB15_GPIO_Port
#define LED_CERRANDO_ON			GPIO_PIN_SET
#define LED_CERRANDO_OFF		GPIO_PIN_RESET

#define BUZZER_PIN				PC8_Pin
#define BUZZER_PORT				PC8_GPIO_Port
#define BUZZER_ON				GPIO_PIN_SET
#define BUZZER_OFF				GPIO_PIN_RESET


#endif/* STM32 Nucleo Boards - 144 Pins */

#if ((BOARD == NUCLEO_F429ZI) || (BOARD == NUCLEO_F439ZI) || (BOARD == NUCLEO_F413ZH))

#define BTN_A_PIN		USER_Btn_Pin
#define BTN_A_PORT		USER_Btn_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_SET
#define BTN_A_HOVER		GPIO_PIN_RESET

#define LED_CERRADO_PIN		LD1_Pin
#define LED_CERRADO_PORT		LD1_GPIO_Port
#define LED_CERRADO_ON		GPIO_PIN_SET
#define LED_CERRADO_OFF		GPIO_PIN_RESET

#endif

/* STM32 Discovery Kits */
#if (BOARD == STM32F429I_DISCO1)

#define BTN_A_PIN		B1_Pin
#define BTN_A_PORT		B1_GPIO_Port
#define BTN_A_PRESSED	GPIO_PIN_SET
#define BTN_A_HOVER		GPIO_PIN_RESET

#define LED_CERRADO_PIN		LD3_Pin
#define LED_CERRADO_PORT	LD3_GPIO_Port
#define LED_CERRADO_ON		GPIO_PIN_SET
#define LED_CERRADO_OFF		GPIO_PIN_RESET

#endif

/********************** typedef **********************************************/

/********************** external data declaration ****************************/

/********************** external functions declaration ***********************/

/********************** End of CPP guard *************************************/
#ifdef __cplusplus
}
#endif

#endif /* BOARD_INC_BOARD_H_ */

/********************** end of file ******************************************/
