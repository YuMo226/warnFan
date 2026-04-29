#include <cms.h>
#include "Display.h"
#include "Key.h"
#include "Task.h"
#include "PWM.h"
#include "StepMotor.h"
#include "FallDown.h"
#include "FallDown.h"
#include "Touch_Kscan_Library.h"
#include "ptc_driver.h"

unsigned char tcount = 0;	//主循环计时变量

/***********************************************
函数功能：中断服务
************************************************/
void interrupt ISR() {
	if(TMR2IF) {
		TMR2IF = 0;			//清定时器2匹配中断标志位
		tcount++;			//每125us累加计时
		Display();
		PWM_Ctr_Motor();			//PWM控制函数，每125us调用一次
		PWM_Ctr_PTC();			//PWM控制函数，每125us调用一次
		__CMS_GetTouchKeyValue();	//触摸按键采样函数
		__CMS_CheckTouchKey();	//触摸按键扫描主过程函数
	}
}

void InitTimer2(void) {
	PR2 = 124;				//赋初值	
	TMR2IF = 0;				//清中断标志位
	TMR2IE = 1;				//允许Timer2中断
	T2CON = 0x05;			//开启Timer2，预分频值为4，后分频比为1:1
}

int main() {
    asm("nop");	 			//空指令
	asm("clrwdt");			//喂狗

	OSCCON = 0x71;			//16MHZ,内部振荡器用作系统时钟
    INTCON = 0xC0;			//允许所有未被屏蔽的中断、外设中断

    InitTimer2();
    // InitLed();

	InitKey();
	InitMotor();			//初始化风扇PWM
	InitStepMotor();		//初始化步进电机
	InitPTC();				//初始化PTC PWM (旧接口，可能需要保留或注释)
    PTC_Init();             //初始化新的PTC驱动 (10kHz Timer2)
	InitFallDown();         //初始化放倒开关

    Dis_SC0 = 0;
    Dis_SC1 = 1;
	
	
    // DisplayComx(1);
    Display_Init();

	
    // 初始状态
    SystemOn = 0;
    
    while(1) {
        asm("clrwdt");
        if (tcount >= 40) {	// 40 * 100us = 4ms (系统时基变为10kHz)
			tcount = 0;
            Display_UpdateData(); // 更新显示数据
            
            // 1秒时基处理
            static unsigned char sec_cnt = 0;
            sec_cnt++;
            if (sec_cnt >= 250) { // 250 * 4ms = 1000ms = 1s
                sec_cnt = 0;
                
                // 定时关机逻辑
                if (SystemOn && TimerVal > 0) {
                     // 简单处理：这里演示的是每秒减？通常是每小时减。
                     // 需求是 0-9 小时。
                     // 为了演示效果，我们可以把小时当分钟或者秒来跑，但为了真实性应该包含分钟变量。
                     // 简化版：假设 TimerVal 代表小时。我们需要 3600 秒才减 1。
                     // 或者，我们可以增加一个分钟变量，或者 min_cnt.
                     
                     static unsigned int minute_cnt = 0; 
                     minute_cnt++;
                     if (minute_cnt >= 3600) { // 3600s = 1h
                         minute_cnt = 0;
                         TimerVal--;
                         if (TimerVal == 0) {
                             // 时间到，关机
                             System_Shutdown();
                         } else {
                             // 更新显示
                             Dis_SC0 = TimerVal;
                         }
                     }
                }
            }

			Kscan();				//键处理函数
			TaskKey();				//任务处理函数
			// StepMotorControl();		// 由 TaskKey 通过 State 变量控制，main loop 需要调用吗？
			// 修正：StepMotorControl 必须被调用才能让电机动。TaskKey 只是改变了 State。
			// 所以 StepMotorControl 必须保留在此，周期性执行步进。
			StepMotorControl();
			
			ReadFallDown();         //读取放倒开关状态
			// 防倾倒保护
			if (SystemOn && FallDownState) {
			    System_Shutdown();
			}
		}
		
    }
}