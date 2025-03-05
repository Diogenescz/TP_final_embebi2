/*
 * task_interface.h
 *
 *  Created on: Nov 27, 2024
 *      Author: ---
 */

#ifndef INC_TASK_INTERFACE_H_
#define INC_TASK_INTERFACE_H_


#ifdef __cplusplus
extern "C" {
#endif

typedef enum {SENSOR_MICRO,
			SENSOR_AMBIENTE} task_temperatura_id_t;


typedef struct valor_sensor{
    float temperatura;
    bool flag;
} valor_sensor_t;

extern valor_sensor_t task_valor_sensor_list[];

//Inicializo en cero y el flag en false
void cargar_valor_sensor(task_temperatura_id_t ID, uint16_t valor);
float get_valor_sensor(task_temperatura_id_t ID);


extern void task_adc_init(void *parameters);
extern void task_adc_update(void *parameters);


#ifdef __cplusplus
}
#endif

#endif /* INC_TASK_INTERFACE_H_ */
