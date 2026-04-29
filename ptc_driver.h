#ifndef _PTC_DRIVER_H_
#define _PTC_DRIVER_H_

#include <cms.h>

// ----------------------------------------------------------------------------
// 配置参数
// ----------------------------------------------------------------------------

// PWM 频率配置 (基于 16MHz Fosc, Timer2 预分频 1:4)
// PR2 = 99  => 周期 = (99+1)*4*(1/16M) = 25us * 4 = 100us => 10kHz
#define PTC_PWM_PR2_VALUE       99

// 软启动每一步的延时 (毫秒)
// 总启动时间 = 100 * SOFT_START_STEP_DELAY
// 若设为 20，则 100 * 20 = 2000ms = 2s
#define SOFT_START_STEP_DELAY   20

// ----------------------------------------------------------------------------
// 接口函数
// ----------------------------------------------------------------------------

/**
 * @brief 初始化 PTC 驱动 (配置 RA4/CCP2 和 Timer2)
 * @note  这会将 Timer2 的周期从 125us 修改为 100us，影响全局时基！
 */
void PTC_Init(void);

/**
 * @brief 设置 PTC 加热功率 (占空比)
 * @param dutyPercent 0-100 的百分比值
 */
void PTC_SetDuty(unsigned char dutyPercent);

/**
 * @brief 软启动 PTC
 * @note  阻塞式函数，耗时约 2秒
 */
void PTC_SoftStart(void);

#endif // _PTC_DRIVER_H_
