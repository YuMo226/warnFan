#include "ptc_driver.h"

// 简单的延时函数，用于软启动
// 假设 Fosc=16MHz, 指令周期 0.25us (如果是1T) 或 1us (如果是4T)
// CMS79F726 通常是 1T ?? 查阅习惯，通常这里的 ms 延时用粗略循环实现
static void DelayMs(unsigned int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++) {
        for (j = 0; j < 1000; j++) {
            asm("nop");
            asm("clrwdt"); // 喂狗防止复位
        }
    }
}

void PTC_Init(void) {
    // 1. 配置 RA4 为输出
    TRISA &= ~(1 << 4); // RA4 Output
    
    // 2. 配置 Timer2 为 10kHz
    // PR2 = 99
    PR2 = PTC_PWM_PR2_VALUE;
    
    // T2CON 配置
    // bit 6-3: TOUTPS (后分频), 设为 1:1 -> 0000
    // bit 2:   TMR2ON (使能), 设为 1
    // bit 1-0: T2CKPS (预分频), 设为 1:4 -> 01
    // 0000 0101 = 0x05
    T2CON = 0x05; 
    
    // 3. 配置 CCP2 为 PWM 模式
    // CCP2CON:
    // bit 5-4: CCP2X, CCP2Y (占空比低2位)
    // bit 3-0: CCP2M (模式), PWM模式 = 11xx (这里用 1100)
    CCP2CON = 0x0C; // PWM mode
    
    // 初始占空比 0
    CCPR2L = 0;
    
    // 确保 Timer2 中断开启 (如果之前在 main 中已经开了，这里再次确认)
    TMR2IE = 1;
}

void PTC_SetDuty(unsigned char dutyPercent) {
    unsigned int dutyRaw;
    
    if (dutyPercent > 100) {
        dutyPercent = 100;
    }
    
    // 计算原始 PWM 值
    // 最大计数值 = (PR2 + 1) * 4 = 100 * 4 = 400
    // dutyRaw = (dutyPercent * 400) / 100 = dutyPercent * 4
    dutyRaw = (unsigned int)dutyPercent * 4;
    
    // 写入寄存器
    // CCPR2L 存高8位: dutyRaw >> 2
    CCPR2L = (unsigned char)(dutyRaw >> 2);
    
    // CCP2CON<5:4> 存低2位: (dutyRaw & 0x03) << 4
    // 先读出 CCP2CON，清除 bit5-4，再写入
    CCP2CON = (CCP2CON & 0xCF) | ((dutyRaw & 0x03) << 4);
}

void PTC_SoftStart(void) {
    unsigned char i;
    
    // 确保从 0 开始
    PTC_SetDuty(0);
    
    // 线性增加到 100%
    for (i = 0; i <= 100; i++) {
        PTC_SetDuty(i);
        DelayMs(SOFT_START_STEP_DELAY);
    }
}
