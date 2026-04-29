#ifndef _PWM_H__
#define _PWM_H__

#include <cms.h>

#define PWM_OUT_PIN1	RA3
#define PWM_OUT_PIN2	RA4

#define PWM_HZ	128		//不能超过255

extern unsigned char PWM_Duty_Motor;//占空比
extern unsigned char PWM_Duty_PTC;//占空比

void PWM_Ctr_Motor();//占空比控制函数,125us中断调用
void PWM_Ctr_PTC();//占空比控制函数,125us中断调用
void InitMotor();//风扇PWM相关IO初始化
void InitPTC();//PTC PWM相关IO初始化

#endif