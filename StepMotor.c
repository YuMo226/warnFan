#include <cms.h>
#include "StepMotor.h"

unsigned int i = 0;
unsigned char Dir = 0;	//0->逆时针, 1->顺时针
unsigned int StepCount = 0;	//计算步数
unsigned int stepMax = Max;	    //最大步数
unsigned char State = 0;    //0->关闭, 1->启动

void Delay_nms (unsigned int inittempl);

// 步进表，逆时针
const unsigned char StepTable_L[4] = {
    0B10000000, // A:RB7=1
    0B10000000, // B:RA7=1
    0B01000000, // C:RA6=1
    0B00100000  // D:RA5=1
};

// 步进表，顺时针
const unsigned char StepTable_R[4] = {
    0B00100000, // D:RA5=1
    0B01000000, // C:RA6=1
    0B10000000, // B:RA7=1
    0B10000000  // A:RB7=1
};

// 步进电机相关IO初始化
void InitStepMotor(void) {
    // 初始化为输出
    TRISA &= ~((1<<5)|(1<<6)|(1<<7));
    TRISB &= ~(1<<7);
    //上电时关闭所有线圈
    PORTA &= ~((1<<5)|(1<<6)|(1<<7));
    PORTB &= ~(1<<7);
}

// 让RB6、RB5、RB3、RB2输出对应状态
void SetStep(unsigned char step) {
    // 清零RB6、RB5、RB3、RB2
    PORTA &= ~((1<<5)|(1<<6)|(1<<7));
    PORTB &= ~(1<<7);
    // 设置RB6、RB5、RB3、RB2
    PORTA |= (step & ((1<<7)|(1<<6)|(1<<5)));
    PORTB |= (step & (1<<7));
}

// 步进电机转动一步
void StepMotor(unsigned char stepIndex, unsigned char Dir) {
    switch (Dir) {
        case Left:
            SetStep(StepTable_L[stepIndex % 4]);
            break;
        case Right:
            SetStep(StepTable_R[stepIndex % 4]);
            break;
    }
}

// 切换方向
void SwitchDir() {
    StepCount++;
    if(StepCount >= stepMax) {
        StepCount = 0;
        Dir = !Dir;
    }
}

// 步进电机运行
void StepMotorRun() {
    StepMotor(i++, Dir);
    if(i >= 4) i = 0;
    SwitchDir();
}

// 步进电机控制 
void StepMotorControl() {
    if(State == 1) {
        StepMotorRun();
    }
    else {
        PORTA &= ~((1<<5)|(1<<6)|(1<<7));
        PORTB &= ~(1<<7);
    }
}