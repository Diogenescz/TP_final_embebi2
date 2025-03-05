#ifndef INC_DISPLAY_H_
#define INC_DISPLAY_H_

/********************** CPP guard ********************************************/
#ifdef __cplusplus
extern "C" {
#endif

/********************** inclusions *******************************************/
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include "task_system_attribute.h"
/********************** macros ***********************************************/

/********************** typedef **********************************************/

/********************** external data declaration ****************************/
typedef enum {
     DISPLAY_CONNECTION_GPIO_4BITS,
     DISPLAY_CONNECTION_GPIO_8BITS,
     DISPLAY_CONNECTION_I2C_PCF8574_IO_EXPANDER,
} displayConnection_t;

typedef struct {
   displayConnection_t connection;
} display_t;

/********************** external functions declaration ***********************/
void displayInit( displayConnection_t connection );

void displayCharPositionWrite( uint8_t charPositionX, uint8_t charPositionY );

void displayStringWrite( const char * str );

void displayUpdateLinea1(task_system_dta_t * p_task_system_dta, task_menu_parameters_t * p_task_menu_parameters);

void ActualizarL2(int txt_char_pos, task_menu_parameters_t * p_task_menu_parameters);

void EscribirLinea2(task_menu_parameters_t * p_task_menu_parameters);
#endif /* INC_DISPLAY_H_ */
