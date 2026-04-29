void TaskKey(void);

extern bit SystemOn;      // 系统开关
extern bit WorkMode;      // 工作模式 0:Cool 1:Warm
extern bit SwingState;    // 摆头状态
extern unsigned char TimerVal; // 定时时间 (0-9)

void System_Shutdown(void);