opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F726
opt include "C:\CMS_IDE_V2.03.21\data\include\79f726.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
	FNCALL	_main,_Display_Init
	FNCALL	_main,_Display_UpdateData
	FNCALL	_main,_InitFallDown
	FNCALL	_main,_InitKey
	FNCALL	_main,_InitMotor
	FNCALL	_main,_InitPTC
	FNCALL	_main,_InitStepMotor
	FNCALL	_main,_InitTimer2
	FNCALL	_main,_Kscan
	FNCALL	_main,_PTC_Init
	FNCALL	_main,_ReadFallDown
	FNCALL	_main,_StepMotorControl
	FNCALL	_main,_System_Shutdown
	FNCALL	_main,_TaskKey
	FNCALL	_TaskKey,_Display_SetAux
	FNCALL	_TaskKey,_PTC_SetDuty
	FNCALL	_TaskKey,_System_Shutdown
	FNCALL	_System_Shutdown,_Display_SetAux
	FNCALL	_System_Shutdown,_PTC_SetDuty
	FNCALL	_Display_SetAux,_Display_SetSegment
	FNCALL	_StepMotorControl,_StepMotorRun
	FNCALL	_StepMotorRun,_StepMotor
	FNCALL	_StepMotorRun,_SwitchDir
	FNCALL	_StepMotor,_SetStep
	FNCALL	_Display_UpdateData,_Display_SetDigit
	FNCALL	_Display_SetDigit,_Display_SetSegment
	FNCALL	_Display_Init,_Display_Clear
	FNCALL	_Display_Init,_SetPin
	FNROOT	_main
	FNCALL	_ISR,_Display
	FNCALL	_ISR,_PWM_Ctr_Motor
	FNCALL	_ISR,_PWM_Ctr_PTC
	FNCALL	_ISR,___CMS_CheckTouchKey
	FNCALL	_ISR,___CMS_GetTouchKeyValue
	FNCALL	___CMS_CheckTouchKey,___CMS_CheckKeyOldValue
	FNCALL	___CMS_CheckTouchKey,___CMS_CheckOnceResult
	FNCALL	___CMS_CheckTouchKey,___CMS_CheckValidTime
	FNCALL	___CMS_CheckTouchKey,___CMS_CurAdjust
	FNCALL	___CMS_CheckTouchKey,___CMS_KeyDatIIR
	FNCALL	___CMS_CheckTouchKey,___CMS_KeyModeSet
	FNCALL	___CMS_CheckTouchKey,___CMS_KeyStopClear
	FNCALL	___CMS_CheckTouchKey,___CMS_Key_UNNOL_Check
	FNCALL	___CMS_CheckTouchKey,___CMS_NewRAMClr
	FNCALL	___CMS_CheckTouchKey,___GET_32M_FREDAT
	FNCALL	___CMS_Key_UNNOL_Check,___CMS_KeyModeSet
	FNCALL	___CMS_KeyStopClear,___CMS_KeyClearOne
	FNCALL	___CMS_CurAdjust,___CMS_CurAdjMode
	FNCALL	___CMS_CurAdjust,___CMS_KeyModeSet
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyClearOne
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyHaveDown
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyIsIn
	FNCALL	___CMS_CheckOnceResult,___CMS_KeyOpen
	FNCALL	___CMS_CheckKeyOldValue,___CMS_KeyIsIn
	FNCALL	_Display,_Display_Refresh
	FNCALL	_Display_Refresh,i1_SetPin
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_DIGIT_MAP
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	18
_DIGIT_MAP:
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global __end_of_DIGIT_MAP
__end_of_DIGIT_MAP:
	global	___CMS_Table_KeyFalg
psect	strings
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	209
___CMS_Table_KeyFalg:
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	040h
	retlw	080h
	global __end_of___CMS_Table_KeyFalg
__end_of___CMS_Table_KeyFalg:
	global	_Table_KeyDown
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	35
_Table_KeyDown:
	retlw	032h
	retlw	0

	retlw	032h
	retlw	0

	retlw	032h
	retlw	0

	retlw	032h
	retlw	0

	global __end_of_Table_KeyDown
__end_of_Table_KeyDown:
	global	___CMS_CurStep_Table
psect	strings
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	210
___CMS_CurStep_Table:
	retlw	low(0)
	retlw	08h
	retlw	04h
	retlw	0Ch
	retlw	06h
	retlw	0Eh
	global __end_of___CMS_CurStep_Table
__end_of___CMS_CurStep_Table:
	global	_StepTable_R
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	21
_StepTable_R:
	retlw	020h
	retlw	040h
	retlw	080h
	retlw	080h
	global __end_of_StepTable_R
__end_of_StepTable_R:
	global	_StepTable_L
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	13
_StepTable_L:
	retlw	080h
	retlw	080h
	retlw	040h
	retlw	020h
	global __end_of_StepTable_L
__end_of_StepTable_L:
	global	_Table_KeyChannel
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	25
_Table_KeyChannel:
	retlw	0Ch
	retlw	0Dh
	retlw	0Eh
	retlw	0Fh
	global __end_of_Table_KeyChannel
__end_of_Table_KeyChannel:
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	110
_Key_LDOSel:
	retlw	04h
	global __end_of_Key_LDOSel
__end_of_Key_LDOSel:
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	109
_LMDValue:
	retlw	01h
	global __end_of_LMDValue
__end_of_LMDValue:
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	103
_CmBase:
	retlw	0Ah
	global __end_of_CmBase
__end_of_CmBase:
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	101
_VolValue:
	retlw	019h
	global __end_of_VolValue
__end_of_VolValue:
psect	strings
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	99
_KeyShakeCounter:
	retlw	02h
	global __end_of_KeyShakeCounter
__end_of_KeyShakeCounter:
	global	_DIGIT_MAP
	global	___CMS_Table_KeyFalg
	global	_Table_KeyDown
	global	___CMS_CurStep_Table
	global	_StepTable_R
	global	_StepTable_L
	global	_Table_KeyChannel
	global	_disp_buffer
	global	___CMS_CheckValidTime@validtime
	global	_StepCount
	global	_i
	global	Kscan@KeyOldFlag
	global	_KeyFlag
	global	main@minute_cnt
	global	___CMS_Key_UNNOL_Check@UnNolTime
	global	___CMS_Key_UNNOL_Check@UnNolSec
	global	___CMS_CurAdjust@CurAdjLmtTimec
	global	_IntCurStepTemp
	global	_RAMCTRBack
	global	_KeyAdrCnt
	global	_scan_idx
	global	_PWM_Count_PTC
	global	_PWM_Duty_PTC
	global	_PWM_Count_Motor
	global	_PWM_Duty_Motor
	global	_Dir
	global	TaskKey@lastKeyValue
	global	_State
	global	_keyValue
	global	main@sec_cnt
	global	_tcount
	global	_FallDownState
	global	_TimerVal
	global	_Dis_SC0
	global	___CMS_CheckTouchKey@SDfst
	global	___CMS_Key_UNNOL_Check@UnNolOver
	global	___CMS_CheckOnceResult@KeyDownF
	global	_b_kerr
	global	_CurAdjustSDfst
	global	_CurCheckOver
	global	_b_onceerr
	global	_b_over2
	global	_b_over1
	global	_b_over0
	global	_SwingState
	global	_WorkMode
	global	_SystemOn
	global	_Dis_SC1
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_Dis_SC1:
       ds      1

	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR2L
_CCPR2L	set	27
	global	_T2CON
_T2CON	set	18
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_PORTA
_PORTA	set	5
	global	_TMR2IF
_TMR2IF	set	97
	global	_RB6
_RB6	set	54
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_WPUB6
_WPUB6	set	1198
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISA3
_TRISA3	set	1067
	global	_TRISA4
_TRISA4	set	1068
	global	___CMSNewRAM__
___CMSNewRAM__	set	416
	global	_KeyReference
_KeyReference	set	448
	global	_KeyOldValue
_KeyOldValue	set	416
	global	_KeySum
_KeySum	set	416
	global	___CMS_CurStep
___CMS_CurStep	set	464
	global	_KeyBaseCnt
_KeyBaseCnt	set	448
	global	_KeyUpShake
_KeyUpShake	set	432
	global	_ITRIM_Ram
_ITRIM_Ram	set	416
	global	_KeyNosieC
_KeyNosieC	set	480
	global	_KeyHave
_KeyHave	set	448
	global	_TimeLimit
_TimeLimit	set	470
	global	_KeyUnusual
_KeyUnusual	set	468
	global	_KeyMinTemp
_KeyMinTemp	set	466
	global	_KeyMaxTemp
_KeyMaxTemp	set	464
	global	_KeyCounter
_KeyCounter	set	484
	global	___CMS_32M_CT
___CMS_32M_CT	set	483
	global	___CMS_32M_Dat
___CMS_32M_Dat	set	482
	global	___CMS_KEYSA
___CMS_KEYSA	set	389
	global	___CMS_RAMCTR
___CMS_RAMCTR	set	415
	global	___CMS_KDMAXH
___CMS_KDMAXH	set	412
	global	___CMS_KDMAXL
___CMS_KDMAXL	set	411
	global	___CMS_KDARGH
___CMS_KDARGH	set	414
	global	___CMS_KDARGL
___CMS_KDARGL	set	413
	global	___CMS_KDMINH
___CMS_KDMINH	set	410
	global	___CMS_KDMINL
___CMS_KDMINL	set	409
	global	___CMS_KEYCON8
___CMS_KEYCON8	set	408
	global	___CMS_KEYCON7
___CMS_KEYCON7	set	407
	global	___CMS_KEYCON6
___CMS_KEYCON6	set	406
	global	___CMS_KEYCON5
___CMS_KEYCON5	set	405
	global	___CMS_KEYCON4
___CMS_KEYCON4	set	404
	global	___CMS_KEYCON3
___CMS_KEYCON3	set	403
	global	___CMS_KEYCON2
___CMS_KEYCON2	set	402
	global	___CMS_KEYCON1
___CMS_KEYCON1	set	401
	global	___CMS_KEYCON0
___CMS_KEYCON0	set	400
; #config settings
	file	"warmFan.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssBANK0,class=BANK0,bit,space=1,noexec
global __pbitbssBANK0
__pbitbssBANK0:
___CMS_CheckTouchKey@SDfst:
       ds      1

___CMS_Key_UNNOL_Check@UnNolOver:
       ds      1

___CMS_CheckOnceResult@KeyDownF:
       ds      1

_b_kerr:
       ds      1

_CurAdjustSDfst:
       ds      1

_CurCheckOver:
       ds      1

_b_onceerr:
       ds      1

_b_over2:
       ds      1

_b_over1:
       ds      1

_b_over0:
       ds      1

_SwingState:
       ds      1

_WorkMode:
       ds      1

_SystemOn:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_disp_buffer:
       ds      5

___CMS_CheckValidTime@validtime:
       ds      2

_StepCount:
       ds      2

_i:
       ds      2

Kscan@KeyOldFlag:
       ds      2

_KeyFlag:
       ds      2

main@minute_cnt:
       ds      2

___CMS_Key_UNNOL_Check@UnNolTime:
       ds      1

___CMS_Key_UNNOL_Check@UnNolSec:
       ds      1

___CMS_CurAdjust@CurAdjLmtTimec:
       ds      1

_IntCurStepTemp:
       ds      1

_RAMCTRBack:
       ds      1

_KeyAdrCnt:
       ds      1

_scan_idx:
       ds      1

_PWM_Count_PTC:
       ds      1

_PWM_Duty_PTC:
       ds      1

_PWM_Count_Motor:
       ds      1

_PWM_Duty_Motor:
       ds      1

_Dir:
       ds      1

TaskKey@lastKeyValue:
       ds      1

_State:
       ds      1

_keyValue:
       ds      1

main@sec_cnt:
       ds      1

_tcount:
       ds      1

_FallDownState:
       ds      1

_TimerVal:
       ds      1

_Dis_SC0:
       ds      1

	file	"warmFan.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BITBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	((__pbitbssBANK0/8)+0)&07Fh
	clrf	((__pbitbssBANK0/8)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+025h)
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Display:	; 1 bytes @ 0x0
?_PWM_Ctr_Motor:	; 1 bytes @ 0x0
??_PWM_Ctr_Motor:	; 1 bytes @ 0x0
?_PWM_Ctr_PTC:	; 1 bytes @ 0x0
??_PWM_Ctr_PTC:	; 1 bytes @ 0x0
?___CMS_GetTouchKeyValue:	; 1 bytes @ 0x0
??___CMS_GetTouchKeyValue:	; 1 bytes @ 0x0
?___CMS_CheckTouchKey:	; 1 bytes @ 0x0
?_InitKey:	; 1 bytes @ 0x0
?_InitMotor:	; 1 bytes @ 0x0
?_InitStepMotor:	; 1 bytes @ 0x0
?_InitPTC:	; 1 bytes @ 0x0
?_PTC_Init:	; 1 bytes @ 0x0
?_InitFallDown:	; 1 bytes @ 0x0
?_Display_Init:	; 1 bytes @ 0x0
?_Display_UpdateData:	; 1 bytes @ 0x0
?_System_Shutdown:	; 1 bytes @ 0x0
?_Kscan:	; 1 bytes @ 0x0
?_TaskKey:	; 1 bytes @ 0x0
?_StepMotorControl:	; 1 bytes @ 0x0
?_ReadFallDown:	; 1 bytes @ 0x0
?_PTC_SetDuty:	; 1 bytes @ 0x0
?_Display_Clear:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_InitTimer2:	; 1 bytes @ 0x0
?_SetStep:	; 1 bytes @ 0x0
?_SwitchDir:	; 1 bytes @ 0x0
?_StepMotorRun:	; 1 bytes @ 0x0
?_Display_Refresh:	; 1 bytes @ 0x0
?___CMS_KeyIsIn:	; 1 bytes @ 0x0
??___CMS_KeyIsIn:	; 1 bytes @ 0x0
?___CMS_KeyOpen:	; 1 bytes @ 0x0
?___CMS_KeyHaveDown:	; 1 bytes @ 0x0
?___CMS_KeyClearOne:	; 1 bytes @ 0x0
??___CMS_KeyClearOne:	; 1 bytes @ 0x0
?___CMS_KeyStopClear:	; 1 bytes @ 0x0
?___CMS_KeyModeSet:	; 1 bytes @ 0x0
??___CMS_KeyModeSet:	; 1 bytes @ 0x0
?___CMS_CheckOnceResult:	; 1 bytes @ 0x0
?___CMS_CheckKeyOldValue:	; 1 bytes @ 0x0
?___CMS_CheckValidTime:	; 1 bytes @ 0x0
??___CMS_CheckValidTime:	; 1 bytes @ 0x0
?___CMS_CurAdjMode:	; 1 bytes @ 0x0
??___CMS_CurAdjMode:	; 1 bytes @ 0x0
?___CMS_CurAdjust:	; 1 bytes @ 0x0
?___CMS_Key_UNNOL_Check:	; 1 bytes @ 0x0
?___CMS_KeyDatIIR:	; 1 bytes @ 0x0
??___CMS_KeyDatIIR:	; 1 bytes @ 0x0
?___CMS_NewRAMClr:	; 1 bytes @ 0x0
??___CMS_NewRAMClr:	; 1 bytes @ 0x0
?___GET_32M_FREDAT:	; 1 bytes @ 0x0
??___GET_32M_FREDAT:	; 1 bytes @ 0x0
?i1_SetPin:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	___CMS_KeyIsIn@i
___CMS_KeyIsIn@i:	; 1 bytes @ 0x0
	global	___CMS_KeyOpen@flag
___CMS_KeyOpen@flag:	; 1 bytes @ 0x0
	global	___CMS_KeyHaveDown@flag
___CMS_KeyHaveDown@flag:	; 1 bytes @ 0x0
	global	___CMS_KeyModeSet@DLTempl
___CMS_KeyModeSet@DLTempl:	; 1 bytes @ 0x0
	global	___CMS_CurAdjMode@CurStepTemp
___CMS_CurAdjMode@CurStepTemp:	; 1 bytes @ 0x0
	global	___CMS_NewRAMClr@i
___CMS_NewRAMClr@i:	; 1 bytes @ 0x0
	global	i1SetPin@mode
i1SetPin@mode:	; 1 bytes @ 0x0
	ds	1
??___CMS_KeyOpen:	; 1 bytes @ 0x1
??___CMS_KeyHaveDown:	; 1 bytes @ 0x1
??___CMS_CurAdjust:	; 1 bytes @ 0x1
??___CMS_Key_UNNOL_Check:	; 1 bytes @ 0x1
??i1_SetPin:	; 1 bytes @ 0x1
	global	___CMS_KeyIsIn@cnt
___CMS_KeyIsIn@cnt:	; 1 bytes @ 0x1
	global	___CMS_KeyOpen@cnt
___CMS_KeyOpen@cnt:	; 1 bytes @ 0x1
	global	___CMS_KeyHaveDown@cnt
___CMS_KeyHaveDown@cnt:	; 1 bytes @ 0x1
	global	i1SetPin@pin_idx
i1SetPin@pin_idx:	; 1 bytes @ 0x1
	ds	1
??_Display_Refresh:	; 1 bytes @ 0x2
??___CMS_CheckKeyOldValue:	; 1 bytes @ 0x2
	global	___CMS_KeyClearOne@cnt
___CMS_KeyClearOne@cnt:	; 1 bytes @ 0x2
	global	___CMS_CurAdjust@cnt
___CMS_CurAdjust@cnt:	; 1 bytes @ 0x2
	ds	1
??___CMS_KeyStopClear:	; 1 bytes @ 0x3
??___CMS_CheckOnceResult:	; 1 bytes @ 0x3
	global	Display_Refresh@sinks
Display_Refresh@sinks:	; 1 bytes @ 0x3
	global	___CMS_KeyStopClear@i
___CMS_KeyStopClear@i:	; 1 bytes @ 0x3
	global	___CMS_Key_UNNOL_Check@UnNolFlag
___CMS_Key_UNNOL_Check@UnNolFlag:	; 1 bytes @ 0x3
	global	___CMS_CurAdjust@KeySumTemp
___CMS_CurAdjust@KeySumTemp:	; 2 bytes @ 0x3
	ds	1
	global	Display_Refresh@current_src
Display_Refresh@current_src:	; 1 bytes @ 0x4
	global	___CMS_Key_UNNOL_Check@cnt
___CMS_Key_UNNOL_Check@cnt:	; 1 bytes @ 0x4
	ds	1
	global	Display_Refresh@i
Display_Refresh@i:	; 1 bytes @ 0x5
	ds	1
??_Display:	; 1 bytes @ 0x6
	ds	8
??___CMS_CheckTouchKey:	; 1 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___CMS_CheckOnceResult@KeyDown
___CMS_CheckOnceResult@KeyDown:	; 2 bytes @ 0x0
	global	___CMS_CheckKeyOldValue@KeyBaseLV
___CMS_CheckKeyOldValue@KeyBaseLV:	; 2 bytes @ 0x0
	global	___CMS_KeyDatIIR@TKDatTemp
___CMS_KeyDatIIR@TKDatTemp:	; 2 bytes @ 0x0
	ds	2
	global	___CMS_CheckOnceResult@KeyValue
___CMS_CheckOnceResult@KeyValue:	; 2 bytes @ 0x2
	global	___CMS_CheckKeyOldValue@KeyOneTemp
___CMS_CheckKeyOldValue@KeyOneTemp:	; 2 bytes @ 0x2
	global	___CMS_KeyDatIIR@TKOldTemp
___CMS_KeyDatIIR@TKOldTemp:	; 2 bytes @ 0x2
	ds	2
	global	___CMS_CheckOnceResult@KHaveC
___CMS_CheckOnceResult@KHaveC:	; 1 bytes @ 0x4
	global	___CMS_CheckKeyOldValue@VolValueOne
___CMS_CheckKeyOldValue@VolValueOne:	; 1 bytes @ 0x4
	global	___CMS_KeyDatIIR@cnt
___CMS_KeyDatIIR@cnt:	; 1 bytes @ 0x4
	ds	1
	global	___CMS_CheckOnceResult@KHaveTemp
___CMS_CheckOnceResult@KHaveTemp:	; 1 bytes @ 0x5
	global	___CMS_CheckKeyOldValue@KeyBase
___CMS_CheckKeyOldValue@KeyBase:	; 2 bytes @ 0x5
	ds	1
	global	___CMS_CheckOnceResult@KeyBase
___CMS_CheckOnceResult@KeyBase:	; 2 bytes @ 0x6
	ds	1
	global	___CMS_CheckKeyOldValue@KeyTemp
___CMS_CheckKeyOldValue@KeyTemp:	; 2 bytes @ 0x7
	ds	1
	global	___CMS_CheckOnceResult@templ
___CMS_CheckOnceResult@templ:	; 1 bytes @ 0x8
	ds	1
	global	___CMS_CheckOnceResult@flag
___CMS_CheckOnceResult@flag:	; 1 bytes @ 0x9
	global	___CMS_CheckKeyOldValue@KeyOldTemp
___CMS_CheckKeyOldValue@KeyOldTemp:	; 2 bytes @ 0x9
	ds	1
	global	___CMS_CheckOnceResult@cnt
___CMS_CheckOnceResult@cnt:	; 1 bytes @ 0xA
	ds	1
	global	___CMS_CheckKeyOldValue@cnt
___CMS_CheckKeyOldValue@cnt:	; 1 bytes @ 0xB
	ds	1
??_ISR:	; 1 bytes @ 0xC
	ds	4
??_InitKey:	; 1 bytes @ 0x10
??_InitMotor:	; 1 bytes @ 0x10
??_InitStepMotor:	; 1 bytes @ 0x10
??_InitPTC:	; 1 bytes @ 0x10
??_PTC_Init:	; 1 bytes @ 0x10
??_InitFallDown:	; 1 bytes @ 0x10
??_Kscan:	; 1 bytes @ 0x10
??_ReadFallDown:	; 1 bytes @ 0x10
??_PTC_SetDuty:	; 1 bytes @ 0x10
??_Display_Clear:	; 1 bytes @ 0x10
??_InitTimer2:	; 1 bytes @ 0x10
??_SetStep:	; 1 bytes @ 0x10
??_SwitchDir:	; 1 bytes @ 0x10
?_SetPin:	; 1 bytes @ 0x10
?_Display_SetSegment:	; 1 bytes @ 0x10
	global	SetStep@step
SetStep@step:	; 1 bytes @ 0x10
	global	SetPin@mode
SetPin@mode:	; 1 bytes @ 0x10
	global	Display_Clear@i
Display_Clear@i:	; 1 bytes @ 0x10
	global	Display_SetSegment@state
Display_SetSegment@state:	; 1 bytes @ 0x10
	global	Kscan@KeyOnOutput
Kscan@KeyOnOutput:	; 2 bytes @ 0x10
	ds	1
?_StepMotor:	; 1 bytes @ 0x11
??_SetPin:	; 1 bytes @ 0x11
??_Display_SetSegment:	; 1 bytes @ 0x11
	global	StepMotor@Dir
StepMotor@Dir:	; 1 bytes @ 0x11
	global	SetPin@pin_idx
SetPin@pin_idx:	; 1 bytes @ 0x11
	ds	1
??_Display_Init:	; 1 bytes @ 0x12
??_StepMotor:	; 1 bytes @ 0x12
	global	StepMotor@stepIndex
StepMotor@stepIndex:	; 1 bytes @ 0x12
	global	Display_SetSegment@seg_code
Display_SetSegment@seg_code:	; 1 bytes @ 0x12
	global	PTC_SetDuty@dutyRaw
PTC_SetDuty@dutyRaw:	; 2 bytes @ 0x12
	ds	1
