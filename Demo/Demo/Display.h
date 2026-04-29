#ifndef _DISPLAY_H_
#define _DISPLAY_H_

#define SFan_on			{Dis_SFan = 1;}		//RA0
#define SSun_on			{Dis_SSun = 1;}	//RA1
#define SCircle_on		{Dis_SCircle = 1;}	//RB4
#define SH_on			{Dis_SH = 1;}	//RB5
#define SAD_on			{Dis_SAD = 1;}   //RA2
#define SWS_on			{Dis_SWS = 1;}   //RB4

#define SFan_off		{Dis_SFan = 0;}		
#define SSun_off		{Dis_SSun = 0;}	
#define SCircle_off		{Dis_SCircle = 0;}	
#define SH_off			{Dis_SH = 0;}	
#define SAD_off			{Dis_SAD = 0;}
#define SWS_off			{Dis_SWS = 0;}

//数码管COM口对应IO
#define  SMG_C1  RA0
#define  SMG_C2  RA1
#define  SMG_C3  RA2
#define  SMG_C4  RB4
#define  SMG_C5  RB5

//数码管SEG段对应IO
#define  SA1   RA1
#define  SB1   RA2
#define  SC1   RB4
#define  SD1   RB5

#define  SA2   RA0
#define  SB2   RA2
#define  SC2   RB4
#define  SD2   RB5

#define  SA3   RA0
#define  SB3   RA1
#define  SC3   RB4
#define  SD3   RB5

#define  SE1   RA0
#define  SF1   RA1
#define  SG1   RA2
#define  SE2   RB5

#define  SF2   RA0
#define  SG2   RA1
#define  SE3   RA2
#define  SF3   RB4

//定义SEG段在变量中0-7位		 
//  SIGDP SIGG SIGF SIGE SIGE SIGD SIGC SIGB SIGA 
//0B  1     1    1    1    1    1    1    1    1  对应二进数位置
#define  SIGA  0x01
#define  SIGB  0x02
#define  SIGC  0x04
#define  SIGD  0x08
#define  SIGE  0x10
#define  SIGF  0x20
#define  SIGG  0x40

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
#define		SMG_C		SIGG|SIGD|SIGE                  	
#define		SMG_D		SIGB|SIGC|SIGD|SIGE|SIGG              	
#define		SMG_E		SIGA|SIGD|SIGE|SIGF|SIGG              	
#define		SMG_F		SIGA|SIGE|SIGF|SIGG 
#define		SMG_D1		SIGA
#define		SMG_D2		SIGB
#define		SMG_D3		SIGD
#define		SMG_D4		SIGE
#define		SMG_D5		SIGC
#define		SMG_D6		SIGD
#define     SMG_00      0x00

//对显示缓冲区变量作外部变量声明
extern volatile unsigned char Dis_SC0;
extern volatile unsigned char Dis_SC1;
extern volatile unsigned char Dis_SC2;
extern volatile unsigned char Dis_SFan = 0;
extern volatile unsigned char Dis_SSun = 0;
extern volatile unsigned char Dis_SCircle = 0;
extern volatile unsigned char Dis_SH = 0;
extern volatile unsigned char Dis_SAD = 0;
extern volatile unsigned char Dis_SWS = 0;


//相关函数声明 
void DisplayData(unsigned char data);//数码管SEG段显示函数
void DisplayData1(unsigned char data);//数码管SEG段显示函数
void DisplayData2();//数码管SEG段显示函数
void DisplayFunction(void);
void DisplayTurn(void);
void DisplayComx(unsigned char x);//数码管COM位扫描函数
void Display();//动态扫描函数
void InitLed();//IO初始化

#endif
