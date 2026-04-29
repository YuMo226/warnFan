#include "Key.h"
#include "Touch_Kscan_Library.h"
#include "Display.h"
#include <cms.h>

unsigned char keyValue = 0;
unsigned char touchFlag = 0;

void InitKey(void) {
    TRISB |= 0B00001111; // 设置RB0-RB3为输入
}

/***********************************************************
键处理函数
***********************************************************/
void Kscan(void)
{
	static unsigned int KeyOldFlag = 0;
	unsigned int KeyOnOutput = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	if(KeyOnOutput)
	{
		if(KeyOnOutput != KeyOldFlag)
		{
			KeyOldFlag = KeyOnOutput;			//有检测到按键
			if(0x1 & KeyOnOutput){keyValue = 1;}
			else if(0x2 & KeyOnOutput){keyValue = 2;}
			else if(0x4 & KeyOnOutput){keyValue = 3;}
			else if(0x8 & KeyOnOutput){keyValue = 4;}
		}
	}
	else
	{
		KeyOldFlag = 0;
        keyValue = 0;
	}
}