??_StepMotorControl:	; 1 bytes @ 0x13
??_StepMotorRun:	; 1 bytes @ 0x13
	global	Display_SetSegment@src
Display_SetSegment@src:	; 1 bytes @ 0x13
	ds	1
	global	PTC_SetDuty@dutyPercent
PTC_SetDuty@dutyPercent:	; 1 bytes @ 0x14
	global	Display_SetSegment@sink
Display_SetSegment@sink:	; 1 bytes @ 0x14
	ds	1
?_Display_SetAux:	; 1 bytes @ 0x15
?_Display_SetDigit:	; 1 bytes @ 0x15
	global	Display_SetDigit@num
Display_SetDigit@num:	; 1 bytes @ 0x15
	global	Display_SetAux@state
Display_SetAux@state:	; 1 bytes @ 0x15
	ds	1
??_Display_SetAux:	; 1 bytes @ 0x16
??_Display_SetDigit:	; 1 bytes @ 0x16
	global	Display_SetDigit@digit_pos
Display_SetDigit@digit_pos:	; 1 bytes @ 0x16
	global	Display_SetAux@aux_id
Display_SetAux@aux_id:	; 1 bytes @ 0x16
	ds	1
??_System_Shutdown:	; 1 bytes @ 0x17
??_TaskKey:	; 1 bytes @ 0x17
	global	Display_SetDigit@map
Display_SetDigit@map:	; 1 bytes @ 0x17
	ds	1
