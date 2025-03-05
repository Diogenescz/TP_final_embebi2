/*
 * task_interface.c
 *
 *  Created on: Nov 27, 2024
 *      Author: ---
 */
#include <stdbool.h>
#include <stdint.h>
#include "task_temperature_interface.h"




void cargar_valor_sensor(task_temperatura_id_t ID,uint16_t valor){
	if(valor != task_valor_sensor_list[ID].temperatura){
		 task_valor_sensor_list[ID].flag = true;
		 task_valor_sensor_list[ID].temperatura = valor;
	}

}

float get_valor_sensor(task_temperatura_id_t ID){
	valor_sensor_t sensor = task_valor_sensor_list[ID];
	sensor.flag = false;
	return sensor.temperatura;
}
