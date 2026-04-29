#ifndef _STEPMOTOR_H_
#define _STEPMOTOR_H_

#define Left 	0
#define Right	1

//摆头范围
#define Small   256
#define Middle  512
#define Big     1024
#define Max     2048

extern unsigned char Dir;					//方向
extern unsigned char State;				    //状态

void InitStepMotor(void);           		// 步进电机IO初始化
void StepMotor(unsigned char stepIndex, unsigned char Dir); 	// 步进电机转动一步
void SetStep(unsigned char step); 			// 直接设置步进电机线圈状态
void StepMotorRun();
void StepMotorControl();

#endif