??_Display_UpdateData:	; 1 bytes @ 0x18
??_main:	; 1 bytes @ 0x18
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    49
;!    Data        0
;!    BSS         37
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     24      64
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    ___CMS_CheckTouchKey->___CMS_KeyDatIIR
;!    ___CMS_Key_UNNOL_Check->___CMS_KeyModeSet
;!    ___CMS_KeyStopClear->___CMS_KeyClearOne
;!    ___CMS_CurAdjust->___CMS_CurAdjMode
;!    ___CMS_CurAdjust->___CMS_KeyModeSet
;!    ___CMS_CheckOnceResult->___CMS_KeyClearOne
;!    ___CMS_CheckKeyOldValue->___CMS_KeyIsIn
;!    _Display->_Display_Refresh
;!    _Display_Refresh->i1_SetPin
;!
;!Critical Paths under _main in BANK0
;!
;!    _TaskKey->_Display_SetAux
;!    _System_Shutdown->_Display_SetAux
;!    _Display_SetAux->_Display_SetSegment
;!    _StepMotorRun->_StepMotor
;!    _StepMotor->_SetStep
;!    _Display_UpdateData->_Display_SetDigit
;!    _Display_SetDigit->_Display_SetSegment
;!    _Display_Init->_SetPin
;!
;!Critical Paths under _ISR in BANK0
;!
;!    ___CMS_CheckTouchKey->___CMS_CheckKeyOldValue
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   11146
;!                       _Display_Init
;!                 _Display_UpdateData
;!                       _InitFallDown
;!                            _InitKey
;!                          _InitMotor
;!                            _InitPTC
;!                      _InitStepMotor
;!                         _InitTimer2
;!                              _Kscan
;!                           _PTC_Init
;!                       _ReadFallDown
;!                   _StepMotorControl
;!                    _System_Shutdown
;!                            _TaskKey
;! ---------------------------------------------------------------------------------
;! (1) _TaskKey                                              0     0      0    5326
;!                     _Display_SetAux
;!                        _PTC_SetDuty
;!                    _System_Shutdown
;! ---------------------------------------------------------------------------------
;! (2) _System_Shutdown                                      0     0      0    2663
;!                     _Display_SetAux
;!                        _PTC_SetDuty
;! ---------------------------------------------------------------------------------
;! (3) _PTC_SetDuty                                          5     5      0      91
;!                                             16 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (3) _Display_SetAux                                       2     1      1    2572
;!                                             21 BANK0      2     1      1
;!                 _Display_SetSegment
;! ---------------------------------------------------------------------------------
;! (1) _StepMotorControl                                     0     0      0     163
;!                       _StepMotorRun
;! ---------------------------------------------------------------------------------
;! (2) _StepMotorRun                                         0     0      0     163
;!                          _StepMotor
;!                          _SwitchDir
;! ---------------------------------------------------------------------------------
;! (3) _SwitchDir                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _StepMotor                                            2     1      1     163
;!                                             17 BANK0      2     1      1
;!                            _SetStep
;! ---------------------------------------------------------------------------------
;! (4) _SetStep                                              1     1      0      44
;!                                             16 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _ReadFallDown                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PTC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Kscan                                                2     2      0     155
;!                                             16 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _InitTimer2                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitStepMotor                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitPTC                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitMotor                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitKey                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitFallDown                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Display_UpdateData                                   0     0      0    2075
;!                   _Display_SetDigit
;! ---------------------------------------------------------------------------------
;! (2) _Display_SetDigit                                     3     2      1    2075
;!                                             21 BANK0      3     2      1
;!                 _Display_SetSegment
;! ---------------------------------------------------------------------------------
;! (4) _Display_SetSegment                                   5     4      1    1570
;!                                             16 BANK0      5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _Display_Init                                         0     0      0     764
;!                      _Display_Clear
;!                             _SetPin
;! ---------------------------------------------------------------------------------
;! (2) _SetPin                                               2     1      1     696
;!                                             16 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (2) _Display_Clear                                        1     1      0      68
;!                                             16 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  4     4      0    3516
;!                                             12 BANK0      4     4      0
;!                            _Display
;!                      _PWM_Ctr_Motor
;!                        _PWM_Ctr_PTC
;!                ___CMS_CheckTouchKey
;!             ___CMS_GetTouchKeyValue
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_GetTouchKeyValue                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) ___CMS_CheckTouchKey                                  0     0      0    2890
;!             ___CMS_CheckKeyOldValue
;!              ___CMS_CheckOnceResult
;!               ___CMS_CheckValidTime
;!                    ___CMS_CurAdjust
;!                    ___CMS_KeyDatIIR
;!                   ___CMS_KeyModeSet
;!                 ___CMS_KeyStopClear
;!              ___CMS_Key_UNNOL_Check
;!                    ___CMS_NewRAMClr
;!                   ___GET_32M_FREDAT
;! ---------------------------------------------------------------------------------
;! (7) ___GET_32M_FREDAT                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_NewRAMClr                                      1     1      0     112
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_Key_UNNOL_Check                                4     4      0     204
;!                                              1 COMMON     4     4      0
;!                   ___CMS_KeyModeSet
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_KeyStopClear                                   1     1      0     178
;!                                              3 COMMON     1     1      0
;!                  ___CMS_KeyClearOne
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_KeyDatIIR                                     19    19      0     223
;!                                              0 COMMON    14    14      0
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_CurAdjust                                      4     4      0     231
;!                                              1 COMMON     4     4      0
;!                   ___CMS_CurAdjMode
;!                   ___CMS_KeyModeSet
;! ---------------------------------------------------------------------------------
;! (8) ___CMS_KeyModeSet                                     1     1      0      23
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (9) ___CMS_CurAdjMode                                     1     1      0      48
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_CheckValidTime                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_CheckOnceResult                               16    16      0    1330
;!                                              3 COMMON     5     5      0
;!                                              0 BANK0     11    11      0
;!                  ___CMS_KeyClearOne
;!                  ___CMS_KeyHaveDown
;!                      ___CMS_KeyIsIn
;!                      ___CMS_KeyOpen
;! ---------------------------------------------------------------------------------
;! (8) ___CMS_KeyOpen                                        2     1      1     173
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (8) ___CMS_KeyHaveDown                                    2     1      1     172
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! (8) ___CMS_KeyClearOne                                    3     3      0     110
;!                                              0 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (7) ___CMS_CheckKeyOldValue                              14    14      0     589
;!                                              2 COMMON     2     2      0
;!                                              0 BANK0     12    12      0
;!                      ___CMS_KeyIsIn
;! ---------------------------------------------------------------------------------
;! (9) ___CMS_KeyIsIn                                        2     2      0      69
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (6) _PWM_Ctr_PTC                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _PWM_Ctr_Motor                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _Display                                              0     0      0     626
;!                    _Display_Refresh
;! ---------------------------------------------------------------------------------
;! (7) _Display_Refresh                                      4     4      0     626
;!                                              2 COMMON     4     4      0
;!                           i1_SetPin
;! ---------------------------------------------------------------------------------
;! (8) i1_SetPin                                             2     1      1     424
;!                                              0 COMMON     2     1      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Display_Init
;!     _Display_Clear
;!     _SetPin
;!   _Display_UpdateData
;!     _Display_SetDigit
;!       _Display_SetSegment
;!   _InitFallDown
;!   _InitKey
;!   _InitMotor
;!   _InitPTC
;!   _InitStepMotor
;!   _InitTimer2
;!   _Kscan
;!   _PTC_Init
;!   _ReadFallDown
;!   _StepMotorControl
;!     _StepMotorRun
;!       _StepMotor
;!         _SetStep
;!       _SwitchDir
;!   _System_Shutdown
;!     _Display_SetAux
;!       _Display_SetSegment
;!     _PTC_SetDuty
;!   _TaskKey
;!     _Display_SetAux
;!       _Display_SetSegment
;!     _PTC_SetDuty
;!     _System_Shutdown
;!       _Display_SetAux
;!         _Display_SetSegment
;!       _PTC_SetDuty
;!
;! _ISR (ROOT)
;!   _Display
;!     _Display_Refresh
;!       i1_SetPin
;!   _PWM_Ctr_Motor
;!   _PWM_Ctr_PTC
;!   ___CMS_CheckTouchKey
;!     ___CMS_CheckKeyOldValue
;!       ___CMS_KeyIsIn
;!     ___CMS_CheckOnceResult
;!       ___CMS_KeyClearOne
;!       ___CMS_KeyHaveDown
;!       ___CMS_KeyIsIn
;!       ___CMS_KeyOpen
;!     ___CMS_CheckValidTime
;!     ___CMS_CurAdjust
;!       ___CMS_CurAdjMode
;!       ___CMS_KeyModeSet
;!     ___CMS_KeyDatIIR
;!     ___CMS_KeyModeSet
;!     ___CMS_KeyStopClear
;!       ___CMS_KeyClearOne
;!     ___CMS_Key_UNNOL_Check
;!       ___CMS_KeyModeSet
;!     ___CMS_NewRAMClr
;!     ___GET_32M_FREDAT
;!   ___CMS_GetTouchKeyValue
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       2       3        2.5%
;!BANK0               50     18      40       4       80.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      4E       8        0.0%
;!DATA                 0      0      4E       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 36 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  793[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_Display_Init
;;		_Display_UpdateData
;;		_InitFallDown
;;		_InitKey
;;		_InitMotor
;;		_InitPTC
;;		_InitStepMotor
;;		_InitTimer2
;;		_Kscan
;;		_PTC_Init
;;		_ReadFallDown
;;		_StepMotorControl
;;		_System_Shutdown
;;		_TaskKey
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
	line	36
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
	line	36
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	37
	
l8706:	
# 37 "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
nop ;# 
	line	38
# 38 "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
clrwdt ;# 
psect	maintext
	line	40
	
l8708:	
;main.c: 40: OSCCON = 0x71;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	41
;main.c: 41: INTCON = 0xC0;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	43
	
l8710:	
;main.c: 43: InitTimer2();
	fcall	_InitTimer2
	line	46
	
l8712:	
;main.c: 46: InitKey();
	fcall	_InitKey
	line	47
	
l8714:	
;main.c: 47: InitMotor();
	fcall	_InitMotor
	line	48
;main.c: 48: InitStepMotor();
	fcall	_InitStepMotor
	line	49
	
l8716:	
;main.c: 49: InitPTC();
	fcall	_InitPTC
	line	50
	
l8718:	
;main.c: 50: PTC_Init();
	fcall	_PTC_Init
	line	51
;main.c: 51: InitFallDown();
	fcall	_InitFallDown
	line	53
	
l8720:	
;main.c: 53: Dis_SC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(_Dis_SC0)
	line	54
	
l8722:	
;main.c: 54: Dis_SC1 = 1;
	clrf	(_Dis_SC1)
	incf	(_Dis_SC1),f
	line	58
	
l8724:	
;main.c: 58: Display_Init();
	fcall	_Display_Init
	line	62
	
l8726:	
;main.c: 62: SystemOn = 0;
	bcf	(_SystemOn/8),(_SystemOn)&7
	line	64
;main.c: 64: while(1) {
	
l794:	
	line	65
# 65 "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
clrwdt ;# 
psect	maintext
	line	66
	
l8728:	
;main.c: 66: if (tcount >= 40) {
	movlw	low(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_tcount),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l794
u2680:
	line	67
	
l8730:	
;main.c: 67: tcount = 0;
	clrf	(_tcount)
	line	68
	
l8732:	
;main.c: 68: Display_UpdateData();
	fcall	_Display_UpdateData
	line	72
	
l8734:	
;main.c: 71: static unsigned char sec_cnt = 0;
;main.c: 72: sec_cnt++;
	incf	(main@sec_cnt),f
	line	73
	
l8736:	
;main.c: 73: if (sec_cnt >= 250) {
	movlw	low(0FAh)
	subwf	(main@sec_cnt),w
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l8758
u2690:
	line	74
	
l8738:	
;main.c: 74: sec_cnt = 0;
	clrf	(main@sec_cnt)
	line	77
	
l8740:	
;main.c: 77: if (SystemOn && TimerVal > 0) {
	btfss	(_SystemOn/8),(_SystemOn)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l8758
u2700:
	
l8742:	
	movf	((_TimerVal)),w
	btfsc	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l8758
u2710:
	line	85
	
l8744:	
;main.c: 84: static unsigned int minute_cnt = 0;
;main.c: 85: minute_cnt++;
	incf	(main@minute_cnt),f
	skipnz
	incf	(main@minute_cnt+1),f
	line	86
	
l8746:	
;main.c: 86: if (minute_cnt >= 3600) {
	movlw	0Eh
	subwf	(main@minute_cnt+1),w
	movlw	010h
	skipnz
	subwf	(main@minute_cnt),w
	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l8758
u2720:
	line	87
	
l8748:	
;main.c: 87: minute_cnt = 0;
	clrf	(main@minute_cnt)
	clrf	(main@minute_cnt+1)
	line	88
	
l8750:	
;main.c: 88: TimerVal--;
	decf	(_TimerVal),f
	line	89
	
l8752:	
;main.c: 89: if (TimerVal == 0) {
	movf	((_TimerVal)),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l8756
u2730:
	line	91
	
l8754:	
;main.c: 91: System_Shutdown();
	fcall	_System_Shutdown
	line	92
;main.c: 92: } else {
	goto	l8758
	line	94
	
l8756:	
;main.c: 94: Dis_SC0 = TimerVal;
	movf	(_TimerVal),w
	movwf	(_Dis_SC0)
	line	100
	
l8758:	
;main.c: 95: }
;main.c: 96: }
;main.c: 97: }
;main.c: 98: }
;main.c: 100: Kscan();
	fcall	_Kscan
	line	101
	
l8760:	
;main.c: 101: TaskKey();
	fcall	_TaskKey
	line	105
	
l8762:	
;main.c: 105: StepMotorControl();
	fcall	_StepMotorControl
	line	107
;main.c: 107: ReadFallDown();
	fcall	_ReadFallDown
	line	109
	
l8764:	
;main.c: 109: if (SystemOn && FallDownState) {
	btfss	(_SystemOn/8),(_SystemOn)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l794
u2740:
	
l8766:	
	movf	((_FallDownState)),w
	btfsc	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l794
u2750:
	line	110
	
l8768:	
;main.c: 110: System_Shutdown();
	fcall	_System_Shutdown
	goto	l794
	global	start
	ljmp	start
	opt stack 0
	line	115
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_TaskKey

;; *************** function _TaskKey *****************
;; Defined at:
;;		line 34 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Display_SetAux
;;		_PTC_SetDuty
;;		_System_Shutdown
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Task.c"
	line	34
global __ptext1
__ptext1:	;psect for function _TaskKey
psect	text1
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Task.c"
	line	34
	global	__size_of_TaskKey
	__size_of_TaskKey	equ	__end_of_TaskKey-_TaskKey
	
_TaskKey:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _TaskKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	38
	
l8600:	
;Task.c: 35: static unsigned char lastKeyValue = 0;
;Task.c: 38: if (keyValue != 0 && lastKeyValue == 0) {
	movf	((_keyValue)),w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l8674
u2550:
	
l8602:	
	movf	((TaskKey@lastKeyValue)),w
	btfss	status,2
	goto	u2561
	goto	u2560
u2561:
	goto	l8674
u2560:
	goto	l8672
	line	41
;Task.c: 41: case 4:
	
l2290:	
	line	42
;Task.c: 42: if (!SystemOn) {
	btfsc	(_SystemOn/8),(_SystemOn)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l8626
u2570:
	line	43
	
l8606:	
;Task.c: 43: SystemOn = 1;
	bsf	(_SystemOn/8),(_SystemOn)&7
	line	45
;Task.c: 45: WorkMode = 0;
	bcf	(_WorkMode/8),(_WorkMode)&7
	line	46
	
l8608:	
;Task.c: 46: TimerVal = 0;
	clrf	(_TimerVal)
	line	48
	
l8610:	
;Task.c: 48: SwingState = 0;
	bcf	(_SwingState/8),(_SwingState)&7
	line	49
;Task.c: 49: State = 0;
	clrf	(_State)
	line	52
	
l8612:	
;Task.c: 52: Display_SetAux(1, 1);
	clrf	(Display_SetAux@state)
	incf	(Display_SetAux@state),f
	movlw	low(01h)
	fcall	_Display_SetAux
	line	53
	
l8614:	
;Task.c: 53: Display_SetAux(2, 0);
	clrf	(Display_SetAux@state)
	movlw	low(02h)
	fcall	_Display_SetAux
	line	54
	
l8616:	
;Task.c: 54: Display_SetAux(3, 0);
	clrf	(Display_SetAux@state)
	movlw	low(03h)
	fcall	_Display_SetAux
	line	55
	
l8618:	
;Task.c: 55: Display_SetAux(4, 0);
	clrf	(Display_SetAux@state)
	movlw	low(04h)
	fcall	_Display_SetAux
	line	57
	
l8620:	
;Task.c: 57: PTC_SetDuty(0);
	movlw	low(0)
	fcall	_PTC_SetDuty
	line	58
	
l8622:	
;Task.c: 58: Dis_SC1 = 0;
	clrf	(_Dis_SC1)
	line	59
	
l8624:	
;Task.c: 59: Dis_SC0 = 0;
	clrf	(_Dis_SC0)
	line	61
;Task.c: 61: } else {
	goto	l8674
	line	63
	
l8626:	
;Task.c: 63: System_Shutdown();
	fcall	_System_Shutdown
	goto	l8674
	line	67
;Task.c: 67: case 2:
	
l2294:	
	line	68
;Task.c: 68: if (SystemOn) {
	btfss	(_SystemOn/8),(_SystemOn)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l8674
u2580:
	line	69
	
l8628:	
;Task.c: 69: WorkMode = !WorkMode;
	movlw	1<<((_WorkMode)&7)
	xorwf	((_WorkMode)/8),f
	line	70
	
l8630:	
;Task.c: 70: if (WorkMode) {
	btfss	(_WorkMode/8),(_WorkMode)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l8636
u2590:
	line	71
	
l8632:	
;Task.c: 71: Display_SetAux(2, 1);
	clrf	(Display_SetAux@state)
	incf	(Display_SetAux@state),f
	movlw	low(02h)
	fcall	_Display_SetAux
	line	72
	
l8634:	
;Task.c: 72: PTC_SetDuty(100);
	movlw	low(064h)
	fcall	_PTC_SetDuty
	line	73
;Task.c: 73: } else {
	goto	l8674
	line	74
	
l8636:	
;Task.c: 74: Display_SetAux(2, 0);
	clrf	(Display_SetAux@state)
	movlw	low(02h)
	fcall	_Display_SetAux
	line	75
	
l8638:	
;Task.c: 75: PTC_SetDuty(0);
	movlw	low(0)
	fcall	_PTC_SetDuty
	goto	l8674
	line	80
;Task.c: 80: case 3:
	
l2298:	
	line	81
;Task.c: 81: if (SystemOn) {
	btfss	(_SystemOn/8),(_SystemOn)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l8674
u2600:
	line	82
	
l8640:	
;Task.c: 82: SwingState = !SwingState;
	movlw	1<<((_SwingState)&7)
	xorwf	((_SwingState)/8),f
	line	83
	
l8642:	
;Task.c: 83: State = SwingState;
	movlw	0
	btfsc	(_SwingState/8),(_SwingState)&7
	movlw	1
	movwf	(_State)
	line	84
	
l8644:	
;Task.c: 84: if (SwingState) {
	btfss	(_SwingState/8),(_SwingState)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l8648
u2610:
	line	85
	
l8646:	
;Task.c: 85: Display_SetAux(3, 1);
	clrf	(Display_SetAux@state)
	incf	(Display_SetAux@state),f
	movlw	low(03h)
	fcall	_Display_SetAux
	line	86
;Task.c: 86: } else {
	goto	l8674
	line	87
	
l8648:	
;Task.c: 87: Display_SetAux(3, 0);
	clrf	(Display_SetAux@state)
	movlw	low(03h)
	fcall	_Display_SetAux
	goto	l8674
	line	92
;Task.c: 92: case 1:
	
l2302:	
	line	93
;Task.c: 93: if (SystemOn) {
	btfss	(_SystemOn/8),(_SystemOn)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l8674
u2620:
	line	94
	
l8650:	
;Task.c: 94: TimerVal++;
	incf	(_TimerVal),f
	line	95
	
l8652:	
;Task.c: 95: if (TimerVal > 9) TimerVal = 0;
	movlw	low(0Ah)
	subwf	(_TimerVal),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l8656
u2630:
	
l8654:	
	clrf	(_TimerVal)
	line	97
	
l8656:	
;Task.c: 97: if (TimerVal > 0) {
	movf	((_TimerVal)),w
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l8664
u2640:
	line	98
	
l8658:	
;Task.c: 98: Display_SetAux(4, 1);
	clrf	(Display_SetAux@state)
	incf	(Display_SetAux@state),f
	movlw	low(04h)
	fcall	_Display_SetAux
	line	99
	
l8660:	
;Task.c: 99: Dis_SC1 = 0;
	clrf	(_Dis_SC1)
	line	100
	
l8662:	
;Task.c: 100: Dis_SC0 = TimerVal;
	movf	(_TimerVal),w
	movwf	(_Dis_SC0)
	line	101
;Task.c: 101: } else {
	goto	l8674
	line	102
	
l8664:	
;Task.c: 102: Display_SetAux(4, 0);
	clrf	(Display_SetAux@state)
	movlw	low(04h)
	fcall	_Display_SetAux
	goto	l8622
	line	40
	
l8672:	
	movf	(_keyValue),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2302
	xorlw	2^1	; case 2
	skipnz
	goto	l2294
	xorlw	3^2	; case 3
	skipnz
	goto	l2298
	xorlw	4^3	; case 4
	skipnz
	goto	l2290
	goto	l8674
	opt asmopt_pop

	line	114
	
l8674:	
;Task.c: 112: }
;Task.c: 114: lastKeyValue = keyValue;
	movf	(_keyValue),w
	movwf	(TaskKey@lastKeyValue)
	line	115
	
l2308:	
	return
	opt stack 0
GLOBAL	__end_of_TaskKey
	__end_of_TaskKey:
	signat	_TaskKey,89
	global	_System_Shutdown

;; *************** function _System_Shutdown *****************
;; Defined at:
;;		line 15 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Display_SetAux
;;		_PTC_SetDuty
;; This function is called by:
;;		_main
;;		_TaskKey
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	15
global __ptext2
__ptext2:	;psect for function _System_Shutdown
psect	text2
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Task.c"
	line	15
	global	__size_of_System_Shutdown
	__size_of_System_Shutdown	equ	__end_of_System_Shutdown-_System_Shutdown
	
_System_Shutdown:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _System_Shutdown: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	16
	
l7918:	
;Task.c: 16: SystemOn = 0;
	bcf	(_SystemOn/8),(_SystemOn)&7
	line	19
	
l7920:	
;Task.c: 19: Display_SetAux(1, 0);
	clrf	(Display_SetAux@state)
	movlw	low(01h)
	fcall	_Display_SetAux
	line	20
;Task.c: 20: Display_SetAux(2, 0);
	clrf	(Display_SetAux@state)
	movlw	low(02h)
	fcall	_Display_SetAux
	line	21
;Task.c: 21: Display_SetAux(3, 0);
	clrf	(Display_SetAux@state)
	movlw	low(03h)
	fcall	_Display_SetAux
	line	22
;Task.c: 22: Display_SetAux(4, 0);
	clrf	(Display_SetAux@state)
	movlw	low(04h)
	fcall	_Display_SetAux
	line	23
;Task.c: 23: Display_SetAux(5, 0);
	clrf	(Display_SetAux@state)
	movlw	low(05h)
	fcall	_Display_SetAux
	line	24
;Task.c: 24: Display_SetAux(6, 0);
	clrf	(Display_SetAux@state)
	movlw	low(06h)
	fcall	_Display_SetAux
	line	26
	
l7922:	
;Task.c: 26: PTC_SetDuty(0);
	movlw	low(0)
	fcall	_PTC_SetDuty
	line	27
	
l7924:	
;Task.c: 27: Dis_SC1 = 17;
	movlw	low(011h)
	movwf	(_Dis_SC1)
	line	28
	
l7926:	
;Task.c: 28: Dis_SC0 = 17;
	movlw	low(011h)
	movwf	(_Dis_SC0)
	line	30
	
l7928:	
;Task.c: 30: SwingState = 0;
	bcf	(_SwingState/8),(_SwingState)&7
	line	31
	
l7930:	
;Task.c: 31: State = 0;
	clrf	(_State)
	line	32
	
l2283:	
	return
	opt stack 0
GLOBAL	__end_of_System_Shutdown
	__end_of_System_Shutdown:
	signat	_System_Shutdown,89
	global	_PTC_SetDuty

;; *************** function _PTC_SetDuty *****************
;; Defined at:
;;		line 44 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\ptc_driver.c"
;; Parameters:    Size  Location     Type
;;  dutyPercent     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dutyPercent     1   20[BANK0 ] unsigned char 
;;  dutyRaw         2   18[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_System_Shutdown
;;		_TaskKey
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\ptc_driver.c"
	line	44
global __ptext3
__ptext3:	;psect for function _PTC_SetDuty
psect	text3
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\ptc_driver.c"
	line	44
	global	__size_of_PTC_SetDuty
	__size_of_PTC_SetDuty	equ	__end_of_PTC_SetDuty-_PTC_SetDuty
	
_PTC_SetDuty:	
;incstack = 0
	opt	stack 0
; Regs used in _PTC_SetDuty: [wreg+status,2+status,0]
;PTC_SetDuty@dutyPercent stored from wreg
	movwf	(PTC_SetDuty@dutyPercent)
	line	47
	
l7750:	
;ptc_driver.c: 45: unsigned int dutyRaw;
;ptc_driver.c: 47: if (dutyPercent > 100) {
	movlw	low(065h)
	subwf	(PTC_SetDuty@dutyPercent),w
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l5182
u1400:
	line	48
	
l7752:	
;ptc_driver.c: 48: dutyPercent = 100;
	movlw	low(064h)
	movwf	(PTC_SetDuty@dutyPercent)
	line	49
	
l5182:	
	line	54
;ptc_driver.c: 49: }
;ptc_driver.c: 54: dutyRaw = (unsigned int)dutyPercent * 4;
	movf	(PTC_SetDuty@dutyPercent),w
	movwf	(PTC_SetDuty@dutyRaw)
	clrf	(PTC_SetDuty@dutyRaw+1)
	
l7754:	
	clrc
	rlf	(PTC_SetDuty@dutyRaw),f
	rlf	(PTC_SetDuty@dutyRaw+1),f
	clrc
	rlf	(PTC_SetDuty@dutyRaw),f
	rlf	(PTC_SetDuty@dutyRaw+1),f
	line	58
;ptc_driver.c: 58: CCPR2L = (unsigned char)(dutyRaw >> 2);
	movf	(PTC_SetDuty@dutyRaw+1),w
	movwf	(??_PTC_SetDuty+0)+0+1
	movf	(PTC_SetDuty@dutyRaw),w
	movwf	(??_PTC_SetDuty+0)+0
	clrc
	rrf	(??_PTC_SetDuty+0)+1,f
	rrf	(??_PTC_SetDuty+0)+0,f
	clrc
	rrf	(??_PTC_SetDuty+0)+1,f
	rrf	(??_PTC_SetDuty+0)+0,f
	movf	0+(??_PTC_SetDuty+0)+0,w
	movwf	(27)	;volatile
	line	62
;ptc_driver.c: 62: CCP2CON = (CCP2CON & 0xCF) | ((dutyRaw & 0x03) << 4);
	movf	(PTC_SetDuty@dutyRaw),w
	andlw	03h
	movwf	(??_PTC_SetDuty+0)+0
	swapf	(??_PTC_SetDuty+0)+0,w
	andlw	0f0h
	movwf	(??_PTC_SetDuty+0)+0
	movf	(29),w	;volatile
	andlw	0CFh
	iorwf	0+(??_PTC_SetDuty+0)+0,w
	movwf	(29)	;volatile
	line	63
	
l5183:	
	return
	opt stack 0
GLOBAL	__end_of_PTC_SetDuty
	__end_of_PTC_SetDuty:
	signat	_PTC_SetDuty,4217
	global	_Display_SetAux

;; *************** function _Display_SetAux *****************
;; Defined at:
;;		line 148 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;  aux_id          1    wreg     unsigned char 
;;  state           1   21[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  aux_id          1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Display_SetSegment
;; This function is called by:
;;		_System_Shutdown
;;		_TaskKey
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	148
global __ptext4
__ptext4:	;psect for function _Display_SetAux
psect	text4
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	148
	global	__size_of_Display_SetAux
	__size_of_Display_SetAux	equ	__end_of_Display_SetAux-_Display_SetAux
	
_Display_SetAux:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Display_SetAux: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Display_SetAux@aux_id stored from wreg
	movwf	(Display_SetAux@aux_id)
	line	149
	
l7732:	
;Display.c: 149: switch(aux_id) {
	goto	l7748
	line	150
	
l7734:	
	movf	(Display_SetAux@state),w
	movwf	(Display_SetSegment@state)
	movlw	low(020h)
	fcall	_Display_SetSegment
	goto	l5970
	line	151
	
l7736:	
	movf	(Display_SetAux@state),w
	movwf	(Display_SetSegment@state)
	movlw	low(021h)
	fcall	_Display_SetSegment
	goto	l5970
	line	152
	
l7738:	
	movf	(Display_SetAux@state),w
	movwf	(Display_SetSegment@state)
	movlw	low(023h)
	fcall	_Display_SetSegment
	goto	l5970
	line	153
	
l7740:	
	movf	(Display_SetAux@state),w
	movwf	(Display_SetSegment@state)
	movlw	low(024h)
	fcall	_Display_SetSegment
	goto	l5970
	line	154
	
l7742:	
	movf	(Display_SetAux@state),w
	movwf	(Display_SetSegment@state)
	movlw	low(042h)
	fcall	_Display_SetSegment
	goto	l5970
	line	155
	
l7744:	
	movf	(Display_SetAux@state),w
	movwf	(Display_SetSegment@state)
	movlw	low(043h)
	fcall	_Display_SetSegment
	goto	l5970
	line	149
	
l7748:	
	movf	(Display_SetAux@aux_id),w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           29    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l7734
	xorlw	2^1	; case 2
	skipnz
	goto	l7736
	xorlw	3^2	; case 3
	skipnz
	goto	l7738
	xorlw	4^3	; case 4
	skipnz
	goto	l7740
	xorlw	5^4	; case 5
	skipnz
	goto	l7742
	xorlw	6^5	; case 6
	skipnz
	goto	l7744
	goto	l5970
	opt asmopt_pop

	line	157
	
l5970:	
	return
	opt stack 0
GLOBAL	__end_of_Display_SetAux
	__end_of_Display_SetAux:
	signat	_Display_SetAux,8313
	global	_StepMotorControl

;; *************** function _StepMotorControl *****************
;; Defined at:
;;		line 77 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_StepMotorRun
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	77
global __ptext5
__ptext5:	;psect for function _StepMotorControl
psect	text5
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	77
	global	__size_of_StepMotorControl
	__size_of_StepMotorControl	equ	__end_of_StepMotorControl-_StepMotorControl
	
_StepMotorControl:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _StepMotorControl: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	78
	
l8676:	
;StepMotor.c: 78: if(State == 1) {
		decf	((_State)),w
	btfss	status,2
	goto	u2651
	goto	u2650
u2651:
	goto	l8680
u2650:
	line	79
	
l8678:	
;StepMotor.c: 79: StepMotorRun();
	fcall	_StepMotorRun
	line	80
;StepMotor.c: 80: }
	goto	l3044
	line	82
	
l8680:	
;StepMotor.c: 81: else {
;StepMotor.c: 82: PORTA &= ~((1<<5)|(1<<6)|(1<<7));
	movlw	low(01Fh)
	andwf	(5),f	;volatile
	line	83
	
l8682:	
;StepMotor.c: 83: PORTB &= ~(1<<7);
	bcf	(6)+(7/8),(7)&7	;volatile
	line	85
	
l3044:	
	return
	opt stack 0
GLOBAL	__end_of_StepMotorControl
	__end_of_StepMotorControl:
	signat	_StepMotorControl,89
	global	_StepMotorRun

;; *************** function _StepMotorRun *****************
;; Defined at:
;;		line 70 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_StepMotor
;;		_SwitchDir
;; This function is called by:
;;		_StepMotorControl
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	70
global __ptext6
__ptext6:	;psect for function _StepMotorRun
psect	text6
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	70
	global	__size_of_StepMotorRun
	__size_of_StepMotorRun	equ	__end_of_StepMotorRun-_StepMotorRun
	
_StepMotorRun:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _StepMotorRun: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	71
	
l7932:	
;StepMotor.c: 71: StepMotor(i++, Dir);
	movf	(_Dir),w
	movwf	(StepMotor@Dir)
	movf	(_i),w
	fcall	_StepMotor
	
l7934:	
	incf	(_i),f
	skipnz
	incf	(_i+1),f
	line	72
	
l7936:	
;StepMotor.c: 72: if(i >= 4) i = 0;
	movlw	0
	subwf	(_i+1),w
	movlw	04h
	skipnz
	subwf	(_i),w
	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l7940
u1600:
	
l7938:	
	clrf	(_i)
	clrf	(_i+1)
	line	73
	
l7940:	
;StepMotor.c: 73: SwitchDir();
	fcall	_SwitchDir
	line	74
	
l3039:	
	return
	opt stack 0
GLOBAL	__end_of_StepMotorRun
	__end_of_StepMotorRun:
	signat	_StepMotorRun,89
	global	_SwitchDir

;; *************** function _SwitchDir *****************
;; Defined at:
;;		line 61 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StepMotorRun
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	61
global __ptext7
__ptext7:	;psect for function _SwitchDir
psect	text7
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	61
	global	__size_of_SwitchDir
	__size_of_SwitchDir	equ	__end_of_SwitchDir-_SwitchDir
	
_SwitchDir:	
;incstack = 0
	opt	stack 0
; Regs used in _SwitchDir: [wreg+status,2+status,0]
	line	62
	
l7766:	
;StepMotor.c: 62: StepCount++;
	incf	(_StepCount),f
	skipnz
	incf	(_StepCount+1),f
	line	63
	
l7768:	
;StepMotor.c: 63: if(StepCount >= stepMax) {
	movlw	08h
	subwf	(_StepCount+1),w
	movlw	0
	skipnz
	subwf	(_StepCount),w
	skipc
	goto	u1411
	goto	u1410
u1411:
	goto	l3035
u1410:
	line	64
	
l7770:	
;StepMotor.c: 64: StepCount = 0;
	clrf	(_StepCount)
	clrf	(_StepCount+1)
	line	65
	
l7772:	
;StepMotor.c: 65: Dir = !Dir;
	movf	((_Dir)),w
	btfsc	status,2
	goto	u1421
	goto	u1420
u1421:
	movlw	1
	goto	u1430
u1420:
	movlw	0
u1430:
	movwf	(_Dir)
	line	67
	
l3035:	
	return
	opt stack 0
GLOBAL	__end_of_SwitchDir
	__end_of_SwitchDir:
	signat	_SwitchDir,89
	global	_StepMotor

;; *************** function _StepMotor *****************
;; Defined at:
;;		line 49 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
;; Parameters:    Size  Location     Type
;;  stepIndex       1    wreg     unsigned char 
;;  Dir             1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  stepIndex       1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_SetStep
;; This function is called by:
;;		_StepMotorRun
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	49
global __ptext8
__ptext8:	;psect for function _StepMotor
psect	text8
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	49
	global	__size_of_StepMotor
	__size_of_StepMotor	equ	__end_of_StepMotor-_StepMotor
	
_StepMotor:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _StepMotor: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;StepMotor@stepIndex stored from wreg
	movwf	(StepMotor@stepIndex)
	line	50
	
l7756:	
;StepMotor.c: 50: switch (Dir) {
	goto	l7764
	line	52
	
l7758:	
;StepMotor.c: 52: SetStep(StepTable_L[stepIndex % 4]);
	movf	(StepMotor@stepIndex),w
	andlw	03h
	addlw	low((((_StepTable_L)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	fcall	_SetStep
	line	53
;StepMotor.c: 53: break;
	goto	l3031
	line	55
	
l7760:	
;StepMotor.c: 55: SetStep(StepTable_R[stepIndex % 4]);
	movf	(StepMotor@stepIndex),w
	andlw	03h
	addlw	low((((_StepTable_R)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	fcall	_SetStep
	line	56
;StepMotor.c: 56: break;
	goto	l3031
	line	50
	
l7764:	
	movf	(StepMotor@Dir),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           14     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l7758
	xorlw	1^0	; case 1
	skipnz
	goto	l7760
	goto	l3031
	opt asmopt_pop

	line	58
	
l3031:	
	return
	opt stack 0
GLOBAL	__end_of_StepMotor
	__end_of_StepMotor:
	signat	_StepMotor,8313
	global	_SetStep

;; *************** function _SetStep *****************
;; Defined at:
;;		line 39 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
;; Parameters:    Size  Location     Type
;;  step            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  step            1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_StepMotor
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	39
global __ptext9
__ptext9:	;psect for function _SetStep
psect	text9
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	39
	global	__size_of_SetStep
	__size_of_SetStep	equ	__end_of_SetStep-_SetStep
	
_SetStep:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _SetStep: [wreg+status,2+status,0]
;SetStep@step stored from wreg
	movwf	(SetStep@step)
	line	41
	
l7714:	
;StepMotor.c: 41: PORTA &= ~((1<<5)|(1<<6)|(1<<7));
	movlw	low(01Fh)
	andwf	(5),f	;volatile
	line	42
	
l7716:	
;StepMotor.c: 42: PORTB &= ~(1<<7);
	bcf	(6)+(7/8),(7)&7	;volatile
	line	44
;StepMotor.c: 44: PORTA |= (step & ((1<<7)|(1<<6)|(1<<5)));
	movf	(SetStep@step),w
	andlw	0E0h
	iorwf	(5),f	;volatile
	line	45
;StepMotor.c: 45: PORTB |= (step & (1<<7));
	movf	(SetStep@step),w
	andlw	080h
	iorwf	(6),f	;volatile
	line	46
	
l3024:	
	return
	opt stack 0
GLOBAL	__end_of_SetStep
	__end_of_SetStep:
	signat	_SetStep,4217
	global	_ReadFallDown

;; *************** function _ReadFallDown *****************
;; Defined at:
;;		line 15 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\FallDown.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\FallDown.c"
	line	15
global __ptext10
__ptext10:	;psect for function _ReadFallDown
psect	text10
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\FallDown.c"
	line	15
	global	__size_of_ReadFallDown
	__size_of_ReadFallDown	equ	__end_of_ReadFallDown-_ReadFallDown
	
_ReadFallDown:	
;incstack = 0
	opt	stack 2
; Regs used in _ReadFallDown: [status,2]
	line	16
	
l8684:	
;FallDown.c: 16: if(RB6 == 0) {
	btfsc	(54/8),(54)&7	;volatile
	goto	u2661
	goto	u2660
u2661:
	goto	l8688
u2660:
	line	17
	
l8686:	
;FallDown.c: 17: FallDownState = 1;
	clrf	(_FallDownState)
	incf	(_FallDownState),f
	line	18
;FallDown.c: 18: } else {
	goto	l4472
	line	19
	
l8688:	
;FallDown.c: 19: FallDownState = 0;
	clrf	(_FallDownState)
	line	21
	
l4472:	
	return
	opt stack 0
GLOBAL	__end_of_ReadFallDown
	__end_of_ReadFallDown:
	signat	_ReadFallDown,89
	global	_PTC_Init

;; *************** function _PTC_Init *****************
;; Defined at:
;;		line 16 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\ptc_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\ptc_driver.c"
	line	16
global __ptext11
__ptext11:	;psect for function _PTC_Init
psect	text11
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\ptc_driver.c"
	line	16
	global	__size_of_PTC_Init
	__size_of_PTC_Init	equ	__end_of_PTC_Init-_PTC_Init
	
_PTC_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _PTC_Init: [wreg+status,2]
	line	18
	
l8566:	
;ptc_driver.c: 18: TRISA &= ~(1 << 4);
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	22
	
l8568:	
;ptc_driver.c: 22: PR2 = 99;
	movlw	low(063h)
	movwf	(146)^080h	;volatile
	line	29
;ptc_driver.c: 29: T2CON = 0x05;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	35
;ptc_driver.c: 35: CCP2CON = 0x0C;
	movlw	low(0Ch)
	movwf	(29)	;volatile
	line	38
	
l8570:	
;ptc_driver.c: 38: CCPR2L = 0;
	clrf	(27)	;volatile
	line	41
	
l8572:	
;ptc_driver.c: 41: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	42
	
l5179:	
	return
	opt stack 0
GLOBAL	__end_of_PTC_Init
	__end_of_PTC_Init:
	signat	_PTC_Init,89
	global	_Kscan

;; *************** function _Kscan *****************
;; Defined at:
;;		line 16 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyOnOutput     2   16[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Key.c"
	line	16
global __ptext12
__ptext12:	;psect for function _Kscan
psect	text12
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Key.c"
	line	16
	global	__size_of_Kscan
	__size_of_Kscan	equ	__end_of_Kscan-_Kscan
	
_Kscan:	
;incstack = 0
	opt	stack 2
; Regs used in _Kscan: [wreg+status,2+status,0]
	line	19
	
l8580:	
;Key.c: 18: static unsigned int KeyOldFlag = 0;
;Key.c: 19: unsigned int KeyOnOutput = (unsigned int)((KeyFlag[1]<<8) | KeyFlag[0]);
	movf	0+(_KeyFlag)+01h,w	;volatile
	movwf	(Kscan@KeyOnOutput+1)
	movf	(_KeyFlag),w	;volatile
	movwf	(Kscan@KeyOnOutput)
	line	20
	
l8582:	
;Key.c: 20: if(KeyOnOutput)
	movf	((Kscan@KeyOnOutput)),w
iorwf	((Kscan@KeyOnOutput+1)),w
	btfsc	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l8598
u2490:
	line	22
	
l8584:	
;Key.c: 21: {
;Key.c: 22: if(KeyOnOutput != KeyOldFlag)
	movf	(Kscan@KeyOldFlag+1),w
	xorwf	(Kscan@KeyOnOutput+1),w
	skipz
	goto	u2505
	movf	(Kscan@KeyOldFlag),w
	xorwf	(Kscan@KeyOnOutput),w
u2505:

	skipnz
	goto	u2501
	goto	u2500
u2501:
	goto	l1564
u2500:
	line	24
	
l8586:	
;Key.c: 23: {
;Key.c: 24: KeyOldFlag = KeyOnOutput;
	movf	(Kscan@KeyOnOutput+1),w
	movwf	(Kscan@KeyOldFlag+1)
	movf	(Kscan@KeyOnOutput),w
	movwf	(Kscan@KeyOldFlag)
	line	25
	
l8588:	
;Key.c: 25: if(0x1 & KeyOnOutput){keyValue = 1;}
	btfss	(Kscan@KeyOnOutput),(0)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1556
u2510:
	
l8590:	
	clrf	(_keyValue)
	incf	(_keyValue),f
	goto	l1564
	line	26
	
l1556:	
;Key.c: 26: else if(0x2 & KeyOnOutput){keyValue = 2;}
	btfss	(Kscan@KeyOnOutput),(1)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1558
u2520:
	
l8592:	
	movlw	low(02h)
	movwf	(_keyValue)
	goto	l1564
	line	27
	
l1558:	
;Key.c: 27: else if(0x4 & KeyOnOutput){keyValue = 3;}
	btfss	(Kscan@KeyOnOutput),(2)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1560
u2530:
	
l8594:	
	movlw	low(03h)
	movwf	(_keyValue)
	goto	l1564
	line	28
	
l1560:	
;Key.c: 28: else if(0x8 & KeyOnOutput){keyValue = 4;}
	btfss	(Kscan@KeyOnOutput),(3)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1557
u2540:
	
l8596:	
	movlw	low(04h)
	movwf	(_keyValue)
	goto	l1564
	line	29
	
l1557:	
	goto	l1564
	line	33
	
l8598:	
;Key.c: 31: else
;Key.c: 32: {
;Key.c: 33: KeyOldFlag = 0;
	clrf	(Kscan@KeyOldFlag)
	clrf	(Kscan@KeyOldFlag+1)
	line	34
;Key.c: 34: keyValue = 0;
	clrf	(_keyValue)
	line	36
	
l1564:	
	return
	opt stack 0
GLOBAL	__end_of_Kscan
	__end_of_Kscan:
	signat	_Kscan,89
	global	_InitTimer2

;; *************** function _InitTimer2 *****************
;; Defined at:
;;		line 29 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
	line	29
global __ptext13
__ptext13:	;psect for function _InitTimer2
psect	text13
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
	line	29
	global	__size_of_InitTimer2
	__size_of_InitTimer2	equ	__end_of_InitTimer2-_InitTimer2
	
_InitTimer2:	
;incstack = 0
	opt	stack 2
; Regs used in _InitTimer2: [wreg]
	line	30
	
l8544:	
;main.c: 30: PR2 = 124;
	movlw	low(07Ch)
	movwf	(146)^080h	;volatile
	line	31
	
l8546:	
;main.c: 31: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	32
	
l8548:	
;main.c: 32: TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	33
;main.c: 33: T2CON = 0x05;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	34
	
l789:	
	return
	opt stack 0
GLOBAL	__end_of_InitTimer2
	__end_of_InitTimer2:
	signat	_InitTimer2,89
	global	_InitStepMotor

;; *************** function _InitStepMotor *****************
;; Defined at:
;;		line 29 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	29
global __ptext14
__ptext14:	;psect for function _InitStepMotor
psect	text14
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\StepMotor.c"
	line	29
	global	__size_of_InitStepMotor
	__size_of_InitStepMotor	equ	__end_of_InitStepMotor-_InitStepMotor
	
_InitStepMotor:	
;incstack = 0
	opt	stack 2
; Regs used in _InitStepMotor: [wreg+status,2+status,0]
	line	31
	
l8556:	
;StepMotor.c: 31: TRISA &= ~((1<<5)|(1<<6)|(1<<7));
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(133)^080h,f	;volatile
	line	32
	
l8558:	
;StepMotor.c: 32: TRISB &= ~(1<<7);
	bcf	(134)^080h+(7/8),(7)&7	;volatile
	line	34
;StepMotor.c: 34: PORTA &= ~((1<<5)|(1<<6)|(1<<7));
	movlw	low(01Fh)
	bcf	status, 5	;RP0=0, select bank0
	andwf	(5),f	;volatile
	line	35
	
l8560:	
;StepMotor.c: 35: PORTB &= ~(1<<7);
	bcf	(6)+(7/8),(7)&7	;volatile
	line	36
	
l3021:	
	return
	opt stack 0
GLOBAL	__end_of_InitStepMotor
	__end_of_InitStepMotor:
	signat	_InitStepMotor,89
	global	_InitPTC

;; *************** function _InitPTC *****************
;; Defined at:
;;		line 16 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
	line	16
global __ptext15
__ptext15:	;psect for function _InitPTC
psect	text15
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
	line	16
	global	__size_of_InitPTC
	__size_of_InitPTC	equ	__end_of_InitPTC-_InitPTC
	
_InitPTC:	
;incstack = 0
	opt	stack 2
; Regs used in _InitPTC: [status,2]
	line	19
	
l8562:	
;PWM.c: 19: TRISA4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1068/8)^080h,(1068)&7	;volatile
	line	20
;PWM.c: 20: RA4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(44/8),(44)&7	;volatile
	line	21
	
l8564:	
;PWM.c: 21: PWM_Duty_PTC = 0;
	clrf	(_PWM_Duty_PTC)
	line	22
	
l3754:	
	return
	opt stack 0
GLOBAL	__end_of_InitPTC
	__end_of_InitPTC:
	signat	_InitPTC,89
	global	_InitMotor

;; *************** function _InitMotor *****************
;; Defined at:
;;		line 8 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1,group=0
	line	8
global __ptext16
__ptext16:	;psect for function _InitMotor
psect	text16
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
	line	8
	global	__size_of_InitMotor
	__size_of_InitMotor	equ	__end_of_InitMotor-_InitMotor
	
_InitMotor:	
;incstack = 0
	opt	stack 2
; Regs used in _InitMotor: [status,2]
	line	11
	
l8552:	
;PWM.c: 11: TRISA3 = 0;
	bcf	(1067/8)^080h,(1067)&7	;volatile
	line	12
;PWM.c: 12: RA3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(43/8),(43)&7	;volatile
	line	13
	
l8554:	
;PWM.c: 13: PWM_Duty_Motor = 0;
	clrf	(_PWM_Duty_Motor)
	line	14
	
l3751:	
	return
	opt stack 0
GLOBAL	__end_of_InitMotor
	__end_of_InitMotor:
	signat	_InitMotor,89
	global	_InitKey

;; *************** function _InitKey *****************
;; Defined at:
;;		line 9 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Key.c"
	line	9
global __ptext17
__ptext17:	;psect for function _InitKey
psect	text17
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Key.c"
	line	9
	global	__size_of_InitKey
	__size_of_InitKey	equ	__end_of_InitKey-_InitKey
	
_InitKey:	
;incstack = 0
	opt	stack 2
; Regs used in _InitKey: [wreg+status,2+status,0]
	line	10
	
l8550:	
;Key.c: 10: TRISB |= 0B00001111;
	movlw	low(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(134)^080h,f	;volatile
	line	11
	
l1549:	
	return
	opt stack 0
GLOBAL	__end_of_InitKey
	__end_of_InitKey:
	signat	_InitKey,89
	global	_InitFallDown

;; *************** function _InitFallDown *****************
;; Defined at:
;;		line 7 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\FallDown.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\FallDown.c"
	line	7
global __ptext18
__ptext18:	;psect for function _InitFallDown
psect	text18
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\FallDown.c"
	line	7
	global	__size_of_InitFallDown
	__size_of_InitFallDown	equ	__end_of_InitFallDown-_InitFallDown
	
_InitFallDown:	
;incstack = 0
	opt	stack 2
; Regs used in _InitFallDown: []
	line	8
	
l8574:	
;FallDown.c: 8: OPTION_REG &= 0B01111111;
	bcf	(129)^080h+(7/8),(7)&7	;volatile
	line	9
;FallDown.c: 9: WPUB6 = 1;
	bsf	(1198/8)^080h,(1198)&7	;volatile
	line	10
;FallDown.c: 10: TRISB6 = 1;
	bsf	(1078/8)^080h,(1078)&7	;volatile
	line	11
	
l4467:	
	return
	opt stack 0
GLOBAL	__end_of_InitFallDown
	__end_of_InitFallDown:
	signat	_InitFallDown,89
	global	_Display_UpdateData

;; *************** function _Display_UpdateData *****************
;; Defined at:
;;		line 160 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Display_SetDigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	160
global __ptext19
__ptext19:	;psect for function _Display_UpdateData
psect	text19
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	160
	global	__size_of_Display_UpdateData
	__size_of_Display_UpdateData	equ	__end_of_Display_UpdateData-_Display_UpdateData
	
_Display_UpdateData:	
;incstack = 0
	opt	stack 0
; Regs used in _Display_UpdateData: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	161
	
l8578:	
;Display.c: 161: Display_SetDigit(1, Dis_SC0);
	movf	(_Dis_SC0),w
	movwf	(Display_SetDigit@num)
	movlw	low(01h)
	fcall	_Display_SetDigit
	line	162
;Display.c: 162: Display_SetDigit(2, Dis_SC1);
	movf	(_Dis_SC1),w
	movwf	(Display_SetDigit@num)
	movlw	low(02h)
	fcall	_Display_SetDigit
	line	163
	
l5973:	
	return
	opt stack 0
GLOBAL	__end_of_Display_UpdateData
	__end_of_Display_UpdateData:
	signat	_Display_UpdateData,89
	global	_Display_SetDigit

;; *************** function _Display_SetDigit *****************
;; Defined at:
;;		line 121 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;  digit_pos       1    wreg     unsigned char 
;;  num             1   21[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  digit_pos       1   22[BANK0 ] unsigned char 
;;  map             1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Display_SetSegment
;; This function is called by:
;;		_Display_UpdateData
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1,group=0
	line	121
global __ptext20
__ptext20:	;psect for function _Display_SetDigit
psect	text20
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	121
	global	__size_of_Display_SetDigit
	__size_of_Display_SetDigit	equ	__end_of_Display_SetDigit-_Display_SetDigit
	
_Display_SetDigit:	
;incstack = 0
;; using string table level
	opt	stack 1
; Regs used in _Display_SetDigit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Display_SetDigit@digit_pos stored from wreg
	movwf	(Display_SetDigit@digit_pos)
	line	123
	
l8032:	
	line	124
	
l8034:	
;Display.c: 124: if (num <= 9) map = DIGIT_MAP[num];
	movlw	low(0Ah)
	subwf	(Display_SetDigit@num),w
	skipnc
	goto	u1771
	goto	u1770
u1771:
	goto	l8038
u1770:
	
l8036:	
	movf	(Display_SetDigit@num),w
	addlw	low((((_DIGIT_MAP)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(Display_SetDigit@map)
	goto	l8040
	line	125
	
l8038:	
;Display.c: 125: else map = 0;
	clrf	(Display_SetDigit@map)
	line	129
	
l8040:	
;Display.c: 129: if (digit_pos == 1) {
		decf	((Display_SetDigit@digit_pos)),w
	btfss	status,2
	goto	u1781
	goto	u1780
u1781:
	goto	l8044
u1780:
	line	130
	
l8042:	
;Display.c: 130: Display_SetSegment(0x01, (map & 0x01));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(01h)
	andwf	(Display_SetSegment@state),f
	movlw	low(01h)
	fcall	_Display_SetSegment
	line	131
;Display.c: 131: Display_SetSegment(0x02, (map & 0x02));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(02h)
	andwf	(Display_SetSegment@state),f
	movlw	low(02h)
	fcall	_Display_SetSegment
	line	132
;Display.c: 132: Display_SetSegment(0x03, (map & 0x04));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(04h)
	andwf	(Display_SetSegment@state),f
	movlw	low(03h)
	fcall	_Display_SetSegment
	line	133
;Display.c: 133: Display_SetSegment(0x04, (map & 0x08));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(08h)
	andwf	(Display_SetSegment@state),f
	movlw	low(04h)
	fcall	_Display_SetSegment
	line	134
;Display.c: 134: Display_SetSegment(0x30, (map & 0x10));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(010h)
	andwf	(Display_SetSegment@state),f
	movlw	low(030h)
	fcall	_Display_SetSegment
	line	135
;Display.c: 135: Display_SetSegment(0x31, (map & 0x20));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(020h)
	andwf	(Display_SetSegment@state),f
	movlw	low(031h)
	fcall	_Display_SetSegment
	line	136
;Display.c: 136: Display_SetSegment(0x32, (map & 0x40));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(040h)
	andwf	(Display_SetSegment@state),f
	movlw	low(032h)
	fcall	_Display_SetSegment
	line	137
;Display.c: 137: } else if (digit_pos == 2) {
	goto	l5959
	
l8044:	
		movlw	2
	xorwf	((Display_SetDigit@digit_pos)),w
	btfss	status,2
	goto	u1791
	goto	u1790
u1791:
	goto	l5959
u1790:
	line	138
	
l8046:	
;Display.c: 138: Display_SetSegment(0x10, (map & 0x01));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(01h)
	andwf	(Display_SetSegment@state),f
	movlw	low(010h)
	fcall	_Display_SetSegment
	line	139
;Display.c: 139: Display_SetSegment(0x12, (map & 0x02));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(02h)
	andwf	(Display_SetSegment@state),f
	movlw	low(012h)
	fcall	_Display_SetSegment
	line	140
;Display.c: 140: Display_SetSegment(0x13, (map & 0x04));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(04h)
	andwf	(Display_SetSegment@state),f
	movlw	low(013h)
	fcall	_Display_SetSegment
	line	141
;Display.c: 141: Display_SetSegment(0x14, (map & 0x08));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(08h)
	andwf	(Display_SetSegment@state),f
	movlw	low(014h)
	fcall	_Display_SetSegment
	line	142
;Display.c: 142: Display_SetSegment(0x34, (map & 0x10));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(010h)
	andwf	(Display_SetSegment@state),f
	movlw	low(034h)
	fcall	_Display_SetSegment
	line	143
;Display.c: 143: Display_SetSegment(0x40, (map & 0x20));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(020h)
	andwf	(Display_SetSegment@state),f
	movlw	low(040h)
	fcall	_Display_SetSegment
	line	144
;Display.c: 144: Display_SetSegment(0x41, (map & 0x40));
	movf	(Display_SetDigit@map),w
	movwf	(Display_SetSegment@state)
	movlw	low(040h)
	andwf	(Display_SetSegment@state),f
	movlw	low(041h)
	fcall	_Display_SetSegment
	line	146
	
l5959:	
	return
	opt stack 0
GLOBAL	__end_of_Display_SetDigit
	__end_of_Display_SetDigit:
	signat	_Display_SetDigit,8313
	global	_Display_SetSegment

;; *************** function _Display_SetSegment *****************
;; Defined at:
;;		line 83 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;  seg_code        1    wreg     unsigned char 
;;  state           1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  seg_code        1   18[BANK0 ] unsigned char 
;;  sink            1   20[BANK0 ] unsigned char 
;;  src             1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_SetDigit
;;		_Display_SetAux
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1,group=0
	line	83
global __ptext21
__ptext21:	;psect for function _Display_SetSegment
psect	text21
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	83
	global	__size_of_Display_SetSegment
	__size_of_Display_SetSegment	equ	__end_of_Display_SetSegment-_Display_SetSegment
	
_Display_SetSegment:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _Display_SetSegment: [wreg-fsr0h+status,2+status,0]
;Display_SetSegment@seg_code stored from wreg
	movwf	(Display_SetSegment@seg_code)
	line	84
	
l7718:	
;Display.c: 84: uint8_t src = (seg_code >> 4) & 0x0F;
	swapf	(Display_SetSegment@seg_code),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(Display_SetSegment@src)
	movlw	low(0Fh)
	andwf	(Display_SetSegment@src),f
	line	85
	
l7720:	
;Display.c: 85: uint8_t sink = seg_code & 0x0F;
	movf	(Display_SetSegment@seg_code),w
	movwf	(Display_SetSegment@sink)
	
l7722:	
	movlw	low(0Fh)
	andwf	(Display_SetSegment@sink),f
	line	87
;Display.c: 87: if (src > 4 || sink > 4) return;
	movlw	low(05h)
	subwf	(Display_SetSegment@src),w
	skipnc
	goto	u1351
	goto	u1350
u1351:
	goto	l5940
u1350:
	
l7724:	
	movlw	low(05h)
	subwf	(Display_SetSegment@sink),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l7726
u1360:
	goto	l5940
	line	89
	
l7726:	
;Display.c: 89: if (state) {
	movf	((Display_SetSegment@state)),w
	btfsc	status,2
	goto	u1371
	goto	u1370
u1371:
	goto	l7730
u1370:
	line	90
	
l7728:	
;Display.c: 90: disp_buffer[src] |= (1 << sink);
	movf	(Display_SetSegment@src),w
	addlw	low(_disp_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(01h)
	movwf	(??_Display_SetSegment+0)+0
	incf	(Display_SetSegment@sink),w
	goto	u1384
u1385:
	clrc
	rlf	(??_Display_SetSegment+0)+0,f
u1384:
	addlw	-1
	skipz
	goto	u1385
	movf	0+(??_Display_SetSegment+0)+0,w
	bcf	status, 7	;select IRP bank0
	iorwf	indf,f
	line	91
;Display.c: 91: } else {
	goto	l5940
	line	92
	
l7730:	
;Display.c: 92: disp_buffer[src] &= ~(1 << sink);
	movf	(Display_SetSegment@src),w
	addlw	low(_disp_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	movlw	low(01h)
	movwf	(??_Display_SetSegment+0)+0
	incf	(Display_SetSegment@sink),w
	goto	u1394
u1395:
	clrc
	rlf	(??_Display_SetSegment+0)+0,f
u1394:
	addlw	-1
	skipz
	goto	u1395
	movf	0+(??_Display_SetSegment+0)+0,w
	xorlw	0ffh
	bcf	status, 7	;select IRP bank0
	andwf	indf,f
	line	94
	
l5940:	
	return
	opt stack 0
GLOBAL	__end_of_Display_SetSegment
	__end_of_Display_SetSegment:
	signat	_Display_SetSegment,8313
	global	_Display_Init

;; *************** function _Display_Init *****************
;; Defined at:
;;		line 64 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Display_Clear
;;		_SetPin
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1,group=0
	line	64
global __ptext22
__ptext22:	;psect for function _Display_Init
psect	text22
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	64
	global	__size_of_Display_Init
	__size_of_Display_Init	equ	__end_of_Display_Init-_Display_Init
	
_Display_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _Display_Init: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	66
	
l8576:	
;Display.c: 66: SetPin(0, 0);
	clrf	(SetPin@mode)
	movlw	low(0)
	fcall	_SetPin
	line	67
;Display.c: 67: SetPin(1, 0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(SetPin@mode)
	movlw	low(01h)
	fcall	_SetPin
	line	68
;Display.c: 68: SetPin(2, 0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(SetPin@mode)
	movlw	low(02h)
	fcall	_SetPin
	line	69
;Display.c: 69: SetPin(3, 0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(SetPin@mode)
	movlw	low(03h)
	fcall	_SetPin
	line	70
;Display.c: 70: SetPin(4, 0);
	bcf	status, 5	;RP0=0, select bank0
	clrf	(SetPin@mode)
	movlw	low(04h)
	fcall	_SetPin
	line	73
;Display.c: 73: Display_Clear();
	fcall	_Display_Clear
	line	74
	
l5929:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Init
	__end_of_Display_Init:
	signat	_Display_Init,89
	global	_SetPin

;; *************** function _SetPin *****************
;; Defined at:
;;		line 33 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;  pin_idx         1    wreg     unsigned char 
;;  mode            1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pin_idx         1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Init
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1,group=0
	line	33
global __ptext23
__ptext23:	;psect for function _SetPin
psect	text23
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	33
	global	__size_of_SetPin
	__size_of_SetPin	equ	__end_of_SetPin-_SetPin
	
_SetPin:	
;incstack = 0
	opt	stack 1
; Regs used in _SetPin: [wreg-fsr0h+status,2+status,0]
;SetPin@pin_idx stored from wreg
	movwf	(SetPin@pin_idx)
	line	40
	
l7942:	
;Display.c: 40: switch (pin_idx) {
	goto	l7986
	line	42
	
l7944:	
;Display.c: 42: if (mode == 0) TRISA |= (1<<0);
	movf	((SetPin@mode)),w
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l5901
u1610:
	
l7946:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	goto	l5926
	line	43
	
l5901:	
;Display.c: 43: else { TRISA &= ~(1<<0); if(mode==1) PORTA |= (1<<0); else PORTA &= ~(1<<0); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	
l7948:	
	bcf	status, 5	;RP0=0, select bank0
		decf	((SetPin@mode)),w
	btfss	status,2
	goto	u1621
	goto	u1620
u1621:
	goto	l5903
u1620:
	
l7950:	
	bsf	(5)+(0/8),(0)&7	;volatile
	goto	l5926
	
l5903:	
	bcf	(5)+(0/8),(0)&7	;volatile
	goto	l5926
	line	46
	
l7952:	
;Display.c: 46: if (mode == 0) TRISA |= (1<<1);
	movf	((SetPin@mode)),w
	btfss	status,2
	goto	u1631
	goto	u1630
u1631:
	goto	l5907
u1630:
	
l7954:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(1/8),(1)&7	;volatile
	goto	l5926
	line	47
	
l5907:	
;Display.c: 47: else { TRISA &= ~(1<<1); if(mode==1) PORTA |= (1<<1); else PORTA &= ~(1<<1); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	
l7956:	
	bcf	status, 5	;RP0=0, select bank0
		decf	((SetPin@mode)),w
	btfss	status,2
	goto	u1641
	goto	u1640
u1641:
	goto	l5909
u1640:
	
l7958:	
	bsf	(5)+(1/8),(1)&7	;volatile
	goto	l5926
	
l5909:	
	bcf	(5)+(1/8),(1)&7	;volatile
	goto	l5926
	line	50
	
l7960:	
;Display.c: 50: if (mode == 0) TRISA |= (1<<2);
	movf	((SetPin@mode)),w
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l5912
u1650:
	
l7962:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(2/8),(2)&7	;volatile
	goto	l5926
	line	51
	
l5912:	
;Display.c: 51: else { TRISA &= ~(1<<2); if(mode==1) PORTA |= (1<<2); else PORTA &= ~(1<<2); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	
l7964:	
	bcf	status, 5	;RP0=0, select bank0
		decf	((SetPin@mode)),w
	btfss	status,2
	goto	u1661
	goto	u1660
u1661:
	goto	l5914
u1660:
	
l7966:	
	bsf	(5)+(2/8),(2)&7	;volatile
	goto	l5926
	
l5914:	
	bcf	(5)+(2/8),(2)&7	;volatile
	goto	l5926
	line	54
	
l7968:	
;Display.c: 54: if (mode == 0) TRISB |= (1<<4);
	movf	((SetPin@mode)),w
	btfss	status,2
	goto	u1671
	goto	u1670
u1671:
	goto	l5917
u1670:
	
l7970:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	goto	l5926
	line	55
	
l5917:	
;Display.c: 55: else { TRISB &= ~(1<<4); if(mode==1) PORTB |= (1<<4); else PORTB &= ~(1<<4); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	
l7972:	
	bcf	status, 5	;RP0=0, select bank0
		decf	((SetPin@mode)),w
	btfss	status,2
	goto	u1681
	goto	u1680
u1681:
	goto	l5919
u1680:
	
l7974:	
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	l5926
	
l5919:	
	bcf	(6)+(4/8),(4)&7	;volatile
	goto	l5926
	line	58
	
l7976:	
;Display.c: 58: if (mode == 0) TRISB |= (1<<5);
	movf	((SetPin@mode)),w
	btfss	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l5922
u1690:
	
l7978:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(134)^080h+(5/8),(5)&7	;volatile
	goto	l5926
	line	59
	
l5922:	
;Display.c: 59: else { TRISB &= ~(1<<5); if(mode==1) PORTB |= (1<<5); else PORTB &= ~(1<<5); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	
l7980:	
	bcf	status, 5	;RP0=0, select bank0
		decf	((SetPin@mode)),w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l5924
u1700:
	
l7982:	
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	l5926
	
l5924:	
	bcf	(6)+(5/8),(5)&7	;volatile
	goto	l5926
	line	40
	
l7986:	
	movf	(SetPin@pin_idx),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l7944
	xorlw	1^0	; case 1
	skipnz
	goto	l7952
	xorlw	2^1	; case 2
	skipnz
	goto	l7960
	xorlw	3^2	; case 3
	skipnz
	goto	l7968
	xorlw	4^3	; case 4
	skipnz
	goto	l7976
	goto	l5926
	opt asmopt_pop

	line	62
	
l5926:	
	return
	opt stack 0
GLOBAL	__end_of_SetPin
	__end_of_SetPin:
	signat	_SetPin,8313
	global	_Display_Clear

;; *************** function _Display_Clear *****************
;; Defined at:
;;		line 76 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 200/0
;;		On exit  : B00/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Init
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1,group=0
	line	76
global __ptext24
__ptext24:	;psect for function _Display_Clear
psect	text24
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	76
	global	__size_of_Display_Clear
	__size_of_Display_Clear	equ	__end_of_Display_Clear-_Display_Clear
	
_Display_Clear:	
;incstack = 0
	opt	stack 1
; Regs used in _Display_Clear: [wreg-fsr0h+status,2+status,0]
	line	78
	
l7988:	
;Display.c: 77: uint8_t i;
;Display.c: 78: for(i=0; i<5; i++) {
	bcf	status, 5	;RP0=0, select bank0
	clrf	(Display_Clear@i)
	line	79
	
l7994:	
;Display.c: 79: disp_buffer[i] = 0;
	movf	(Display_Clear@i),w
	addlw	low(_disp_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	78
	
l7996:	
	incf	(Display_Clear@i),f
	
l7998:	
	movlw	low(05h)
	subwf	(Display_Clear@i),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l7994
u1710:
	line	81
	
l5934:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Clear
	__end_of_Display_Clear:
	signat	_Display_Clear,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 17 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Display
;;		_PWM_Ctr_Motor
;;		_PWM_Ctr_PTC
;;		___CMS_CheckTouchKey
;;		___CMS_GetTouchKeyValue
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
	line	17
global __ptext25
__ptext25:	;psect for function _ISR
psect	text25
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\main.c"
	line	17
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text25
	line	18
	
i1l8690:	
;main.c: 18: if(TMR2IF) {
	btfss	(97/8),(97)&7	;volatile
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l786
u267_20:
	line	19
	
i1l8692:	
;main.c: 19: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	20
	
i1l8694:	
;main.c: 20: tcount++;
	incf	(_tcount),f
	line	21
	
i1l8696:	
;main.c: 21: Display();
	fcall	_Display
	line	22
	
i1l8698:	
;main.c: 22: PWM_Ctr_Motor();
	fcall	_PWM_Ctr_Motor
	line	23
	
i1l8700:	
;main.c: 23: PWM_Ctr_PTC();
	fcall	_PWM_Ctr_PTC
	line	24
	
i1l8702:	
;main.c: 24: __CMS_GetTouchKeyValue();
	fcall	___CMS_GetTouchKeyValue
	line	25
	
i1l8704:	
;main.c: 25: __CMS_CheckTouchKey();
	fcall	___CMS_CheckTouchKey
	line	27
	
i1l786:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	___CMS_GetTouchKeyValue

;; *************** function ___CMS_GetTouchKeyValue *****************
;; Defined at:
;;		line 371 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/300
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1,group=1
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	371
global __ptext26
__ptext26:	;psect for function ___CMS_GetTouchKeyValue
psect	text26
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	371
	global	__size_of___CMS_GetTouchKeyValue
	__size_of___CMS_GetTouchKeyValue	equ	__end_of___CMS_GetTouchKeyValue-___CMS_GetTouchKeyValue
	
___CMS_GetTouchKeyValue:	
;incstack = 0
	opt	stack 1
; Regs used in ___CMS_GetTouchKeyValue: [wreg-fsr0h+status,2+status,0+pclath]
	line	374
	
i1l8414:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 374: RAMCTRBack = __CMS_RAMCTR;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(415)^0180h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_RAMCTRBack)	;volatile
	line	375
	
i1l8416:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 375: if(b_over1)
	btfss	(_b_over1/8),(_b_over1)&7	;volatile
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l8496
u234_20:
	line	377
	
i1l8418:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 376: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 377: if(!b_over0)
	btfsc	(_b_over0/8),(_b_over0)&7	;volatile
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l8456
u235_20:
	line	379
	
i1l8420:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 378: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 379: b_over0 = 1;
	bsf	(_b_over0/8),(_b_over0)&7	;volatile
	line	380
	
i1l8422:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 380: __CMS_KEYCON0 &= ~0B00111101;
	movlw	low(0C2h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(400)^0180h,f	;volatile
	line	381
;CMS_CheckTouch_PT_79F72x_V1.01.c: 381: __CMS_KEYCON1 &= ~0B00001111;
	movlw	low(0F0h)
	andwf	(401)^0180h,f	;volatile
	line	382
	
i1l8424:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 382: __CMS_KEYCON1 |= (Table_KeyChannel[KeyAdrCnt] & 0x0f);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	0Fh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	iorwf	(401)^0180h,f	;volatile
	line	383
	
i1l8426:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 383: __CMS_KEYCON2 &= ~0B00000100;
	bcf	(402)^0180h+(2/8),(2)&7	;volatile
	line	384
	
i1l8428:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 384: if(Table_KeyChannel[KeyAdrCnt] & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	010h
	btfsc	status,2
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l8432
u236_20:
	line	386
	
i1l8430:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 385: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 386: __CMS_KEYCON2 |= 0x04;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(402)^0180h+(2/8),(2)&7	;volatile
	line	388
	
i1l8432:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 387: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 388: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	389
	
i1l8434:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 389: IntCurStepTemp = __CMS_CurStep[KeyAdrCnt] & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low(464|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(_IntCurStepTemp)	;volatile
	
i1l8436:	
	movlw	low(0Fh)
	andwf	(_IntCurStepTemp),f	;volatile
	line	390
	
i1l8438:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 390: __CMS_KEYCON5 &= ~0B00001110;
	movlw	low(0F1h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(405)^0180h,f	;volatile
	line	391
	
i1l8440:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 391: __CMS_KEYCON5 |= __CMS_CurStep_Table[IntCurStepTemp];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_IntCurStepTemp),w
	addlw	low((((___CMS_CurStep_Table)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	iorwf	(405)^0180h,f	;volatile
	line	392
	
i1l8442:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 392: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	movwf	(415)^0180h	;volatile
	line	393
	
i1l8444:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 393: __CMS_KEYCON6 = ITRIM_Ram[KeyAdrCnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(406)^0180h	;volatile
	line	396
	
i1l8446:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(407)^0180h	;volatile
	line	402
;CMS_CheckTouch_PT_79F72x_V1.01.c: 397: }
	
i1l8450:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 401: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 402: __CMS_KEYCON0 |= 0x01;
	bsf	(400)^0180h+(0/8),(0)&7	;volatile
	line	403
	
i1l8452:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 403: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	movwf	(415)^0180h	;volatile
	line	404
	
i1l8454:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 404: TimeLimit = 100;
	movlw	064h
	movwf	(470)^0180h	;volatile
	clrf	(470+1)^0180h	;volatile
	line	405
;CMS_CheckTouch_PT_79F72x_V1.01.c: 405: }
	goto	i1l8496
	line	408
	
i1l8456:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 406: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 407: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 408: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	409
	
i1l8458:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 409: if(__CMS_KEYCON0 & 0x80)
	btfss	(400)^0180h,(7)&7	;volatile
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l6158
u237_20:
	line	411
	
i1l8460:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 410: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 411: b_over0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_b_over0/8),(_b_over0)&7	;volatile
	line	412
	
i1l8462:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 412: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	413
	
i1l8464:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 413: if(CurCheckOver)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_CurCheckOver/8),(_CurCheckOver)&7	;volatile
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l8470
u238_20:
	line	415
	
i1l8466:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 414: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 415: KeyMaxTemp = (unsigned int)(__CMS_KDMAXH << 8) | __CMS_KDMAXL;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(412)^0180h,w	;volatile
	movwf	(464+1)^0180h	;volatile
	movf	(411)^0180h,w	;volatile
	movwf	(464)^0180h	;volatile
	line	416
;CMS_CheckTouch_PT_79F72x_V1.01.c: 416: KeyMinTemp = (unsigned int)(__CMS_KDMINH << 8) | __CMS_KDMINL;
	movf	(410)^0180h,w	;volatile
	movwf	(466+1)^0180h	;volatile
	movf	(409)^0180h,w	;volatile
	movwf	(466)^0180h	;volatile
	line	428
	
i1l8468:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 428: KeySum[KeyAdrCnt] = (unsigned int)(__CMS_KDARGH << 8) | __CMS_KDARGL;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(_KeyAdrCnt),w	;volatile
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(413)^0180h,w	;volatile
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(414)^0180h,w	;volatile
	movwf	indf
	line	429
;CMS_CheckTouch_PT_79F72x_V1.01.c: 429: }
	goto	i1l8472
	line	432
	
i1l8470:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 430: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 431: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 432: KeySum[KeyAdrCnt] = (unsigned int)(__CMS_KDARGH << 8) | __CMS_KDARGL;
	clrc
	rlf	(_KeyAdrCnt),w	;volatile
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(413)^0180h,w	;volatile
	bsf	status, 7	;select IRP bank3
	movwf	indf
	incf	fsr0,f
	movf	(414)^0180h,w	;volatile
	movwf	indf
	line	434
	
i1l8472:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 433: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 434: __CMS_KEYCON0 &= ~0B00000101;
	movlw	low(0FAh)
	andwf	(400)^0180h,f	;volatile
	line	435
	
i1l8474:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyAdrCnt),f	;volatile
	subwf	((_KeyAdrCnt)),w	;volatile
	skipc
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l6157
u239_20:
	line	437
	
i1l8476:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 436: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 437: b_over1 = 0;
	bcf	(_b_over1/8),(_b_over1)&7	;volatile
	line	438
	
i1l8478:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 438: KeyAdrCnt = 0;
	clrf	(_KeyAdrCnt)	;volatile
	line	439
	
i1l8480:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 439: __CMS_KEYCON2 &= ~0B00000001;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(402)^0180h+(0/8),(0)&7	;volatile
	line	440
	
i1l8482:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 440: __CMS_KEYCON3 &= ~0B10000000;
	bcf	(403)^0180h+(7/8),(7)&7	;volatile
	goto	i1l8496
	line	443
	
i1l6158:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 443: else if((__CMS_KEYCON0 & 0x04) || (0 == (--TimeLimit)))
	btfsc	(400)^0180h,(2)&7	;volatile
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l6165
u240_20:
	
i1l8484:	
	movlw	01h
	subwf	(470)^0180h,f	;volatile
	movlw	0
	skipc
	decf	(470+1)^0180h,f	;volatile
	subwf	(470+1)^0180h,f	;volatile
	movf	(((470)^0180h)),w	;volatile
iorwf	(((470+1)^0180h)),w	;volatile
	btfss	status,2
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l6157
u241_20:
	
i1l6165:	
	line	445
;CMS_CheckTouch_PT_79F72x_V1.01.c: 444: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 445: b_over0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_b_over0/8),(_b_over0)&7	;volatile
	line	446
;CMS_CheckTouch_PT_79F72x_V1.01.c: 446: b_over1 = 0;
	bcf	(_b_over1/8),(_b_over1)&7	;volatile
	line	447
	
i1l8486:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 447: KeyAdrCnt = 0;
	clrf	(_KeyAdrCnt)	;volatile
	line	448
	
i1l8488:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 448: __CMS_KEYCON0 &= ~0B00000101;
	movlw	low(0FAh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(400)^0180h,f	;volatile
	line	449
	
i1l8490:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 449: __CMS_KEYCON2 &= ~0B00000001;
	bcf	(402)^0180h+(0/8),(0)&7	;volatile
	line	450
	
i1l8492:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 450: __CMS_KEYCON3 &= ~0B10000000;
	bcf	(403)^0180h+(7/8),(7)&7	;volatile
	line	451
	
i1l8494:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 451: b_onceerr = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_b_onceerr/8),(_b_onceerr)&7	;volatile
	goto	i1l8496
	line	453
	
i1l6157:	
	line	455
	
i1l8496:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 452: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 453: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 454: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 455: __CMS_RAMCTR = RAMCTRBack;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RAMCTRBack),w	;volatile
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	456
	
i1l6166:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_GetTouchKeyValue
	__end_of___CMS_GetTouchKeyValue:
	signat	___CMS_GetTouchKeyValue,89
	global	___CMS_CheckTouchKey

;; *************** function ___CMS_CheckTouchKey *****************
;; Defined at:
;;		line 895 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/300
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___CMS_CheckKeyOldValue
;;		___CMS_CheckOnceResult
;;		___CMS_CheckValidTime
;;		___CMS_CurAdjust
;;		___CMS_KeyDatIIR
;;		___CMS_KeyModeSet
;;		___CMS_KeyStopClear
;;		___CMS_Key_UNNOL_Check
;;		___CMS_NewRAMClr
;;		___GET_32M_FREDAT
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1,group=1
	line	895
global __ptext27
__ptext27:	;psect for function ___CMS_CheckTouchKey
psect	text27
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	895
	global	__size_of___CMS_CheckTouchKey
	__size_of___CMS_CheckTouchKey	equ	__end_of___CMS_CheckTouchKey-___CMS_CheckTouchKey
	
___CMS_CheckTouchKey:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___CMS_CheckTouchKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	899
	
i1l8498:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 897: static bit SDfst = 0;
;CMS_CheckTouch_PT_79F72x_V1.01.c: 899: if(CurCheckOver)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_CurCheckOver/8),(_CurCheckOver)&7	;volatile
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l6283
u242_20:
	line	901
	
i1l8500:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 900: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 901: if(!b_over1)
	btfsc	(_b_over1/8),(_b_over1)&7	;volatile
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l6292
u243_20:
	line	903
	
i1l8502:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 902: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 903: if(!b_onceerr)
	btfsc	(_b_onceerr/8),(_b_onceerr)&7	;volatile
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l6285
u244_20:
	line	905
	
i1l8504:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 904: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 905: if(!b_over2)
	btfsc	(_b_over2/8),(_b_over2)&7	;volatile
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l8510
u245_20:
	line	907
	
i1l8506:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 906: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 907: b_over2 = 1;
	bsf	(_b_over2/8),(_b_over2)&7	;volatile
	line	908
	
i1l8508:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 908: __CMS_KeyDatIIR();
	fcall	___CMS_KeyDatIIR
	line	909
;CMS_CheckTouch_PT_79F72x_V1.01.c: 909: __CMS_CheckKeyOldValue();
	fcall	___CMS_CheckKeyOldValue
	line	910
;CMS_CheckTouch_PT_79F72x_V1.01.c: 910: __CMS_Key_UNNOL_Check();
	fcall	___CMS_Key_UNNOL_Check
	line	911
;CMS_CheckTouch_PT_79F72x_V1.01.c: 911: }
	goto	i1l6292
	line	914
	
i1l8510:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 912: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 913: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 914: __CMS_CheckOnceResult();
	fcall	___CMS_CheckOnceResult
	line	915
	
i1l8512:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 915: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	916
	
i1l8514:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 916: if(b_kerr || KeyCounter > KeyValidNumber)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_b_kerr/8),(_b_kerr)&7	;volatile
	goto	u246_21
	goto	u246_20
u246_21:
	goto	i1l8518
u246_20:
	
i1l8516:	
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(484)^0180h,w	;volatile
	skipc
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l8522
u247_20:
	line	918
	
i1l8518:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 917: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 918: __CMS_KeyStopClear();
	fcall	___CMS_KeyStopClear
	line	919
	
i1l8520:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 919: b_kerr = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	921
	
i1l8522:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 920: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 921: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	922
	
i1l8524:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 922: KeyCounter = 0;
	clrf	(484)^0180h	;volatile
	line	923
	
i1l8526:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 923: b_over2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_b_over2/8),(_b_over2)&7	;volatile
	line	924
	
i1l8528:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 924: __CMS_KeyModeSet();
	fcall	___CMS_KeyModeSet
	line	925
	
i1l8530:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 925: b_over1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_b_over1/8),(_b_over1)&7	;volatile
	goto	i1l6292
	line	928
	
i1l6285:	
	line	930
;CMS_CheckTouch_PT_79F72x_V1.01.c: 928: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 929: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 930: b_onceerr = 0;
	bcf	(_b_onceerr/8),(_b_onceerr)&7	;volatile
	line	931
;CMS_CheckTouch_PT_79F72x_V1.01.c: 931: b_over2 = 0;
	bcf	(_b_over2/8),(_b_over2)&7	;volatile
	goto	i1l8528
	line	937
	
i1l6283:	
	line	939
;CMS_CheckTouch_PT_79F72x_V1.01.c: 937: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 938: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 939: if(!SDfst)
	btfsc	(___CMS_CheckTouchKey@SDfst/8),(___CMS_CheckTouchKey@SDfst)&7
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l8542
u248_20:
	line	941
	
i1l8536:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 940: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 941: SDfst = 1;
	bsf	(___CMS_CheckTouchKey@SDfst/8),(___CMS_CheckTouchKey@SDfst)&7
	line	942
	
i1l8538:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 942: __CMS_NewRAMClr();
	fcall	___CMS_NewRAMClr
	line	943
	
i1l8540:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 943: __GET_32M_FREDAT();
	fcall	___GET_32M_FREDAT
	line	945
	
i1l8542:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 944: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 945: __CMS_CurAdjust();
	fcall	___CMS_CurAdjust
	line	946
	
i1l6292:	
	line	947
;CMS_CheckTouch_PT_79F72x_V1.01.c: 946: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 947: __CMS_CheckValidTime();
	fcall	___CMS_CheckValidTime
	line	948
	
i1l6294:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckTouchKey
	__end_of___CMS_CheckTouchKey:
	signat	___CMS_CheckTouchKey,89
	global	___GET_32M_FREDAT

;; *************** function ___GET_32M_FREDAT *****************
;; Defined at:
;;		line 872 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : B00/B00
;;		On exit  : B00/B00
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1,group=1
	line	872
global __ptext28
__ptext28:	;psect for function ___GET_32M_FREDAT
psect	text28
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	872
	global	__size_of___GET_32M_FREDAT
	__size_of___GET_32M_FREDAT	equ	__end_of___GET_32M_FREDAT-___GET_32M_FREDAT
	
___GET_32M_FREDAT:	
;incstack = 0
	opt	stack 1
; Regs used in ___GET_32M_FREDAT: [wreg+status,2]
	line	874
	
i1l8382:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 874: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	movwf	(415)^0180h	;volatile
	line	875
	
i1l8384:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 875: __CMS_KEYCON4 |= 0x01;
	bsf	(404)^0180h+(0/8),(0)&7	;volatile
	line	876
	
i1l8386:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 876: __CMS_32M_Dat = __CMS_KEYCON2 & 0xf8;
	movf	(402)^0180h,w	;volatile
	andlw	0F8h
	movwf	(482)^0180h	;volatile
	line	877
	
i1l8388:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 877: __CMS_32M_CT = __CMS_KEYCON4 & 0x70;
	movf	(404)^0180h,w	;volatile
	andlw	070h
	movwf	(483)^0180h	;volatile
	line	878
;CMS_CheckTouch_PT_79F72x_V1.01.c: 878: if(__CMS_32M_CT > 0B01100000)
	movlw	low(061h)
	subwf	(483)^0180h,w	;volatile
	skipc
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l8392
u228_20:
	line	880
	
i1l8390:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 879: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 880: __CMS_32M_CT = 0B01100000;
	movlw	low(060h)
	movwf	(483)^0180h	;volatile
	line	881
;CMS_CheckTouch_PT_79F72x_V1.01.c: 881: }
	goto	i1l6278
	line	882
	
i1l8392:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 882: else if(__CMS_32M_CT < 0B00010000)
	movlw	low(010h)
	subwf	(483)^0180h,w	;volatile
	skipnc
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l6278
u229_20:
	line	884
	
i1l8394:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 883: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 884: __CMS_32M_CT = 0B00010000;
	movlw	low(010h)
	movwf	(483)^0180h	;volatile
	line	886
	
i1l6278:	
	return
	opt stack 0
GLOBAL	__end_of___GET_32M_FREDAT
	__end_of___GET_32M_FREDAT:
	signat	___GET_32M_FREDAT,89
	global	___CMS_NewRAMClr

;; *************** function ___CMS_NewRAMClr *****************
;; Defined at:
;;		line 855 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/B00
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1,group=1
	line	855
global __ptext29
__ptext29:	;psect for function ___CMS_NewRAMClr
psect	text29
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	855
	global	__size_of___CMS_NewRAMClr
	__size_of___CMS_NewRAMClr	equ	__end_of___CMS_NewRAMClr-___CMS_NewRAMClr
	
___CMS_NewRAMClr:	
;incstack = 0
	opt	stack 1
; Regs used in ___CMS_NewRAMClr: [wreg-fsr0h+status,2+status,0]
	line	859
	
i1l8362:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 857: unsigned char i;
;CMS_CheckTouch_PT_79F72x_V1.01.c: 859: for(i = 0; i < 80; i++)
	clrf	(___CMS_NewRAMClr@i)
	line	861
	
i1l8368:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 860: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 861: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	862
	
i1l8370:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 862: __CMSNewRAM__[i] = 0;
	movf	(___CMS_NewRAMClr@i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	863
	
i1l8372:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 863: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	movwf	(415)^0180h	;volatile
	line	864
;CMS_CheckTouch_PT_79F72x_V1.01.c: 864: __CMSNewRAM__[i] = 0;
	movf	(___CMS_NewRAMClr@i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	865
	
i1l8374:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 865: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	movwf	(415)^0180h	;volatile
	line	866
	
i1l8376:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 866: __CMSNewRAM__[i] = 0;
	movf	(___CMS_NewRAMClr@i),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	859
	
i1l8378:	
	incf	(___CMS_NewRAMClr@i),f
	
i1l8380:	
	movlw	low(050h)
	subwf	(___CMS_NewRAMClr@i),w
	skipc
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l8368
u227_20:
	line	868
	
i1l6272:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_NewRAMClr
	__end_of___CMS_NewRAMClr:
	signat	___CMS_NewRAMClr,89
	global	___CMS_Key_UNNOL_Check

;; *************** function ___CMS_Key_UNNOL_Check *****************
;; Defined at:
;;		line 775 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;;  UnNolFlag       1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___CMS_KeyModeSet
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1,group=1
	line	775
global __ptext30
__ptext30:	;psect for function ___CMS_Key_UNNOL_Check
psect	text30
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	775
	global	__size_of___CMS_Key_UNNOL_Check
	__size_of___CMS_Key_UNNOL_Check	equ	__end_of___CMS_Key_UNNOL_Check-___CMS_Key_UNNOL_Check
	
___CMS_Key_UNNOL_Check:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_Key_UNNOL_Check: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	778
	
i1l8292:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 777: static unsigned char UnNolSec = 0;
;CMS_CheckTouch_PT_79F72x_V1.01.c: 778: unsigned char UnNolFlag = 0;
	clrf	(___CMS_Key_UNNOL_Check@UnNolFlag)
	line	779
;CMS_CheckTouch_PT_79F72x_V1.01.c: 779: unsigned char cnt = 0;
	clrf	(___CMS_Key_UNNOL_Check@cnt)
	line	786
	
i1l8294:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 786: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	787
	
i1l8296:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 787: if((KeyReference[cnt] > 2048+512+256) || (KeyReference[cnt] < 2048-512-256))
	clrc
	rlf	(___CMS_Key_UNNOL_Check@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+1
	movlw	0Bh
	subwf	1+(??___CMS_Key_UNNOL_Check+0)+0,w
	movlw	01h
	skipnz
	subwf	0+(??___CMS_Key_UNNOL_Check+0)+0,w
	skipnc
	goto	u216_21
	goto	u216_20
u216_21:
	goto	i1l8300
u216_20:
	
i1l8298:	
	clrc
	rlf	(___CMS_Key_UNNOL_Check@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+1
	movlw	05h
	subwf	1+(??___CMS_Key_UNNOL_Check+0)+0,w
	movlw	0
	skipnz
	subwf	0+(??___CMS_Key_UNNOL_Check+0)+0,w
	skipnc
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l8304
u217_20:
	line	789
	
i1l8300:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 788: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 789: UnNolSec++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(___CMS_Key_UNNOL_Check@UnNolSec),f
	line	790
	
i1l8302:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 790: UnNolFlag = 1;
	clrf	(___CMS_Key_UNNOL_Check@UnNolFlag)
	incf	(___CMS_Key_UNNOL_Check@UnNolFlag),f
	line	792
	
i1l8304:	
	movlw	low(04h)
	incf	(___CMS_Key_UNNOL_Check@cnt),f
	subwf	((___CMS_Key_UNNOL_Check@cnt)),w
	skipc
	goto	u218_21
	goto	u218_20
u218_21:
	goto	i1l8294
u218_20:
	line	793
	
i1l8306:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 793: if(0 == UnNolFlag)
	movf	((___CMS_Key_UNNOL_Check@UnNolFlag)),w
	btfss	status,2
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l8310
u219_20:
	line	795
	
i1l8308:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 794: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 795: UnNolSec = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___CMS_Key_UNNOL_Check@UnNolSec)
	line	796
;CMS_CheckTouch_PT_79F72x_V1.01.c: 796: }
	goto	i1l6261
	line	797
	
i1l8310:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 797: else if(UnNolSec >= 100)
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(___CMS_Key_UNNOL_Check@UnNolSec),w
	skipc
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l6261
u220_20:
	line	799
	
i1l8312:	
	movlw	low(06h)
	incf	(___CMS_Key_UNNOL_Check@UnNolTime),f
	subwf	((___CMS_Key_UNNOL_Check@UnNolTime)),w
	skipc
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l8318
u221_20:
	line	801
	
i1l8314:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 800: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 801: UnNolTime = 0;
	clrf	(___CMS_Key_UNNOL_Check@UnNolTime)
	line	802
	
i1l8316:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 802: UnNolOver = 1;
	bsf	(___CMS_Key_UNNOL_Check@UnNolOver/8),(___CMS_Key_UNNOL_Check@UnNolOver)&7
	line	804
	
i1l8318:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 803: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 804: if(!UnNolOver)
	btfsc	(___CMS_Key_UNNOL_Check@UnNolOver/8),(___CMS_Key_UNNOL_Check@UnNolOver)&7
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l6255
u222_20:
	line	806
	
i1l8320:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 805: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 806: UnNolSec = 0;
	clrf	(___CMS_Key_UNNOL_Check@UnNolSec)
	line	807
	
i1l8322:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 807: CurCheckOver = 0;
	bcf	(_CurCheckOver/8),(_CurCheckOver)&7	;volatile
	line	808
	
i1l8324:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 808: CurAdjustSDfst = 0;
	bcf	(_CurAdjustSDfst/8),(_CurAdjustSDfst)&7	;volatile
	line	809
;CMS_CheckTouch_PT_79F72x_V1.01.c: 809: for(cnt = 0; cnt < KeyTotalNumber; cnt++)
	clrf	(___CMS_Key_UNNOL_Check@cnt)
	line	811
	
i1l8330:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 810: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 811: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	812
	
i1l8332:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 812: KeyReference[cnt] = 2048+512+256;
	movlw	0
	movwf	(??___CMS_Key_UNNOL_Check+0)+0
	movlw	0Bh
	movwf	(??___CMS_Key_UNNOL_Check+0)+0+1
	clrc
	rlf	(___CMS_Key_UNNOL_Check@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(??___CMS_Key_UNNOL_Check+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_Key_UNNOL_Check+0)+1,w
	movwf	indf
	line	813
	
i1l8334:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 813: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	movwf	(415)^0180h	;volatile
	line	814
;CMS_CheckTouch_PT_79F72x_V1.01.c: 814: __CMS_CurStep[cnt] = 0;
	movf	(___CMS_Key_UNNOL_Check@cnt),w
	addlw	low(464|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	809
	
i1l8336:	
	incf	(___CMS_Key_UNNOL_Check@cnt),f
	
i1l8338:	
	movlw	low(04h)
	subwf	(___CMS_Key_UNNOL_Check@cnt),w
	skipc
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l8330
u223_20:
	
i1l6260:	
	line	816
;CMS_CheckTouch_PT_79F72x_V1.01.c: 815: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 816: b_over2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(_b_over2/8),(_b_over2)&7	;volatile
	line	817
	
i1l8340:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 817: __CMS_KeyModeSet();
	fcall	___CMS_KeyModeSet
	line	818
	
i1l8342:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 818: b_over1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_b_over1/8),(_b_over1)&7	;volatile
	goto	i1l6261
	line	821
	
i1l6255:	
	line	822
	
i1l6261:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_Key_UNNOL_Check
	__end_of___CMS_Key_UNNOL_Check:
	signat	___CMS_Key_UNNOL_Check,89
	global	___CMS_KeyStopClear

;; *************** function ___CMS_KeyStopClear *****************
;; Defined at:
;;		line 317 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/B00
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___CMS_KeyClearOne
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1,group=1
	line	317
global __ptext31
__ptext31:	;psect for function ___CMS_KeyStopClear
psect	text31
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	317
	global	__size_of___CMS_KeyStopClear
	__size_of___CMS_KeyStopClear	equ	__end_of___CMS_KeyStopClear-___CMS_KeyStopClear
	
___CMS_KeyStopClear:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyStopClear: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	320
	
i1l8048:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 319: unsigned char i;
;CMS_CheckTouch_PT_79F72x_V1.01.c: 320: KeyFlag[0] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_KeyFlag)	;volatile
	line	321
;CMS_CheckTouch_PT_79F72x_V1.01.c: 321: KeyFlag[1] = 0;
	clrf	0+(_KeyFlag)+01h	;volatile
	line	322
;CMS_CheckTouch_PT_79F72x_V1.01.c: 322: for(i = 0; i < KeyTotalNumber; i++)
	clrf	(___CMS_KeyStopClear@i)
	line	324
	
i1l8054:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 323: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 324: __CMS_KeyClearOne(i);
	movf	(___CMS_KeyStopClear@i),w
	fcall	___CMS_KeyClearOne
	line	322
	
i1l8056:	
	incf	(___CMS_KeyStopClear@i),f
	
i1l8058:	
	movlw	low(04h)
	subwf	(___CMS_KeyStopClear@i),w
	skipc
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l8054
u180_20:
	line	326
	
i1l6139:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyStopClear
	__end_of___CMS_KeyStopClear:
	signat	___CMS_KeyStopClear,89
	global	___CMS_KeyDatIIR

;; *************** function ___CMS_KeyDatIIR *****************
;; Defined at:
;;		line 831 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  TKOldTemp       2    2[BANK0 ] unsigned int 
;;  TKDatTemp       2    0[BANK0 ] unsigned int 
;;  cnt             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       5       0       0
;;      Temps:         14       0       0       0
;;      Totals:        14       5       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1,group=1
	line	831
global __ptext32
__ptext32:	;psect for function ___CMS_KeyDatIIR
psect	text32
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	831
	global	__size_of___CMS_KeyDatIIR
	__size_of___CMS_KeyDatIIR	equ	__end_of___CMS_KeyDatIIR-___CMS_KeyDatIIR
	
___CMS_KeyDatIIR:	
;incstack = 0
	opt	stack 1
; Regs used in ___CMS_KeyDatIIR: [wreg-fsr0h+status,2+status,0]
	line	833
	
i1l8344:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 833: unsigned char cnt = 0;
	clrf	(___CMS_KeyDatIIR@cnt)
	line	837
	
i1l8346:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 837: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	838
	
i1l8348:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 838: TKOldTemp = KeyOldValue[cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_KeyDatIIR@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@TKOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@TKOldTemp+1)
	line	839
	
i1l8350:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 839: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	840
	
i1l8352:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 840: TKDatTemp = KeySum[cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_KeyDatIIR@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@TKDatTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_KeyDatIIR@TKDatTemp+1)
	line	841
	
i1l8354:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 841: if((0 != TKDatTemp) && (0 != TKOldTemp))
	movf	((___CMS_KeyDatIIR@TKDatTemp)),w
iorwf	((___CMS_KeyDatIIR@TKDatTemp+1)),w
	btfsc	status,2
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l8360
u224_20:
	
i1l8356:	
	movf	((___CMS_KeyDatIIR@TKOldTemp)),w
iorwf	((___CMS_KeyDatIIR@TKOldTemp+1)),w
	btfsc	status,2
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l8360
u225_20:
	line	843
	
i1l8358:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 842: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 843: KeySum[cnt] = TKDatTemp/4 + TKDatTemp/8 + TKOldTemp/2 + TKOldTemp/8;
	movf	(___CMS_KeyDatIIR@TKOldTemp+1),w
	movwf	(??___CMS_KeyDatIIR+0)+0+1
	movf	(___CMS_KeyDatIIR@TKOldTemp),w
	movwf	(??___CMS_KeyDatIIR+0)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+0)+1,f
	rrf	(??___CMS_KeyDatIIR+0)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+0)+1,f
	rrf	(??___CMS_KeyDatIIR+0)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+0)+1,f
	rrf	(??___CMS_KeyDatIIR+0)+0,f
	movf	(___CMS_KeyDatIIR@TKOldTemp+1),w
	movwf	(??___CMS_KeyDatIIR+2)+0+1
	movf	(___CMS_KeyDatIIR@TKOldTemp),w
	movwf	(??___CMS_KeyDatIIR+2)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+2)+1,f
	rrf	(??___CMS_KeyDatIIR+2)+0,f
	movf	(___CMS_KeyDatIIR@TKDatTemp+1),w
	movwf	(??___CMS_KeyDatIIR+4)+0+1
	movf	(___CMS_KeyDatIIR@TKDatTemp),w
	movwf	(??___CMS_KeyDatIIR+4)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+4)+1,f
	rrf	(??___CMS_KeyDatIIR+4)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+4)+1,f
	rrf	(??___CMS_KeyDatIIR+4)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+4)+1,f
	rrf	(??___CMS_KeyDatIIR+4)+0,f
	movf	(___CMS_KeyDatIIR@TKDatTemp+1),w
	movwf	(??___CMS_KeyDatIIR+6)+0+1
	movf	(___CMS_KeyDatIIR@TKDatTemp),w
	movwf	(??___CMS_KeyDatIIR+6)+0
	clrc
	rrf	(??___CMS_KeyDatIIR+6)+1,f
	rrf	(??___CMS_KeyDatIIR+6)+0,f
	clrc
	rrf	(??___CMS_KeyDatIIR+6)+1,f
	rrf	(??___CMS_KeyDatIIR+6)+0,f
	movf	0+(??___CMS_KeyDatIIR+4)+0,w
	addwf	0+(??___CMS_KeyDatIIR+6)+0,w
	movwf	(??___CMS_KeyDatIIR+8)+0
	movf	1+(??___CMS_KeyDatIIR+4)+0,w
	skipnc
	incf	1+(??___CMS_KeyDatIIR+4)+0,w
	addwf	1+(??___CMS_KeyDatIIR+6)+0,w
	movwf	1+(??___CMS_KeyDatIIR+8)+0
	movf	0+(??___CMS_KeyDatIIR+2)+0,w
	addwf	0+(??___CMS_KeyDatIIR+8)+0,w
	movwf	(??___CMS_KeyDatIIR+10)+0
	movf	1+(??___CMS_KeyDatIIR+2)+0,w
	skipnc
	incf	1+(??___CMS_KeyDatIIR+2)+0,w
	addwf	1+(??___CMS_KeyDatIIR+8)+0,w
	movwf	1+(??___CMS_KeyDatIIR+10)+0
	movf	0+(??___CMS_KeyDatIIR+0)+0,w
	addwf	0+(??___CMS_KeyDatIIR+10)+0,w
	movwf	(??___CMS_KeyDatIIR+12)+0
	movf	1+(??___CMS_KeyDatIIR+0)+0,w
	skipnc
	incf	1+(??___CMS_KeyDatIIR+0)+0,w
	addwf	1+(??___CMS_KeyDatIIR+10)+0,w
	movwf	1+(??___CMS_KeyDatIIR+12)+0
	clrc
	rlf	(___CMS_KeyDatIIR@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(??___CMS_KeyDatIIR+12)+0,w
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_KeyDatIIR+12)+1,w
	movwf	indf
	line	845
	
i1l8360:	
	movlw	low(04h)
	incf	(___CMS_KeyDatIIR@cnt),f
	subwf	((___CMS_KeyDatIIR@cnt)),w
	skipc
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l8346
u226_20:
	line	846
	
i1l6267:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyDatIIR
	__end_of___CMS_KeyDatIIR:
	signat	___CMS_KeyDatIIR,89
	global	___CMS_CurAdjust

;; *************** function ___CMS_CurAdjust *****************
;; Defined at:
;;		line 679 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeySumTemp      2    3[COMMON] unsigned int 
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___CMS_CurAdjMode
;;		___CMS_KeyModeSet
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1,group=1
	line	679
global __ptext33
__ptext33:	;psect for function ___CMS_CurAdjust
psect	text33
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	679
	global	__size_of___CMS_CurAdjust
	__size_of___CMS_CurAdjust	equ	__end_of___CMS_CurAdjust-___CMS_CurAdjust
	
___CMS_CurAdjust:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___CMS_CurAdjust: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	681
	
i1l8202:	
	line	682
;CMS_CheckTouch_PT_79F72x_V1.01.c: 682: unsigned int KeySumTemp = 0;
	clrf	(___CMS_CurAdjust@KeySumTemp)
	clrf	(___CMS_CurAdjust@KeySumTemp+1)
	line	685
	
i1l8204:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 683: static unsigned char CurAdjLmtTimec = 0;
;CMS_CheckTouch_PT_79F72x_V1.01.c: 685: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	686
	
i1l8206:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 686: if(!CurAdjustSDfst)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_CurAdjustSDfst/8),(_CurAdjustSDfst)&7	;volatile
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l6221
u203_20:
	line	688
	
i1l8208:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 687: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 688: CurAdjustSDfst = 1;
	bsf	(_CurAdjustSDfst/8),(_CurAdjustSDfst)&7	;volatile
	line	689
	
i1l8210:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 689: __CMS_KeyModeSet();
	fcall	___CMS_KeyModeSet
	line	690
	
i1l8212:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 690: __CMS_CurAdjMode();
	fcall	___CMS_CurAdjMode
	line	691
;CMS_CheckTouch_PT_79F72x_V1.01.c: 691: }
	goto	i1l6239
	line	692
	
i1l6221:	
	line	694
;CMS_CheckTouch_PT_79F72x_V1.01.c: 692: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 693: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 694: if(0 == (__CMS_KEYSA & 0x80))
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(389)^0180h,(7)&7	;volatile
	goto	u204_21
	goto	u204_20
u204_21:
	goto	i1l8276
u204_20:
	line	696
	
i1l8214:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 695: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 696: CurAdjLmtTimec = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___CMS_CurAdjust@CurAdjLmtTimec)
	line	697
	
i1l8216:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 697: KeySumTemp = (unsigned int)(__CMS_KDARGH << 8) | __CMS_KDARGL;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(414)^0180h,w	;volatile
	movwf	(___CMS_CurAdjust@KeySumTemp+1)
	clrf	(___CMS_CurAdjust@KeySumTemp)
	
i1l8218:	
	movf	(413)^0180h,w	;volatile
	iorwf	(___CMS_CurAdjust@KeySumTemp),f
	line	698
	
i1l8220:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 698: if(__CMS_KEYSA & 0x08)
	btfss	(389)^0180h,(3)&7	;volatile
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l8246
u205_20:
	line	700
	
i1l8222:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 699: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 700: if(KeySumTemp <= (2048 + 96) && (KeySumTemp >= (2048 - 96)))
	movlw	08h
	subwf	(___CMS_CurAdjust@KeySumTemp+1),w
	movlw	061h
	skipnz
	subwf	(___CMS_CurAdjust@KeySumTemp),w
	skipnc
	goto	u206_21
	goto	u206_20
u206_21:
	goto	i1l8210
u206_20:
	
i1l8224:	
	movlw	07h
	subwf	(___CMS_CurAdjust@KeySumTemp+1),w
	movlw	0A0h
	skipnz
	subwf	(___CMS_CurAdjust@KeySumTemp),w
	skipc
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l8210
u207_20:
	line	702
	
i1l8226:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 701: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 702: ITRIM_Ram[KeyAdrCnt] = __CMS_KEYCON6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(406)^0180h,w	;volatile
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	703
	
i1l8228:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyAdrCnt),f	;volatile
	subwf	((_KeyAdrCnt)),w	;volatile
	skipc
	goto	u208_21
	goto	u208_20
u208_21:
	goto	i1l8210
u208_20:
	line	705
	
i1l8230:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 704: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 705: KeyAdrCnt = 0;
	clrf	(_KeyAdrCnt)	;volatile
	line	706
	
i1l8232:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 706: CurCheckOver = 1;
	bsf	(_CurCheckOver/8),(_CurCheckOver)&7	;volatile
	line	707
;CMS_CheckTouch_PT_79F72x_V1.01.c: 707: __CMS_KEYSA = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(389)^0180h	;volatile
	line	708
	
i1l8234:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 708: __CMS_KeyModeSet();
	fcall	___CMS_KeyModeSet
	line	709
	
i1l8236:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 709: b_over1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(_b_over1/8),(_b_over1)&7	;volatile
	line	710
;CMS_CheckTouch_PT_79F72x_V1.01.c: 710: }
	goto	i1l6239
	line	725
	
i1l8246:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 723: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 724: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 725: if(((KeySumTemp < 2048+512+256) && (KeySumTemp > 2048-512-256)) && (__CMS_KEYCON6 != 0xff))
	movlw	0Bh
	subwf	(___CMS_CurAdjust@KeySumTemp+1),w
	movlw	0
	skipnz
	subwf	(___CMS_CurAdjust@KeySumTemp),w
	skipnc
	goto	u209_21
	goto	u209_20
u209_21:
	goto	i1l8268
u209_20:
	
i1l8248:	
	movlw	05h
	subwf	(___CMS_CurAdjust@KeySumTemp+1),w
	movlw	01h
	skipnz
	subwf	(___CMS_CurAdjust@KeySumTemp),w
	skipc
	goto	u210_21
	goto	u210_20
u210_21:
	goto	i1l8268
u210_20:
	
i1l8250:	
		incf	((406)^0180h),w	;volatile
	btfsc	status,2
	goto	u211_21
	goto	u211_20
u211_21:
	goto	i1l8268
u211_20:
	line	727
	
i1l8252:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 726: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 727: ITRIM_Ram[KeyAdrCnt] = __CMS_KEYCON6;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(406)^0180h,w	;volatile
	bsf	status, 7	;select IRP bank3
	movwf	indf
	line	728
	
i1l8254:	
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_KeyAdrCnt),f	;volatile
	subwf	((_KeyAdrCnt)),w	;volatile
	skipc
	goto	u212_21
	goto	u212_20
u212_21:
	goto	i1l8210
u212_20:
	goto	i1l8230
	line	744
	
i1l8268:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 742: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 743: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 744: if(((++ __CMS_CurStep[KeyAdrCnt]) & 0x0f) > 5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low(464|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	incf	indf,f
	movlw	low(0Fh)
	andwf	(indf),w
	movwf	(??___CMS_CurAdjust+0)+0
	movlw	low(06h)
	subwf	0+(??___CMS_CurAdjust+0)+0,w
	skipc
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l8210
u213_20:
	line	746
	
i1l8270:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 745: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 746: __CMS_CurStep[KeyAdrCnt] = 5;
	movf	(_KeyAdrCnt),w
	addlw	low(464|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(05h)
	movwf	indf
	goto	i1l8210
	line	755
	
i1l8276:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 753: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 754: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 755: if(++CurAdjLmtTimec >= 100)
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(___CMS_CurAdjust@CurAdjLmtTimec),f
	subwf	((___CMS_CurAdjust@CurAdjLmtTimec)),w
	skipc
	goto	u214_21
	goto	u214_20
u214_21:
	goto	i1l6239
u214_20:
	line	757
	
i1l8278:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 756: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 757: CurAdjLmtTimec = 0;
	clrf	(___CMS_CurAdjust@CurAdjLmtTimec)
	line	758
	
i1l8280:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 758: CurAdjustSDfst = 0;
	bcf	(_CurAdjustSDfst/8),(_CurAdjustSDfst)&7	;volatile
	line	759
;CMS_CheckTouch_PT_79F72x_V1.01.c: 759: for(cnt = 0; cnt < KeyTotalNumber; cnt++)
	clrf	(___CMS_CurAdjust@cnt)
	line	761
	
i1l8286:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 760: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 761: __CMS_CurStep[cnt] = 0;
	movf	(___CMS_CurAdjust@cnt),w
	addlw	low(464|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	759
	
i1l8288:	
	incf	(___CMS_CurAdjust@cnt),f
	
i1l8290:	
	movlw	low(04h)
	subwf	(___CMS_CurAdjust@cnt),w
	skipc
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l8286
u215_20:
	line	766
	
i1l6239:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CurAdjust
	__end_of___CMS_CurAdjust:
	signat	___CMS_CurAdjust,89
	global	___CMS_KeyModeSet

;; *************** function ___CMS_KeyModeSet *****************
;; Defined at:
;;		line 335 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DLTempl         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CurAdjust
;;		___CMS_Key_UNNOL_Check
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1,group=1
	line	335
global __ptext34
__ptext34:	;psect for function ___CMS_KeyModeSet
psect	text34
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	335
	global	__size_of___CMS_KeyModeSet
	__size_of___CMS_KeyModeSet	equ	__end_of___CMS_KeyModeSet-___CMS_KeyModeSet
	
___CMS_KeyModeSet:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyModeSet: [wreg+status,2+status,0]
	line	339
	
i1l7816:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 337: unsigned char DLTempl;
;CMS_CheckTouch_PT_79F72x_V1.01.c: 339: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	340
	
i1l7818:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 340: __CMS_KEYCON0 = (0 << 6) | (0 << 3);
	clrf	(400)^0180h	;volatile
	line	342
	
i1l7820:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 342: __CMS_KEYCON2 |= 1;
	bsf	(402)^0180h+(0/8),(0)&7	;volatile
	line	343
	
i1l7822:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 343: __CMS_KEYCON2 &= 0B00000001;
	movlw	low(01h)
	andwf	(402)^0180h,f	;volatile
	line	344
	
i1l7824:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 344: __CMS_KEYCON2 |= (1 << 1);
	bsf	(402)^0180h+(1/8),(1)&7	;volatile
	line	346
	
i1l7826:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 346: __CMS_KEYCON3 = (1 << 7) | (3 << 5);
	movlw	low(0E0h)
	movwf	(403)^0180h	;volatile
	line	348
	
i1l7828:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 347: __CMS_KEYCON4 = (0 << 7) | (3 << 2) | 1
;CMS_CheckTouch_PT_79F72x_V1.01.c: 348: + __CMS_32M_CT;
	movf	(483)^0180h,w	;volatile
	addlw	01h
	iorlw	0Ch
	movwf	(404)^0180h	;volatile
	line	350
	
i1l7830:	
	movlw	low(040h)
	movwf	(405)^0180h	;volatile
	line	351
	
i1l7832:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 351: __CMS_KEYCON8 = (2 << 6) | 1 | 0x18;
	movlw	low(099h)
	movwf	(408)^0180h	;volatile
	line	352
	
i1l7834:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 352: __CMS_KEYCON1 = 0x10;
	movlw	low(010h)
	movwf	(401)^0180h	;volatile
	line	353
	
i1l7836:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 353: __CMS_KEYCON2 += __CMS_32M_Dat;
	movf	(482)^0180h,w	;volatile
	addwf	(402)^0180h,f	;volatile
	line	354
	
i1l7838:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 354: __CMS_KEYCON3 += 2;
	incf	(403)^0180h,f
	incf	(403)^0180h,f	;volatile
	line	358
	
i1l7840:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 358: DLTempl = 20;
	movlw	low(014h)
	movwf	(___CMS_KeyModeSet@DLTempl)
	line	359
;CMS_CheckTouch_PT_79F72x_V1.01.c: 359: while(DLTempl--);
	
i1l7842:	
	decf	(___CMS_KeyModeSet@DLTempl),f
		incf	(((___CMS_KeyModeSet@DLTempl))),w
	btfss	status,2
	goto	u147_21
	goto	u147_20
u147_21:
	goto	i1l7842
u147_20:
	line	360
	
i1l6145:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyModeSet
	__end_of___CMS_KeyModeSet:
	signat	___CMS_KeyModeSet,89
	global	___CMS_CurAdjMode

;; *************** function ___CMS_CurAdjMode *****************
;; Defined at:
;;		line 651 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  CurStepTemp     1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/B00
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CurAdjust
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1,group=1
	line	651
global __ptext35
__ptext35:	;psect for function ___CMS_CurAdjMode
psect	text35
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	651
	global	__size_of___CMS_CurAdjMode
	__size_of___CMS_CurAdjMode	equ	__end_of___CMS_CurAdjMode-___CMS_CurAdjMode
	
___CMS_CurAdjMode:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___CMS_CurAdjMode: [wreg-fsr0h+status,2+status,0+pclath]
	line	653
	
i1l7844:	
	line	655
	
i1l7846:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 655: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	656
	
i1l7848:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 656: __CMS_KEYCON1 |= (Table_KeyChannel[KeyAdrCnt] & 0x0f);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	0Fh
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	iorwf	(401)^0180h,f	;volatile
	line	657
	
i1l7850:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 657: __CMS_KEYCON2 &= ~0B00000100;
	bcf	(402)^0180h+(2/8),(2)&7	;volatile
	line	658
	
i1l7852:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 658: if(Table_KeyChannel[KeyAdrCnt] & 0x10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low((((_Table_KeyChannel)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	010h
	btfsc	status,2
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l7856
u148_20:
	line	659
	
i1l7854:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 659: __CMS_KEYCON2 |= 0x04;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(402)^0180h+(2/8),(2)&7	;volatile
	line	660
	
i1l7856:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 660: CurStepTemp = __CMS_CurStep[KeyAdrCnt] & 0x0f;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeyAdrCnt),w
	addlw	low(464|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_CurAdjMode@CurStepTemp)
	
i1l7858:	
	movlw	low(0Fh)
	andwf	(___CMS_CurAdjMode@CurStepTemp),f
	line	661
	
i1l7860:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 661: if(CurStepTemp > 5)
	movlw	low(06h)
	subwf	(___CMS_CurAdjMode@CurStepTemp),w
	skipc
	goto	u149_21
	goto	u149_20
u149_21:
	goto	i1l7864
u149_20:
	line	663
	
i1l7862:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 662: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 663: CurStepTemp = 5;
	movlw	low(05h)
	movwf	(___CMS_CurAdjMode@CurStepTemp)
	line	665
	
i1l7864:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 664: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 665: __CMS_KEYCON5 &= ~0B00001110;
	movlw	low(0F1h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(405)^0180h,f	;volatile
	line	666
	
i1l7866:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 666: __CMS_KEYCON5 |= __CMS_CurStep_Table[CurStepTemp];
	movf	(___CMS_CurAdjMode@CurStepTemp),w
	addlw	low((((___CMS_CurStep_Table)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	iorwf	(405)^0180h,f	;volatile
	line	668
	
i1l7868:	
	movlw	low(010h)
	movwf	(389)^0180h	;volatile
	line	669
	
i1l7870:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 669: __CMS_KEYSA |= 0x80;
	bsf	(389)^0180h+(7/8),(7)&7	;volatile
	line	670
	
i1l6216:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CurAdjMode
	__end_of___CMS_CurAdjMode:
	signat	___CMS_CurAdjMode,89
	global	___CMS_CheckValidTime

;; *************** function ___CMS_CheckValidTime *****************
;; Defined at:
;;		line 623 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1,group=1
	line	623
global __ptext36
__ptext36:	;psect for function ___CMS_CheckValidTime
psect	text36
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	623
	global	__size_of___CMS_CheckValidTime
	__size_of___CMS_CheckValidTime	equ	__end_of___CMS_CheckValidTime-___CMS_CheckValidTime
	
___CMS_CheckValidTime:	
;incstack = 0
	opt	stack 1
; Regs used in ___CMS_CheckValidTime: [wreg+status,2+status,0]
	line	629
	
i1l8192:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 628: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 629: if(KeyFlag[0] | KeyFlag[1])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_KeyFlag)+01h,w	;volatile
	iorwf	(_KeyFlag),w	;volatile
	btfsc	status,2
	goto	u201_21
	goto	u201_20
u201_21:
	goto	i1l8198
u201_20:
	line	631
	
i1l8194:	
	incf	(___CMS_CheckValidTime@validtime),f
	skipnz
	incf	(___CMS_CheckValidTime@validtime+1),f
	movlw	0Fh
	subwf	((___CMS_CheckValidTime@validtime+1)),w
	movlw	0A0h
	skipnz
	subwf	((___CMS_CheckValidTime@validtime)),w
	skipc
	goto	u202_21
	goto	u202_20
u202_21:
	goto	i1l6211
u202_20:
	line	633
	
i1l8196:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 632: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 633: b_kerr = 1;
	bsf	(_b_kerr/8),(_b_kerr)&7	;volatile
	line	634
	
i1l8198:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 634: validtime = 0;
	clrf	(___CMS_CheckValidTime@validtime)
	clrf	(___CMS_CheckValidTime@validtime+1)
	line	642
	
i1l6211:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckValidTime
	__end_of___CMS_CheckValidTime:
	signat	___CMS_CheckValidTime,89
	global	___CMS_CheckOnceResult

;; *************** function ___CMS_CheckOnceResult *****************
;; Defined at:
;;		line 464 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyBase         2    6[BANK0 ] unsigned int 
;;  KeyValue        2    2[BANK0 ] unsigned int 
;;  KeyDown         2    0[BANK0 ] unsigned int 
;;  cnt             1   10[BANK0 ] unsigned char 
;;  flag            1    9[BANK0 ] unsigned char 
;;  templ           1    8[BANK0 ] unsigned char 
;;  KHaveTemp       1    5[BANK0 ] unsigned char 
;;  KHaveC          1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      11       0       0
;;      Temps:          5       0       0       0
;;      Totals:         5      11       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___CMS_KeyClearOne
;;		___CMS_KeyHaveDown
;;		___CMS_KeyIsIn
;;		___CMS_KeyOpen
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1,group=1
	line	464
global __ptext37
__ptext37:	;psect for function ___CMS_CheckOnceResult
psect	text37
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	464
	global	__size_of___CMS_CheckOnceResult
	__size_of___CMS_CheckOnceResult	equ	__end_of___CMS_CheckOnceResult-___CMS_CheckOnceResult
	
___CMS_CheckOnceResult:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___CMS_CheckOnceResult: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	466
	
i1l8060:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 466: unsigned char cnt = 0,templ;
	clrf	(___CMS_CheckOnceResult@cnt)
	line	477
	
i1l8062:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 476: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 477: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	478
	
i1l8064:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 478: KeyBase = KeyReference[cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(___CMS_CheckOnceResult@KeyBase)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckOnceResult@KeyBase+1)
	line	479
	
i1l8066:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 479: KeyDown = Table_KeyDown[cnt];
	clrc
	rlf	(___CMS_CheckOnceResult@cnt),w
	addlw	low((((_Table_KeyDown)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___CMS_CheckOnceResult@KeyDown)
	fcall	stringdir
	movwf	(___CMS_CheckOnceResult@KeyDown+1)
	line	480
	
i1l8068:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 480: flag = (unsigned char)(__CMS_Table_KeyFalg[(unsigned char)(cnt&0x7)]);
	movf	(___CMS_CheckOnceResult@cnt),w
	andlw	07h
	addlw	low((((___CMS_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___CMS_CheckOnceResult@flag)
	line	481
	
i1l8070:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 481: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	482
	
i1l8072:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 482: if(0 == (KeyUnusual & (unsigned int)(1 << cnt)))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(___CMS_CheckOnceResult@cnt),w
	movwf	(??___CMS_CheckOnceResult+0)+0
	movlw	01h
	movwf	(??___CMS_CheckOnceResult+1)+0
	movlw	0
	movwf	(??___CMS_CheckOnceResult+1)+0+1
	goto	u181_24
u181_25:
	clrc
	rlf	(??___CMS_CheckOnceResult+1)+0,f
	rlf	(??___CMS_CheckOnceResult+1)+1,f
u181_24:
	decfsz	(??___CMS_CheckOnceResult+0)+0,f
	goto	u181_25
	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(468)^0180h,w	;volatile
	andwf	0+(??___CMS_CheckOnceResult+1)+0,w
	movwf	(??___CMS_CheckOnceResult+3)+0
	movf	(468+1)^0180h,w	;volatile
	andwf	1+(??___CMS_CheckOnceResult+1)+0,w
	movwf	1+(??___CMS_CheckOnceResult+3)+0
	movf	((??___CMS_CheckOnceResult+3)+0),w
iorwf	((??___CMS_CheckOnceResult+3)+1),w
	btfss	status,2
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l8134
u182_20:
	line	484
	
i1l8074:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 483: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 484: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	movwf	(415)^0180h	;volatile
	line	485
	
i1l8076:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 485: KeyNosieC[cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(480|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	486
	
i1l8078:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 486: if((0 != KeyBase) && (KeyBase < 2048+512+256))
	movf	((___CMS_CheckOnceResult@KeyBase)),w
iorwf	((___CMS_CheckOnceResult@KeyBase+1)),w
	btfsc	status,2
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l6184
u183_20:
	
i1l8080:	
	movlw	0Bh
	subwf	(___CMS_CheckOnceResult@KeyBase+1),w
	movlw	0
	skipnz
	subwf	(___CMS_CheckOnceResult@KeyBase),w
	skipnc
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l6184
u184_20:
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	101
	
i1l8082:	
	movf	(___CMS_CheckOnceResult@KeyBase),w
	addlw	low(0Ch)
	movwf	(___CMS_CheckOnceResult@KeyValue)
	movf	(___CMS_CheckOnceResult@KeyBase+1),w
	skipnc
	addlw	1
	addlw	high(0Ch)
	movwf	1+(___CMS_CheckOnceResult@KeyValue)
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	488
	
i1l8084:	
	movf	(___CMS_CheckOnceResult@KeyDown),w
	addwf	(___CMS_CheckOnceResult@KeyValue),f
	skipnc
	incf	(___CMS_CheckOnceResult@KeyValue+1),f
	movf	(___CMS_CheckOnceResult@KeyDown+1),w
	addwf	(___CMS_CheckOnceResult@KeyValue+1),f
	line	489
	
i1l8086:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 489: KeyDownF = 0;
	bcf	(___CMS_CheckOnceResult@KeyDownF/8),(___CMS_CheckOnceResult@KeyDownF)&7
	line	490
	
i1l8088:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 490: if(__CMS_KeyIsIn(cnt))
	movf	(___CMS_CheckOnceResult@cnt),w
	fcall	___CMS_KeyIsIn
	xorlw	0
	skipnz
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l6174
u185_20:
	line	492
	
i1l8090:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 491: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 492: KeyDownF = 1;
	bsf	(___CMS_CheckOnceResult@KeyDownF/8),(___CMS_CheckOnceResult@KeyDownF)&7
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	102
	
i1l8092:	
	movlw	0E7h
	addwf	(___CMS_CheckOnceResult@KeyValue),f
	skipnc
	incf	(___CMS_CheckOnceResult@KeyValue+1),f
	movlw	0FFh
	addwf	(___CMS_CheckOnceResult@KeyValue+1),f
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	494
	
i1l6174:	
	line	496
;CMS_CheckTouch_PT_79F72x_V1.01.c: 496: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	497
	
i1l8094:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 497: KeyHave[cnt] <<= 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	clrc
	rlf	indf,f
	line	498
	
i1l8096:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 498: KeyHave[cnt] &= templ;
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movlw	low(03h)
	andwf	indf,f
	line	499
	
i1l8098:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 499: if(KeyValue <= KeySum[cnt])
	clrc
	rlf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??___CMS_CheckOnceResult+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??___CMS_CheckOnceResult+0)+0+1
	movf	(___CMS_CheckOnceResult@KeyValue+1),w
	subwf	1+(??___CMS_CheckOnceResult+0)+0,w
	skipz
	goto	u186_25
	movf	(___CMS_CheckOnceResult@KeyValue),w
	subwf	0+(??___CMS_CheckOnceResult+0)+0,w
u186_25:
	skipc
	goto	u186_21
	goto	u186_20
u186_21:
	goto	i1l8102
u186_20:
	line	501
	
i1l8100:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 500: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 501: KeyHave[cnt] |= 0x01;
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	indf+(0/8),(0)&7
	line	503
	
i1l8102:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 502: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 503: KHaveC = 0;
	clrf	(___CMS_CheckOnceResult@KHaveC)
	line	504
	
i1l8104:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 504: KHaveTemp = KeyHave[cnt];
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_CheckOnceResult@KHaveTemp)
	line	505
;CMS_CheckTouch_PT_79F72x_V1.01.c: 505: for(templ = 0; templ < KeyShakeCounter; templ++)
	clrf	(___CMS_CheckOnceResult@templ)
	line	506
	
i1l6176:	
	line	507
;CMS_CheckTouch_PT_79F72x_V1.01.c: 506: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 507: if(KHaveTemp & 0x01)
	btfss	(___CMS_CheckOnceResult@KHaveTemp),(0)&7
	goto	u187_21
	goto	u187_20
u187_21:
	goto	i1l8112
u187_20:
	line	509
	
i1l8110:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 508: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 509: KHaveC++;
	incf	(___CMS_CheckOnceResult@KHaveC),f
	line	511
	
i1l8112:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 510: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 511: KHaveTemp >>= 1;
	clrc
	rrf	(___CMS_CheckOnceResult@KHaveTemp),f
	line	505
	incf	(___CMS_CheckOnceResult@templ),f
	
i1l8114:	
	movlw	low(02h)
	subwf	(___CMS_CheckOnceResult@templ),w
	skipc
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l6176
u188_20:
	line	513
	
i1l8116:	
	movlw	low(02h)
	subwf	(___CMS_CheckOnceResult@KHaveC),w
	skipc
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l6179
u189_20:
	line	515
	
i1l8118:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 514: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 515: __CMS_KeyHaveDown(cnt,flag);
	movf	(___CMS_CheckOnceResult@flag),w
	movwf	(___CMS_KeyHaveDown@flag)
	movf	(___CMS_CheckOnceResult@cnt),w
	fcall	___CMS_KeyHaveDown
	line	516
	
i1l8120:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 516: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	517
	
i1l8122:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 517: KeyUpShake[cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(432|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	518
;CMS_CheckTouch_PT_79F72x_V1.01.c: 518: }
	goto	i1l6184
	line	519
	
i1l6179:	
	line	521
;CMS_CheckTouch_PT_79F72x_V1.01.c: 519: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 520: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 521: if(KeyDownF)
	btfss	(___CMS_CheckOnceResult@KeyDownF/8),(___CMS_CheckOnceResult@KeyDownF)&7
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l6184
u190_20:
	line	523
	
i1l8124:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 522: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 523: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	524
	
i1l8126:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(432|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	incf	indf,f
	movlw	low(02h)
	subwf	(indf),w
	skipc
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l8132
u191_20:
	line	526
	
i1l8128:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 525: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 526: KeyUpShake[cnt] = 0;
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(432|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	527
	
i1l8130:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 527: __CMS_KeyOpen(cnt,flag);
	movf	(___CMS_CheckOnceResult@flag),w
	movwf	(___CMS_KeyOpen@flag)
	movf	(___CMS_CheckOnceResult@cnt),w
	fcall	___CMS_KeyOpen
	line	528
;CMS_CheckTouch_PT_79F72x_V1.01.c: 528: }
	goto	i1l6184
	line	531
	
i1l8132:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 529: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 530: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 531: __CMS_KeyHaveDown(cnt,flag);
	movf	(___CMS_CheckOnceResult@flag),w
	movwf	(___CMS_KeyHaveDown@flag)
	movf	(___CMS_CheckOnceResult@cnt),w
	fcall	___CMS_KeyHaveDown
	goto	i1l6184
	line	539
	
i1l8134:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 537: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 538: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 539: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	movwf	(415)^0180h	;volatile
	line	540
	
i1l8136:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 540: if(++KeyNosieC[cnt] >= 20)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(480|((0x1)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movlw	low(014h)
	subwf	(indf),w
	skipc
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l6184
u192_20:
	line	542
	
i1l8138:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 541: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 542: KeyNosieC[cnt] = 0;
	movf	(___CMS_CheckOnceResult@cnt),w
	addlw	low(480|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	543
	
i1l8140:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 543: __CMS_KeyClearOne(cnt);
	movf	(___CMS_CheckOnceResult@cnt),w
	fcall	___CMS_KeyClearOne
	line	544
	
i1l8142:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 544: __CMS_KeyOpen(cnt,flag);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckOnceResult@flag),w
	movwf	(___CMS_KeyOpen@flag)
	movf	(___CMS_CheckOnceResult@cnt),w
	fcall	___CMS_KeyOpen
	line	546
	
i1l6184:	
	line	547
	movlw	low(04h)
	incf	(___CMS_CheckOnceResult@cnt),f
	subwf	((___CMS_CheckOnceResult@cnt)),w
	skipc
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l8062
u193_20:
	line	548
	
i1l6187:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckOnceResult
	__end_of___CMS_CheckOnceResult:
	signat	___CMS_CheckOnceResult,89
	global	___CMS_KeyOpen

;; *************** function ___CMS_KeyOpen *****************
;; Defined at:
;;		line 258 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;;  flag            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : B00/800
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1,group=1
	line	258
global __ptext38
__ptext38:	;psect for function ___CMS_KeyOpen
psect	text38
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	258
	global	__size_of___CMS_KeyOpen
	__size_of___CMS_KeyOpen	equ	__end_of___CMS_KeyOpen-___CMS_KeyOpen
	
___CMS_KeyOpen:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyOpen: [wreg+status,2+status,0]
;___CMS_KeyOpen@cnt stored from wreg
	movwf	(___CMS_KeyOpen@cnt)
	line	260
	
i1l7786:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 260: flag = (unsigned char)(flag^0xff);
	movlw	low(0FFh)
	xorwf	(___CMS_KeyOpen@flag),f
	line	261
	
i1l7788:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 261: if(cnt&0x08)
	btfss	(___CMS_KeyOpen@cnt),(3)&7
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l7792
u145_20:
	line	263
	
i1l7790:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 262: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 263: KeyFlag[1] &= flag;
	movf	(___CMS_KeyOpen@flag),w
	andwf	0+(_KeyFlag)+01h,f	;volatile
	line	264
;CMS_CheckTouch_PT_79F72x_V1.01.c: 264: }
	goto	i1l6126
	line	267
	
i1l7792:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 265: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 266: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 267: KeyFlag[0] &= flag;
	movf	(___CMS_KeyOpen@flag),w
	andwf	(_KeyFlag),f	;volatile
	line	269
	
i1l6126:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyOpen
	__end_of___CMS_KeyOpen:
	signat	___CMS_KeyOpen,8313
	global	___CMS_KeyHaveDown

;; *************** function ___CMS_KeyHaveDown *****************
;; Defined at:
;;		line 278 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;;  flag            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/800
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1,group=1
	line	278
global __ptext39
__ptext39:	;psect for function ___CMS_KeyHaveDown
psect	text39
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	278
	global	__size_of___CMS_KeyHaveDown
	__size_of___CMS_KeyHaveDown	equ	__end_of___CMS_KeyHaveDown-___CMS_KeyHaveDown
	
___CMS_KeyHaveDown:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyHaveDown: [wreg+status,2+status,0]
;___CMS_KeyHaveDown@cnt stored from wreg
	movwf	(___CMS_KeyHaveDown@cnt)
	line	280
	
i1l7794:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 280: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	281
	
i1l7796:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 281: KeyCounter++;
	incf	(484)^0180h,f	;volatile
	line	282
	
i1l7798:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 282: if(cnt&0x08)
	btfss	(___CMS_KeyHaveDown@cnt),(3)&7
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l7802
u146_20:
	line	284
	
i1l7800:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 283: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 284: KeyFlag[1] |= flag;
	movf	(___CMS_KeyHaveDown@flag),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	0+(_KeyFlag)+01h,f	;volatile
	line	285
;CMS_CheckTouch_PT_79F72x_V1.01.c: 285: }
	goto	i1l6131
	line	288
	
i1l7802:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 286: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 287: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 288: KeyFlag[0] |= flag;
	movf	(___CMS_KeyHaveDown@flag),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(_KeyFlag),f	;volatile
	line	290
	
i1l6131:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyHaveDown
	__end_of___CMS_KeyHaveDown:
	signat	___CMS_KeyHaveDown,8313
	global	___CMS_KeyClearOne

;; *************** function ___CMS_KeyClearOne *****************
;; Defined at:
;;		line 298 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : B00/B00
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_KeyStopClear
;;		___CMS_CheckOnceResult
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1,group=1
	line	298
global __ptext40
__ptext40:	;psect for function ___CMS_KeyClearOne
psect	text40
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	298
	global	__size_of___CMS_KeyClearOne
	__size_of___CMS_KeyClearOne	equ	__end_of___CMS_KeyClearOne-___CMS_KeyClearOne
	
___CMS_KeyClearOne:	
;incstack = 0
	opt	stack 0
; Regs used in ___CMS_KeyClearOne: [wreg-fsr0h+status,2+status,0]
;___CMS_KeyClearOne@cnt stored from wreg
	movwf	(___CMS_KeyClearOne@cnt)
	line	300
	
i1l7804:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 300: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	301
	
i1l7806:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 301: KeyHave[cnt] = 0;
	movf	(___CMS_KeyClearOne@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	clrf	indf
	line	302
	
i1l7808:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 302: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	movwf	(415)^0180h	;volatile
	line	303
;CMS_CheckTouch_PT_79F72x_V1.01.c: 303: KeyUpShake[cnt] = 0;
	movf	(___CMS_KeyClearOne@cnt),w
	addlw	low(432|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	304
;CMS_CheckTouch_PT_79F72x_V1.01.c: 304: KeyBaseCnt[cnt] = 0;
	movf	(___CMS_KeyClearOne@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	305
	
i1l7810:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 305: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	movwf	(415)^0180h	;volatile
	line	306
	
i1l7812:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 306: KeyOldValue[cnt] = 0;
	clrc
	rlf	(___CMS_KeyClearOne@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	307
	
i1l7814:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 307: KeyReference[cnt] = 2048+512+256;
	movlw	0
	movwf	(??___CMS_KeyClearOne+0)+0
	movlw	0Bh
	movwf	(??___CMS_KeyClearOne+0)+0+1
	clrc
	rlf	(___CMS_KeyClearOne@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(??___CMS_KeyClearOne+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	(??___CMS_KeyClearOne+0)+1,w
	movwf	indf
	line	308
	
i1l6134:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyClearOne
	__end_of___CMS_KeyClearOne:
	signat	___CMS_KeyClearOne,4217
	global	___CMS_CheckKeyOldValue

;; *************** function ___CMS_CheckKeyOldValue *****************
;; Defined at:
;;		line 557 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  KeyOldTemp      2    9[BANK0 ] unsigned int 
;;  KeyTemp         2    7[BANK0 ] unsigned int 
;;  KeyBase         2    5[BANK0 ] unsigned int 
;;  KeyOneTemp      2    2[BANK0 ] unsigned int 
;;  KeyBaseLV       2    0[BANK0 ] unsigned int 
;;  cnt             1   11[BANK0 ] unsigned char 
;;  VolValueOne     1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : B00/800
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0      12       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2      12       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___CMS_KeyIsIn
;; This function is called by:
;;		___CMS_CheckTouchKey
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1,group=1
	line	557
global __ptext41
__ptext41:	;psect for function ___CMS_CheckKeyOldValue
psect	text41
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	557
	global	__size_of___CMS_CheckKeyOldValue
	__size_of___CMS_CheckKeyOldValue	equ	__end_of___CMS_CheckKeyOldValue-___CMS_CheckKeyOldValue
	
___CMS_CheckKeyOldValue:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___CMS_CheckKeyOldValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	559
	
i1l8144:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 559: unsigned char cnt = 0;
	clrf	(___CMS_CheckKeyOldValue@cnt)
	line	566
	
i1l8146:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 565: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 566: __CMS_RAMCTR = 0x01;;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	567
	
i1l8148:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 567: KeyTemp = KeySum[cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@KeyTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@KeyTemp+1)
	line	568
	
i1l8150:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 568: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	569
	
i1l8152:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 569: KeyOldTemp = KeyOldValue[cnt];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@KeyOldTemp)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@KeyOldTemp+1)
	line	570
	
i1l8154:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 570: KeyBase = KeyReference[cnt];
	clrc
	rlf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@KeyBase)
	incf	fsr0,f
	movf	indf,w
	movwf	(___CMS_CheckKeyOldValue@KeyBase+1)
	line	571
	
i1l8156:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 571: if(KeyOldTemp >= KeyTemp)
	movf	(___CMS_CheckKeyOldValue@KeyTemp+1),w
	subwf	(___CMS_CheckKeyOldValue@KeyOldTemp+1),w
	skipz
	goto	u194_25
	movf	(___CMS_CheckKeyOldValue@KeyTemp),w
	subwf	(___CMS_CheckKeyOldValue@KeyOldTemp),w
u194_25:
	skipc
	goto	u194_21
	goto	u194_20
u194_21:
	goto	i1l8160
u194_20:
	line	573
	
i1l8158:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 572: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 573: KeyOneTemp = KeyOldTemp - KeyTemp;
	movf	(___CMS_CheckKeyOldValue@KeyOldTemp+1),w
	movwf	(___CMS_CheckKeyOldValue@KeyOneTemp+1)
	movf	(___CMS_CheckKeyOldValue@KeyOldTemp),w
	movwf	(___CMS_CheckKeyOldValue@KeyOneTemp)
	movf	(___CMS_CheckKeyOldValue@KeyTemp),w
	subwf	(___CMS_CheckKeyOldValue@KeyOneTemp),f
	movf	(___CMS_CheckKeyOldValue@KeyTemp+1),w
	skipc
	decf	(___CMS_CheckKeyOldValue@KeyOneTemp+1),f
	subwf	(___CMS_CheckKeyOldValue@KeyOneTemp+1),f
	line	574
;CMS_CheckTouch_PT_79F72x_V1.01.c: 574: }
	goto	i1l6192
	line	577
	
i1l8160:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 575: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 576: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 577: KeyOneTemp = KeyTemp - KeyOldTemp;
	movf	(___CMS_CheckKeyOldValue@KeyTemp+1),w
	movwf	(___CMS_CheckKeyOldValue@KeyOneTemp+1)
	movf	(___CMS_CheckKeyOldValue@KeyTemp),w
	movwf	(___CMS_CheckKeyOldValue@KeyOneTemp)
	movf	(___CMS_CheckKeyOldValue@KeyOldTemp),w
	subwf	(___CMS_CheckKeyOldValue@KeyOneTemp),f
	movf	(___CMS_CheckKeyOldValue@KeyOldTemp+1),w
	skipc
	decf	(___CMS_CheckKeyOldValue@KeyOneTemp+1),f
	subwf	(___CMS_CheckKeyOldValue@KeyOneTemp+1),f
	line	578
	
i1l6192:	
	line	579
;CMS_CheckTouch_PT_79F72x_V1.01.c: 578: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 579: if(KeyBase >= 2048+512+256)
	movlw	0Bh
	subwf	(___CMS_CheckKeyOldValue@KeyBase+1),w
	movlw	0
	skipnz
	subwf	(___CMS_CheckKeyOldValue@KeyBase),w
	skipc
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l8164
u195_20:
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	101
	
i1l8162:	
	movlw	low(025h)
	movwf	(___CMS_CheckKeyOldValue@VolValueOne)
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	582
;CMS_CheckTouch_PT_79F72x_V1.01.c: 582: KeyBaseLV = 6;
	movlw	06h
	movwf	(___CMS_CheckKeyOldValue@KeyBaseLV)
	clrf	(___CMS_CheckKeyOldValue@KeyBaseLV+1)
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	583
;CMS_CheckTouch_PT_79F72x_V1.01.c: 583: }
	goto	i1l6194
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	584
	
i1l8164:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 584: else if(0 == KeyBase)
	movf	((___CMS_CheckKeyOldValue@KeyBase)),w
iorwf	((___CMS_CheckKeyOldValue@KeyBase+1)),w
	btfss	status,2
	goto	u196_21
	goto	u196_20
u196_21:
	goto	i1l8168
u196_20:
	goto	i1l8162
	line	591
	
i1l8168:	
	movlw	low(0Ch)
	movwf	(___CMS_CheckKeyOldValue@VolValueOne)
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Touch_Kscan_Library.h"
	line	103
	movlw	0Ah
	movwf	(___CMS_CheckKeyOldValue@KeyBaseLV)
	clrf	(___CMS_CheckKeyOldValue@KeyBaseLV+1)
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	593
	
i1l6194:	
	line	595
;CMS_CheckTouch_PT_79F72x_V1.01.c: 593: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 595: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	596
	
i1l8170:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 596: KeyOldValue[cnt] = KeyTemp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(416|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(___CMS_CheckKeyOldValue@KeyTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(___CMS_CheckKeyOldValue@KeyTemp+1),w
	movwf	indf
	line	597
	
i1l8172:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 597: if(!__CMS_KeyIsIn(cnt))
	movf	(___CMS_CheckKeyOldValue@cnt),w
	fcall	___CMS_KeyIsIn
	xorlw	0
	skipz
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l8186
u197_20:
	line	599
	
i1l8174:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 598: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 599: if(KeyOneTemp <= VolValueOne)
	movf	(___CMS_CheckKeyOldValue@VolValueOne),w
	movwf	(??___CMS_CheckKeyOldValue+0)+0
	clrf	(??___CMS_CheckKeyOldValue+0)+0+1
	movf	(___CMS_CheckKeyOldValue@KeyOneTemp+1),w
	subwf	1+(??___CMS_CheckKeyOldValue+0)+0,w
	skipz
	goto	u198_25
	movf	(___CMS_CheckKeyOldValue@KeyOneTemp),w
	subwf	0+(??___CMS_CheckKeyOldValue+0)+0,w
u198_25:
	skipc
	goto	u198_21
	goto	u198_20
u198_21:
	goto	i1l8186
u198_20:
	line	601
	
i1l8176:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 600: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 601: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	602
	
i1l8178:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 602: if(++KeyBaseCnt[cnt] >= KeyBaseLV)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	incf	indf,f
	movf	(indf),w
	movwf	(??___CMS_CheckKeyOldValue+0)+0
	clrf	(??___CMS_CheckKeyOldValue+0)+0+1
	movf	(___CMS_CheckKeyOldValue@KeyBaseLV+1),w
	subwf	1+(??___CMS_CheckKeyOldValue+0)+0,w
	skipz
	goto	u199_25
	movf	(___CMS_CheckKeyOldValue@KeyBaseLV),w
	subwf	0+(??___CMS_CheckKeyOldValue+0)+0,w
u199_25:
	skipc
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l8190
u199_20:
	line	604
	
i1l8180:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 603: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 604: KeyBaseCnt[cnt] = 0;
	movf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	605
	
i1l8182:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 605: __CMS_RAMCTR = 0x02;;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	606
	
i1l8184:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 606: KeyReference[cnt] = KeyOldTemp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrc
	rlf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	movf	(___CMS_CheckKeyOldValue@KeyOldTemp),w
	movwf	indf
	incf	fsr0,f
	movf	(___CMS_CheckKeyOldValue@KeyOldTemp+1),w
	movwf	indf
	goto	i1l8190
	line	611
	
i1l8186:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 609: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 610: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 611: __CMS_RAMCTR = 0x04;;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(415)^0180h	;volatile
	line	612
	
i1l8188:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 612: KeyBaseCnt[cnt] = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___CMS_CheckKeyOldValue@cnt),w
	addlw	low(448|((0x1)<<8))&0ffh
	movwf	fsr0
	clrf	indf
	line	613
	
i1l8190:	
	movlw	low(04h)
	incf	(___CMS_CheckKeyOldValue@cnt),f
	subwf	((___CMS_CheckKeyOldValue@cnt)),w
	skipc
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l8146
u200_20:
	line	614
	
i1l6202:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_CheckKeyOldValue
	__end_of___CMS_CheckKeyOldValue:
	signat	___CMS_CheckKeyOldValue,89
	global	___CMS_KeyIsIn

;; *************** function ___CMS_KeyIsIn *****************
;; Defined at:
;;		line 236 in file "G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;;  i               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : B00/800
;;		On exit  : B00/800
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___CMS_CheckOnceResult
;;		___CMS_CheckKeyOldValue
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1,group=1
	line	236
global __ptext42
__ptext42:	;psect for function ___CMS_KeyIsIn
psect	text42
	file	"G:\WORK\技术相关\项目程序开发\触摸库程序\触摸源程序\新触摸源程序\CMS79F72x\标准\C语言\CMS_CheckTouch_PT_79F72x_V1.01(源)\CMS_CheckTouch_PT_79F72x_V1.01.c"
	line	236
	global	__size_of___CMS_KeyIsIn
	__size_of___CMS_KeyIsIn	equ	__end_of___CMS_KeyIsIn-___CMS_KeyIsIn
	
___CMS_KeyIsIn:	
;incstack = 0
;; hardware stack exceeded
	opt	stack 0
; Regs used in ___CMS_KeyIsIn: [wreg-fsr0h+status,2+status,0+pclath]
;___CMS_KeyIsIn@cnt stored from wreg
	movwf	(___CMS_KeyIsIn@cnt)
	line	238
	
i1l7774:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 238: unsigned char i = (unsigned char)(__CMS_Table_KeyFalg[(unsigned char)(cnt&0x7)]);
	movf	(___CMS_KeyIsIn@cnt),w
	andlw	07h
	addlw	low((((___CMS_Table_KeyFalg)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	movwf	(___CMS_KeyIsIn@i)
	line	240
	
i1l7776:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 240: if(cnt&0x8)
	btfss	(___CMS_KeyIsIn@cnt),(3)&7
	goto	u144_21
	goto	u144_20
u144_21:
	goto	i1l7780
u144_20:
	line	242
	
i1l7778:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 241: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 242: i &= KeyFlag[1];
	movf	0+(_KeyFlag)+01h,w	;volatile
	andwf	(___CMS_KeyIsIn@i),f
	line	243
;CMS_CheckTouch_PT_79F72x_V1.01.c: 243: }
	goto	i1l7782
	line	246
	
i1l7780:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 244: else
;CMS_CheckTouch_PT_79F72x_V1.01.c: 245: {
;CMS_CheckTouch_PT_79F72x_V1.01.c: 246: i &= KeyFlag[0];
	movf	(_KeyFlag),w	;volatile
	andwf	(___CMS_KeyIsIn@i),f
	line	248
	
i1l7782:	
;CMS_CheckTouch_PT_79F72x_V1.01.c: 247: }
;CMS_CheckTouch_PT_79F72x_V1.01.c: 248: return i;
	movf	(___CMS_KeyIsIn@i),w
	line	249
	
i1l6121:	
	return
	opt stack 0
GLOBAL	__end_of___CMS_KeyIsIn
	__end_of___CMS_KeyIsIn:
	signat	___CMS_KeyIsIn,4217
	global	_PWM_Ctr_PTC

;; *************** function _PWM_Ctr_PTC *****************
;; Defined at:
;;		line 38 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
	line	38
global __ptext43
__ptext43:	;psect for function _PWM_Ctr_PTC
psect	text43
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
	line	38
	global	__size_of_PWM_Ctr_PTC
	__size_of_PWM_Ctr_PTC	equ	__end_of_PWM_Ctr_PTC-_PWM_Ctr_PTC
	
_PWM_Ctr_PTC:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_Ctr_PTC: [wreg+status,2+status,0]
	line	40
	
i1l8406:	
;PWM.c: 40: if(++PWM_Count_PTC >= 128)
	movlw	low(080h)
	incf	(_PWM_Count_PTC),f
	subwf	((_PWM_Count_PTC)),w
	skipc
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l8410
u232_20:
	line	42
	
i1l8408:	
;PWM.c: 41: {
;PWM.c: 42: PWM_Count_PTC = 0;
	clrf	(_PWM_Count_PTC)
	line	44
	
i1l8410:	
;PWM.c: 43: }
;PWM.c: 44: if(PWM_Count_PTC < PWM_Duty_PTC)
	movf	(_PWM_Duty_PTC),w
	subwf	(_PWM_Count_PTC),w
	skipnc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l3764
u233_20:
	line	45
	
i1l8412:	
;PWM.c: 45: RA4 = 1;
	bsf	(44/8),(44)&7	;volatile
	goto	i1l3766
	line	46
	
i1l3764:	
	line	47
;PWM.c: 46: else
;PWM.c: 47: RA4 = 0;
	bcf	(44/8),(44)&7	;volatile
	line	48
	
i1l3766:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Ctr_PTC
	__end_of_PWM_Ctr_PTC:
	signat	_PWM_Ctr_PTC,89
	global	_PWM_Ctr_Motor

;; *************** function _PWM_Ctr_Motor *****************
;; Defined at:
;;		line 26 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1,group=0
	line	26
global __ptext44
__ptext44:	;psect for function _PWM_Ctr_Motor
psect	text44
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\PWM.c"
	line	26
	global	__size_of_PWM_Ctr_Motor
	__size_of_PWM_Ctr_Motor	equ	__end_of_PWM_Ctr_Motor-_PWM_Ctr_Motor
	
_PWM_Ctr_Motor:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_Ctr_Motor: [wreg+status,2+status,0]
	line	28
	
i1l8398:	
;PWM.c: 28: if(++PWM_Count_Motor >= 128)
	movlw	low(080h)
	incf	(_PWM_Count_Motor),f
	subwf	((_PWM_Count_Motor)),w
	skipc
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l8402
u230_20:
	line	30
	
i1l8400:	
;PWM.c: 29: {
;PWM.c: 30: PWM_Count_Motor = 0;
	clrf	(_PWM_Count_Motor)
	line	32
	
i1l8402:	
;PWM.c: 31: }
;PWM.c: 32: if(PWM_Count_Motor < PWM_Duty_Motor)
	movf	(_PWM_Duty_Motor),w
	subwf	(_PWM_Count_Motor),w
	skipnc
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l3758
u231_20:
	line	33
	
i1l8404:	
;PWM.c: 33: RA3 = 1;
	bsf	(43/8),(43)&7	;volatile
	goto	i1l3760
	line	34
	
i1l3758:	
	line	35
;PWM.c: 34: else
;PWM.c: 35: RA3 = 0;
	bcf	(43/8),(43)&7	;volatile
	line	36
	
i1l3760:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Ctr_Motor
	__end_of_PWM_Ctr_Motor:
	signat	_PWM_Ctr_Motor,89
	global	_Display

;; *************** function _Display *****************
;; Defined at:
;;		line 166 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Display_Refresh
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	166
global __ptext45
__ptext45:	;psect for function _Display
psect	text45
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	166
	global	__size_of_Display
	__size_of_Display	equ	__end_of_Display-_Display
	
_Display:	
;incstack = 0
	opt	stack 0
; Regs used in _Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	168
	
i1l8396:	
;Display.c: 168: Display_Refresh();
	fcall	_Display_Refresh
	line	169
	
i1l5976:	
	return
	opt stack 0
GLOBAL	__end_of_Display
	__end_of_Display:
	signat	_Display,89
	global	_Display_Refresh

;; *************** function _Display_Refresh *****************
;; Defined at:
;;		line 96 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] unsigned char 
;;  current_src     1    4[COMMON] unsigned char 
;;  sinks           1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_SetPin
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1,group=0
	line	96
global __ptext46
__ptext46:	;psect for function _Display_Refresh
psect	text46
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	96
	global	__size_of_Display_Refresh
	__size_of_Display_Refresh	equ	__end_of_Display_Refresh-_Display_Refresh
	
_Display_Refresh:	
;incstack = 0
	opt	stack 0
; Regs used in _Display_Refresh: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	99
	
i1l8000:	
;Display.c: 97: uint8_t i;
;Display.c: 99: SetPin(0, 0); SetPin(1, 0); SetPin(2, 0); SetPin(3, 0); SetPin(4, 0);
	clrf	(i1SetPin@mode)
	movlw	low(0)
	fcall	i1_SetPin
	clrf	(i1SetPin@mode)
	movlw	low(01h)
	fcall	i1_SetPin
	clrf	(i1SetPin@mode)
	movlw	low(02h)
	fcall	i1_SetPin
	clrf	(i1SetPin@mode)
	movlw	low(03h)
	fcall	i1_SetPin
	clrf	(i1SetPin@mode)
	movlw	low(04h)
	fcall	i1_SetPin
	line	102
	
i1l8002:	
;Display.c: 102: uint8_t current_src = scan_idx;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_scan_idx),w
	movwf	(Display_Refresh@current_src)
	line	103
	
i1l8004:	
;Display.c: 103: uint8_t sinks = disp_buffer[current_src];
	movf	(Display_Refresh@current_src),w
	addlw	low(_disp_buffer|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(Display_Refresh@sinks)
	line	106
	
i1l8006:	
;Display.c: 106: for(i=0; i<5; i++) {
	clrf	(Display_Refresh@i)
	line	107
	
i1l8012:	
;Display.c: 107: if(i == current_src) continue;
	movf	(Display_Refresh@i),w
	xorwf	(Display_Refresh@current_src),w
	skipz
	goto	u172_21
	goto	u172_20
u172_21:
	goto	i1l8016
u172_20:
	goto	i1l8020
	line	108
	
i1l8016:	
;Display.c: 108: if(sinks & (1 << i)) {
	movlw	low(01h)
	movwf	(??_Display_Refresh+0)+0
	incf	(Display_Refresh@i),w
	goto	u173_24
u173_25:
	clrc
	rlf	(??_Display_Refresh+0)+0,f
u173_24:
	addlw	-1
	skipz
	goto	u173_25
	movf	0+(??_Display_Refresh+0)+0,w
	andwf	(Display_Refresh@sinks),w
	btfsc	status,2
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l8020
u174_20:
	line	109
	
i1l8018:	
;Display.c: 109: SetPin(i, 2);
	movlw	low(02h)
	movwf	(i1SetPin@mode)
	movf	(Display_Refresh@i),w
	fcall	i1_SetPin
	line	106
	
i1l8020:	
	incf	(Display_Refresh@i),f
	
i1l8022:	
	movlw	low(05h)
	subwf	(Display_Refresh@i),w
	skipc
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l8012
u175_20:
	line	114
	
i1l8024:	
;Display.c: 110: }
;Display.c: 111: }
;Display.c: 114: SetPin(current_src, 1);
	clrf	(i1SetPin@mode)
	incf	(i1SetPin@mode),f
	movf	(Display_Refresh@current_src),w
	fcall	i1_SetPin
	line	117
	
i1l8026:	
;Display.c: 117: scan_idx++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(_scan_idx),f
	line	118
	
i1l8028:	
;Display.c: 118: if (scan_idx >= 5) scan_idx = 0;
	movlw	low(05h)
	subwf	(_scan_idx),w
	skipc
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l5951
u176_20:
	
i1l8030:	
	clrf	(_scan_idx)
	line	119
	
i1l5951:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Refresh
	__end_of_Display_Refresh:
	signat	_Display_Refresh,89
	global	i1_SetPin

;; *************** function i1_SetPin *****************
;; Defined at:
;;		line 33 in file "D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
;; Parameters:    Size  Location     Type
;;  pin_idx         1    wreg     unsigned char 
;;  mode            1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pin_idx         1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display_Refresh
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1,group=0
	line	33
global __ptext47
__ptext47:	;psect for function i1_SetPin
psect	text47
	file	"D:\Homework\laptop\Homework\嵌入式\warmFan_finish\Display.c"
	line	33
	global	__size_ofi1_SetPin
	__size_ofi1_SetPin	equ	__end_ofi1_SetPin-i1_SetPin
	
i1_SetPin:	
;incstack = 0
	opt	stack 0
; Regs used in i1_SetPin: [wreg-fsr0h+status,2+status,0]
;i1SetPin@pin_idx stored from wreg
	movwf	(i1SetPin@pin_idx)
	line	40
	
i1l7872:	
;Display.c: 40: switch (pin_idx) {
	goto	i1l7916
	line	42
	
i1l7874:	
;Display.c: 42: if (mode == 0) TRISA |= (1<<0);
	movf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l5901
u150_20:
	
i1l7876:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(133)^080h+(0/8),(0)&7	;volatile
	goto	i1l5926
	line	43
	
i1l5901:	
;Display.c: 43: else { TRISA &= ~(1<<0); if(mode==1) PORTA |= (1<<0); else PORTA &= ~(1<<0); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(0/8),(0)&7	;volatile
	
i1l7878:	
		decf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l5903
u151_20:
	
i1l7880:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(0/8),(0)&7	;volatile
	goto	i1l5926
	
i1l5903:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(0/8),(0)&7	;volatile
	goto	i1l5926
	line	46
	
i1l7882:	
;Display.c: 46: if (mode == 0) TRISA |= (1<<1);
	movf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l5907
u152_20:
	
i1l7884:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(133)^080h+(1/8),(1)&7	;volatile
	goto	i1l5926
	line	47
	
i1l5907:	
;Display.c: 47: else { TRISA &= ~(1<<1); if(mode==1) PORTA |= (1<<1); else PORTA &= ~(1<<1); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(1/8),(1)&7	;volatile
	
i1l7886:	
		decf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l5909
u153_20:
	
i1l7888:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(1/8),(1)&7	;volatile
	goto	i1l5926
	
i1l5909:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(1/8),(1)&7	;volatile
	goto	i1l5926
	line	50
	
i1l7890:	
;Display.c: 50: if (mode == 0) TRISA |= (1<<2);
	movf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l5912
u154_20:
	
i1l7892:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(133)^080h+(2/8),(2)&7	;volatile
	goto	i1l5926
	line	51
	
i1l5912:	
;Display.c: 51: else { TRISA &= ~(1<<2); if(mode==1) PORTA |= (1<<2); else PORTA &= ~(1<<2); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(2/8),(2)&7	;volatile
	
i1l7894:	
		decf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l5914
u155_20:
	
i1l7896:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(5)+(2/8),(2)&7	;volatile
	goto	i1l5926
	
i1l5914:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(5)+(2/8),(2)&7	;volatile
	goto	i1l5926
	line	54
	
i1l7898:	
;Display.c: 54: if (mode == 0) TRISB |= (1<<4);
	movf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l5917
u156_20:
	
i1l7900:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h+(4/8),(4)&7	;volatile
	goto	i1l5926
	line	55
	
i1l5917:	
;Display.c: 55: else { TRISB &= ~(1<<4); if(mode==1) PORTB |= (1<<4); else PORTB &= ~(1<<4); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h+(4/8),(4)&7	;volatile
	
i1l7902:	
		decf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l5919
u157_20:
	
i1l7904:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(6)+(4/8),(4)&7	;volatile
	goto	i1l5926
	
i1l5919:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(4/8),(4)&7	;volatile
	goto	i1l5926
	line	58
	
i1l7906:	
;Display.c: 58: if (mode == 0) TRISB |= (1<<5);
	movf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u158_21
	goto	u158_20
u158_21:
	goto	i1l5922
u158_20:
	
i1l7908:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(134)^080h+(5/8),(5)&7	;volatile
	goto	i1l5926
	line	59
	
i1l5922:	
;Display.c: 59: else { TRISB &= ~(1<<5); if(mode==1) PORTB |= (1<<5); else PORTB &= ~(1<<5); }
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h+(5/8),(5)&7	;volatile
	
i1l7910:	
		decf	((i1SetPin@mode)),w
	btfss	status,2
	goto	u159_21
	goto	u159_20
u159_21:
	goto	i1l5924
u159_20:
	
i1l7912:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(6)+(5/8),(5)&7	;volatile
	goto	i1l5926
	
i1l5924:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(6)+(5/8),(5)&7	;volatile
	goto	i1l5926
	line	40
	
i1l7916:	
	movf	(i1SetPin@pin_idx),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           23     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_push
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l7874
	xorlw	1^0	; case 1
	skipnz
	goto	i1l7882
	xorlw	2^1	; case 2
	skipnz
	goto	i1l7890
	xorlw	3^2	; case 3
	skipnz
	goto	i1l7898
	xorlw	4^3	; case 4
	skipnz
	goto	i1l7906
	goto	i1l5926
	opt asmopt_pop

	line	62
	
i1l5926:	
	return
	opt stack 0
GLOBAL	__end_ofi1_SetPin
	__end_ofi1_SetPin:
	signat	i1_SetPin,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
