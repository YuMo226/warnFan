#include "Display.h"
/*=============================================================
要在数码管显示内容只要对          
Dis_SC0		//左边
Dis_SC1
Dis_SC2
Dis_SC3		//右边
变量进行赋值即可。
如：
Dis_SC0 = 1; 
即可在最左边的数码管上显示数字“1”
为什么能显示“1”？取决于SegTab[]这个数组，Dis_SC0 = 1，相当于
DisplayData(SegTab[1])，最终控制的是相应的SEG段或者LED对应的IO输出0
如果要显示自己定义的内容，可以在SegTab[]后面添加元素，如果添加的元素
在数据下标的“18”的位置，那么要显示时，需要对Dis_SC0 = 18;
即可显示自己定义的内容。
===========================================================*/
volatile unsigned char Dis_SC0;
volatile unsigned char Dis_SC1;
volatile unsigned char Dis_Fan = 0;
volatile unsigned char Dis_Warm = 0;
volatile unsigned char Dis_Unknown = 0;
volatile unsigned char Dis_UpDown = 0;
volatile unsigned char Dis_LeftRight = 0;
volatile unsigned char Dis_H = 0;
//显示的字形数组，如果需要显示表中没有的形状，可以自己在数组后面添加
const unsigned char SegTab[]={
	SMG_0,//0x3F   
	SMG_1,//0x06
	SMG_2,
	SMG_3,
	SMG_4,
	SMG_5,
	SMG_6,
	SMG_7,
	SMG_8,
	SMG_9,
	SMG_A,
	SMG_B,
	SMG_c,
	SMG_D,
	SMG_E,
	SMG_F,
};
//相关IO口初始化为输出
void InitLed()
{
	//相应的位与0，即设置成0，与1不会修改原来的值。
	TRISA &= 0B11111000;     //RA0,RA1,RA2输出
    TRISB &= 0B11001111;     //RB4, RB5输出
	//COM公共端输出0，让数码管和灯灭
	SMG_C1 = 0;
	SMG_C2 = 0;
	SMG_C3 = 0;
	SMG_C4 = 0;
	SMG_C5 = 0;
}

/**********************************************
函数名称：DisplayData（共阴）
函数功能：数码管SEG段显示处理函数。
**********************************************/
void DisplayData1(unsigned char data)
{
	//共阳，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(data&SIGA) {
		TRISA1 = 0;
		SA1 = 1;
	} else {
		TRISA1 = 1;
		SA1 = 0;
	}
	if(data&SIGB) {
		TRISA2 = 0;
		SB1 = 1;
	} else {
		TRISA2 = 1;
		SB1 = 0;
	}
	if(data&SIGC) {
		TRISB4 = 0;
		SC1 = 1;
	} else {
		TRISB4 = 1;
		SC1 = 0;
	}
	if(data&SIGD) {
		TRISB5 = 0;
		SD1 = 1;
	} else {
		TRISB5 = 1;
		SD1 = 0;
	}
}

void DisplayData2(unsigned char data)
{
	//共阳，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(data&SIGA) {
		TRISA0 = 0;
		SA2 = 1;
	} else {
		TRISA0 = 1;
		SA2 = 0;
	}
	if(data&SIGB) {
		TRISA2 = 0;
		SB2 = 1;
	} else {
		TRISA2 = 1;
		SB2 = 0;
	}
	if(data&SIGC) {
		TRISB4 = 0;
		SC2 = 1;
	} else {
		TRISB4 = 1;
		SC2 = 0;
	}
	if(data&SIGD) {
		TRISB5 = 0;
		SD2 = 1;
	} else {
		TRISB5 = 1;
		SD2 = 0;
	}
}

void DisplayData3()
{
	//共阳，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(Dis_Fan) {
		TRISA0 = 0;
		SA3 = 1;
	} else {
		TRISA0 = 1;
		SA3 = 0;
	}
	if(Dis_Warm) {
		TRISA1 = 0;
		SB3 = 1;
	} else {
		TRISA1 = 1;
		SB3 = 0;
	}
	if(Dis_Unknown) {
		TRISB4 = 0;
		SC3 = 1;
	} else {
		TRISB4 = 1;
		SC3 = 0;
	}
	if(Dis_H) {
		TRISB5 = 0;
		SD3 = 1;
	} else {
		TRISB5 = 1;
		SD3 = 0;
	}
}

void DisplayData4()
{
	//共阳，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(SegTab[Dis_SC0]&SIGE) {
		TRISA0 = 0;
		SE1 = 1;
	} else {
		TRISA0 = 1;
		SE1 = 0;
	}
	if(SegTab[Dis_SC0]&SIGF) {
		TRISA1 = 0;
		SF1 = 1;
	} else {
		TRISA1 = 1;
		SF1 = 0;
	}
	if(SegTab[Dis_SC0]&SIGG) {
		TRISA2 = 0;
		SG1 = 1;
	} else {
		TRISA2 = 1;
		SG1 = 0;
	}
	if(SegTab[Dis_SC1]&SIGE) {
		TRISB5 = 0;
		SE2 = 1;
	} else {
		TRISB5 = 1;
		SE2 = 0;
	}
}

void DisplayData5()
{
	//共阳，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(SegTab[Dis_SC1]&SIGF) {
		TRISA0 = 0;
		SF2 = 1;
	} else {
		TRISA0 = 1;
		SF2 = 0;
	}
	if(SegTab[Dis_SC1]&SIGG) {
		TRISA1 = 0;
		SG2 = 1;
	} else {
		TRISA1 = 1;
		SG2 = 0;
	}
	if(Dis_LeftRight) {
		TRISA2 = 0;
		SE3 = 1;
	} else {
		TRISA2 = 1;
		SE3 = 0;
	}
	if(Dis_UpDown) {
		TRISB5 = 0;
		SF3 = 1;
	} else {
		TRISB5 = 1;
		SF3 = 0;
	}
}

/***********************************************************
函数名称：DisplayComX
函数功能：数码管COM位扫描函数
备    注：循环扫描数码管COM
***********************************************************/
void DisplayComx(unsigned char x)
{
	switch(x)
	{//如Dis_SC0 = 1 ->SegTab[1] -> 0x3f ->SIGA|SIGB|SIGC|SIGD|SIGE|SIGF
		case 0:	DisplayData1(SegTab[Dis_SC0]); SMG_C1 = 0; TRISA0 = 0; break;
		case 1:	DisplayData2(SegTab[Dis_SC1]); SMG_C2 = 0; TRISA1 = 0; break;
		case 2:	DisplayData3(); SMG_C3 = 0; TRISA2 = 0; break;
		case 3:	DisplayData4(); SMG_C4 = 0; TRISB4 = 0; break;
		case 4:	DisplayData5(); SMG_C5 = 0; TRISB5 = 0; break;
		default:break;
	}
}
/***********************************************
函数名称：Display
函数功能：动态扫描显示程序
************************************************/
//此函数在4MS主循环或125us中断服务程序中调用
void Display()//循环扫描各个COM口
{
	static unsigned char Dcount;//COM口轮流显示计数
	TRISA |= 0B00000111;
	TRISB |= 0B00110000;
	RA0 = 0;
	RA1 = 0;
	RA2 = 0;
	RB4 = 0;
	RB5 = 0;
	DisplayComx(Dcount);//轮流显示每位数码管
	if(++Dcount >= 5)
		Dcount = 0;
}
