#include <cms.h>
#include "FallDown.h"
#include "Display.h"

unsigned char FallDownState = 0; //放倒开关状态变量
//初始化放倒开关
void InitFallDown() {
    OPTION_REG &= 0B01111111; //由端口的各个锁存值使能 PORTB 上拉
    WPUB6 = 1; //使能上拉电阻
    TRISB6 = 1; //设置RB6为输入
}


//读取放倒开关状态
void ReadFallDown() {
    if(RB6 == 0) { //放倒开关按下时RB6为低电平
        FallDownState = 1; //放倒开关被触发
    } else {
        FallDownState = 0; //放倒开关未被触发
    }
}