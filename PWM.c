#include "PWM.h"

unsigned char PWM_Duty_Motor = 0;		//PWM占空比控制 0-128 (0=关闭，128=100%)
unsigned char PWM_Count_Motor = 0;	//PWM计数器
unsigned char PWM_Duty_PTC = 0;		//PWM占空比控制 0-128 (0=关闭，128=100%)
unsigned char PWM_Count_PTC = 0;	//PWM计数器

void InitMotor()
{
	//RA3引脚配置为输出，用于风扇PWM控制
	TRISA3 = 0;			//设置RA3为输出
	PWM_OUT_PIN1 = 0;	//初始化风扇，不转
	PWM_Duty_Motor = 0;		//初始占空比为0（关闭）
}

void InitPTC()
{
	//RA4引脚配置为输出，用于PTC PWM控制
	TRISA4 = 0;			//设置RA4为输出
	PWM_OUT_PIN2 = 0;	//初始化PTC，不工作
	PWM_Duty_PTC = 0;		//初始占空比为0（关闭） //不再需要第二个变量
}

//在125us中断中调用,只需要改变PWM_Duty变量的值，即可改变占空比
//PWM频率 = 1/(128 * 125us) = 62.5Hz (约16ms周期)
void PWM_Ctr_Motor()
{
	if(++PWM_Count_Motor >= PWM_HZ)	//控制周期 (128 * 125us = 16ms)
	{
		PWM_Count_Motor = 0;
	}
	if(PWM_Count_Motor < PWM_Duty_Motor)	//PWM输出：在占空比范围内输出高电平
		PWM_OUT_PIN1 = 1;		//风扇转
	else
		PWM_OUT_PIN1 = 0;		//风扇不转
}

void PWM_Ctr_PTC()
{
	if(++PWM_Count_PTC >= PWM_HZ)	//控制周期 (128 * 125us = 16ms)
	{
		PWM_Count_PTC = 0;
	}
	if(PWM_Count_PTC < PWM_Duty_PTC)	//PWM输出：在占空比范围内输出高电平
		PWM_OUT_PIN2 = 1;		//PTC工作
	else
		PWM_OUT_PIN2 = 0;		//PTC不工作
}

