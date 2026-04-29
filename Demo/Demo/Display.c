#include<cms.h>
#include"Display.h"

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
volatile unsigned char Dis_SC0;  //3位数码管和四个功能对应显示缓冲区变量
volatile unsigned char Dis_SC1;
volatile unsigned char Dis_SFan;
volatile unsigned char Dis_SSun;
volatile unsigned char Dis_SCircle;
volatile unsigned char Dis_SH;
volatile unsigned char Dis_SAD;
volatile unsigned char Dis_SWS;

//显示的字形数组，如果需要显示表中没有的形状，可以自己在数组后面添加
const unsigned char SegTab[]={
	SMG_0,     //0x3F  
	SMG_1,     //0x06
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
	SMG_C,
	SMG_D,
	SMG_E,
	SMG_F,
	SMG_00,   //16
};

//相关IO口初始化为输出
void InitLed()
{
	//相应的位与0，即设置成0，与1不会修改原来的值。
	TRISA&=0B11111111;        //设置RA0-2为输出
	TRISB&=0B11111111;        //设置RC0-5为输出

}

/**********************************************
函数名称：DisplayData（共阴）
函数功能：数码管SEG段显示处理函数。
**********************************************/
void DisplayData(unsigned char data)
{
	//共阴，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(data&SIGA)
	{
		TRISA1=0;
		SA1=1;
	}
	else
	{
		TRISA1=1;

	}
	if(data&SIGB)
	{
		TRISA2=0;
		SB1=1;
	}
	else
	{
		TRISA2=1;

	}
	if(data&SIGC)
	{
		TRISB4=0;
		SC1=1;
	}else
	{
		TRISB4=1;

	}
	if(data&SIGD)
	{
		TRISB5=0;
		SD1=1;
	}else
	{
		TRISB5=1;

	}
}

void DisplayData1(unsigned char data)
{
	//共阴，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(data&SIGA)
	{
		TRISA0=0;
		SA2=1;
	}else
	{
		TRISA0=1;
	}
	if(data&SIGB)
	{
		TRISA2=0;
		SB2=1;
	}else
	{
		TRISA2=1;
	}
	if(data&SIGC)
	{
		TRISB4=0;
		SC2=1;
	}else
	{
		TRISB4=1;
	}
	if(data&SIGD)
	{
		TRISB5=0;
		SD2=1;
	}else
	{
		TRISB5=1;

	}
}

void DisplayData2()
{
	//共阴，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(SegTab[Dis_SC0]&SIGE)
	{
		TRISA0=0;
		SE1=1;
	}else
	{
		TRISA0=1;

	}
	if(SegTab[Dis_SC0]&SIGF)
	{
		TRISA1=0;
		SF1=1;
	}else
	{
		TRISA1=1;

	}
	if(SegTab[Dis_SC0]&SIGG)
	{
		TRISA2=0;
		SG1=1;
	}else
	{
		TRISA2=1;

	}
	if(SegTab[Dis_SC1]&SIGE)
	{
		TRISB5=0;
		SE2=1;
	}else
	{
		TRISB5=1;

	}
}



/**********************************************
函数名称：DisplayFunction（共阴）
函数功能：数码管SEG段显示功能处理函数。
**********************************************/
void DisplayFunction(void)
{
	//共阴，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(Dis_SFan)
	{
		TRISA0=0;
		SA3=1;
	}else
	{
		TRISA0=1;

	}
	if(Dis_SSun)
	{
		TRISA1=0;
		SB3=1;
	}else
	{
		TRISA1=1;

	}
	if(Dis_SCircle)
	{
		TRISB4=0;
		SC3=1;
	}else
	{
		TRISB4=1;

	}
	if(Dis_SH)
	{
		TRISB5=0;
		SD3=1;
	}else
	{
		TRISB5=1;

	}
}

void DisplayTurn(void)
{
	//共阴，根据入口参数SegTab[]，判断相应位为1，点亮对应SEG段
	if(SegTab[Dis_SC1]&SIGF)
	{
		TRISA0=0;
		SF2=1;
	}else
	{
		TRISA0=1;

	}
	if(SegTab[Dis_SC1]&SIGG)
	{
		TRISA1=0;
		SG2=1;
	}else
	{
		TRISA1=1;

	}
	if(Dis_SAD)
	{
		TRISA2=0;
		SE3=1;
	}else
	{
		TRISA2=1;

	}
	if(Dis_SWS)
	{
		TRISB4=0;
		SF3=1;
	}else
	{
		TRISB4=1;

	}
}


/***********************************************************
函数名称：DisplayComX
函数功能：数码管COM位扫描函数
备    注：循环扫描数码管COM
***********************************************************/
void DisplayComx(unsigned char x)
{
	asm("clrwdt");
	TRISA&=0B11111111;        //设置RA0-2为输出
	TRISB&=0B11111111;        //设置RC0-5为输出
	RA0 = 1; RA1 = 1; RA2 = 1; RB4 = 1; RB5 = 1;
	switch(x)
	{
		//如Dis_SC0 = 1 ->SegTab[1] -> 0x3f ->SIGA|SIGB|SIGC|SIGD|SIGE|SIGF
		case 0:DisplayData(SegTab[Dis_SC0]); SMG_C1=0; TRISA0=0;break;
		case 1:DisplayData1(SegTab[Dis_SC1]); SMG_C2=0;TRISA1=0; break;
		case 2:DisplayData2();  SMG_C4=0;TRISB4=0;break;
		case 3:DisplayFunction();  SMG_C3=0;TRISA2=0;break;
		case 4:DisplayTurn();  SMG_C5=0;TRISB5=0;break;
		default:break;
	}
}

/***********************************************
函数名称：Display
函数功能：动态扫描显示程序
************************************************/
//此函数在4MS主循环或125us中断服务程序中调用
void Display()    //循环扫描各个COM口
{
	TRISA&=0B11111111;        //设置RA0-2为输出
	TRISB&=0B11111111;        //设置RC0-5为输出
	
	static unsigned char Dcount;       //COM口轮流显示计数
	// 先关闭所有COM和SEG

    
    // 重置所有SEG段输出为0
    RA0 = 1; RA1 = 1; RA2 = 1; RB4 = 1; RB5 = 1;
	DisplayComx(Dcount);
	if(Dcount++>=5)
		Dcount=0;
	/*
	if(Dcount == 0) {
        // 关闭所有COM
        SMG_C1 = 1; SMG_C2 = 1; SMG_C3 = 1; SMG_C4 = 1; SMG_C5 = 1;


        
        // 只显示第一个数码管
        DisplayData(SegTab[Dis_SC0]);
        SMG_C1 = 0;  // 开启COM1
		TRISA0=0;
    }
    
    if(++Dcount >= 1)  // 只扫描一个数码管
        Dcount = 0;
		*/
}