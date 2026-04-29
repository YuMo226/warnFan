#include "Task.h"
#include "Key.h"
#include "Display.h"
#include "PWM.h"
#include "StepMotor.h"
#include "FallDown.h"
#include "ptc_driver.h"

bit SystemOn = 0;
bit WorkMode = 0;   // 0:Cool, 1:Warm
bit SwingState = 0;
unsigned char TimerVal = 0;

// 关机执行函数
void System_Shutdown(void) {
    SystemOn = 0;
    
    // 关机：全部复位
    FanOFF;
    WarmOFF;
    LeftRightOFF;
    HOFF;
    UnknownOFF;
    UpDownOFF;
    
    PTC_SetDuty(0); 
    Dis_SC1 = 17;  // 灭
    Dis_SC0 = 17;
    
    SwingState = 0;
    State = 0;     // 停止电机
}

void TaskKey(void) {
    static unsigned char lastKeyValue = 0;

    // 边沿检测
    if (keyValue != 0 && lastKeyValue == 0) {
        
        switch (keyValue) {
        case 4: // KEY4: 电源开关
            if (!SystemOn) { // 如果当前是关机，则开机
                SystemOn = 1;
                // 开机初始化
                WorkMode = 0;
                TimerVal = 0;
                
                SwingState = 0;
                State = 0; // 确保电机停止
                
                // 执行动作
                FanON;
                WarmOFF;
                LeftRightOFF;
                HOFF;
                
                PTC_SetDuty(0);
                Dis_SC1 = 0; 
                Dis_SC0 = 0;

            } else {
                // 关机
                System_Shutdown();
            }
            break;

        case 2: // KEY2: 模式切换
            if (SystemOn) {
                WorkMode = !WorkMode;
                if (WorkMode) {
                    WarmON;
                    PTC_SetDuty(100); 
                } else {
                    WarmOFF;
                    PTC_SetDuty(0);
                }
            }
            break;

        case 3: // KEY3: 摆头
            if (SystemOn) {
                SwingState = !SwingState;
                State = SwingState; // 同步驱动状态
                if (SwingState) {
                    LeftRightON;
                } else {
                    LeftRightOFF;
                }
            }
            break;

        case 1: // KEY1: 定时
            if (SystemOn) {
                TimerVal++;
                if (TimerVal > 9) TimerVal = 0;
                
                if (TimerVal > 0) {
                    HON;
                    Dis_SC1 = 0; 
                    Dis_SC0 = TimerVal; 
                } else {
                    HOFF;
                    Dis_SC1 = 0;
                    Dis_SC0 = 0;
                }
            }
            break;
            
        default:
            break;
        }
    }
    
    lastKeyValue = keyValue;
}