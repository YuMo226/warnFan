#ifndef	_DISPLAY_H_
#define	_DISPLAY_H_
#include <cms.h>

//功能灯
#define   FanON         {Dis_Fan = 1;}
#define   FanOFF        {Dis_Fan = 0;}
#define   FanToggle     {Dis_Fan = !Dis_Fan;}
#define   WarmON        {Dis_Warm = 1;}
#define   WarmOFF       {Dis_Warm = 0;}
#define   WarmToggle    {Dis_Warm = !Dis_Warm;}
#define   UnknownON     {Dis_Unknown = 1;}
#define   UnknownOFF    {Dis_Unknown = 0;}
#define   UnknownToggle {Dis_Unknown = !Dis_Unknown;}
#define   UpDownON      {Dis_UpDown = 1;}
#define   UpDownOFF     {Dis_UpDown = 0;}
#define   UpDownToggle  {Dis_UpDown = !Dis_UpDown;}
#define   LeftRightON   {Dis_LeftRight = 1;}
#define   LeftRightOFF  {Dis_LeftRight = 0;}
#define   LeftRightToggle {Dis_LeftRight = !Dis_LeftRight;}
#define   HON           {Dis_H = 1;}
#define   HOFF          {Dis_H = 0;}
#define   HToggle       {Dis_H = !Dis_H;}

//数码管COM口对应IO
#define		SMG_C1	RA0
#define		SMG_C2	RA1
#define		SMG_C3	RA2
#define		SMG_C4	RB4
#define   SMG_C5	RB5

//数码管SEG段对应IO
#define		SA1		RA1
#define		SA2 	RA0
#define		SA3	  RA0
#define		SB1 	RA2
#define		SB2	  RA2
#define   SB3		RA1
#define		SC1		RB4
#define		SC2		RB4
#define		SC3		RB4
#define		SD1		RB5
#define		SD2		RB5
#define		SD3		RB5
#define		SE1		RA0
#define		SE2		RB5
#define		SE3		RA2
#define		SF1		RA1
#define		SF2		RA0
#define		SF3		RB4
#define		SG1		RA2
#define		SG2		RA1

//定义SEG段在变量中0-7位		 
//  SIGDP SIGG SIGF SIGE SIGE SIGD SIGC SIGB SIGA 
//0B  1     1    1    1    1    1    1    1    1  对应二进数位置
#define    SIGA      0X01 	//0B0000 0001
#define    SIGB      0X02 	//0B0000 0010
#define    SIGC      0X04	//0B0000 0100
#define    SIGD      0X08	//0B0000 1000
#define    SIGE      0X10	//0B0001 0000
#define    SIGF      0X20	//0B0010 0000
#define    SIGG      0X40	//0B0100 0000
#define    SIGDP     0X80	//0B1000 0000

/* 
  —A—
F|   |B
  —G—
E|   |C
  —D— .dp
*/
//数码管显示数字或字母的段码表
#define		SMG_0		SIGA|SIGB|SIGC|SIGD|SIGE|SIGF   //0x3F      	
#define		SMG_1		SIGB|SIGC                             	
#define		SMG_2		SIGA|SIGB|SIGD|SIGE|SIGG              	
#define		SMG_3		SIGA|SIGB|SIGC|SIGD|SIGG              	
#define		SMG_4		SIGB|SIGC|SIGF|SIGG                   	
#define		SMG_5		SIGA|SIGC|SIGD|SIGF|SIGG              	
#define		SMG_6		SIGA|SIGC|SIGD|SIGE|SIGF|SIGG         	
#define		SMG_7		SIGA|SIGB|SIGC                        	
#define		SMG_8		SIGA|SIGB|SIGC|SIGD|SIGE|SIGF|SIGG      	
#define		SMG_9		SIGA|SIGB|SIGC|SIGD|SIGF|SIGG         	
#define		SMG_A		SIGA|SIGB|SIGC|SIGE|SIGF|SIGG         	
#define		SMG_B		SIGC|SIGD|SIGE|SIGF|SIGG              	
#define		SMG_c		SIGG|SIGD|SIGE                  	
#define		SMG_D		SIGB|SIGC|SIGD|SIGE|SIGG              	
#define		SMG_E		SIGA|SIGD|SIGE|SIGF|SIGG              	
#define		SMG_F		SIGA|SIGE|SIGF|SIGG 

//对显示缓冲区变量作外部变量声明
extern volatile unsigned char Dis_SC0;
extern volatile unsigned char Dis_SC1;
extern volatile unsigned char Dis_Fan;
extern volatile unsigned char Dis_Warm;
extern volatile unsigned char Dis_Unknown;
extern volatile unsigned char Dis_UpDown;
extern volatile unsigned char Dis_LeftRight;
extern volatile unsigned char Dis_H;
//相关函数声明 
void DisplayData(unsigned char data);//数码管SEG段显示函数
void DisplayComx(unsigned char x);//数码管COM位扫描函数
void Display();//动态扫描函数
void InitLed();//IO初始化

#endif