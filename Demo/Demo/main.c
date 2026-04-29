#include<cms.h>
#include"Display.h"

unsigned char tcount=0;

void interrupt ISR()
{
	if(TMR2IF)
	{
		TMR2IF=0;
		tcount++;
		Display();    //显示相关动态扫描函数，需显示时调用
	}
}

void main()
{
	asm("clrwdt");
	OSCCON=0B01110001;
	
	PR2=62;        //因为循环增加次数，所以时间缩短一半
	TMR2IF=0;
	TMR2IE=1;
	T2CON=0B00000101;
	
	InitLed();
	
	INTCON=0B11000000;
	Dis_SC0=1;        //对3位数码管和4个功能对应显示缓冲区赋值
	Dis_SC1=6;
	SFan_off;					
	SSun_off;			
	SCircle_on;		
	SH_on;		
	SAD_on;			
	SWS_on;
	
	while(1)
	{
		asm("clrwdt");
		if(tcount>=32)
		{
			tcount=0;
			
		}
	}
}