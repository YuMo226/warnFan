opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	79F726
opt include "D:\CMS\CMS_IDE_V2.03.21\data\include\79f726.cgen.inc"
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
	FNCALL	_main,_InitLed
	FNROOT	_main
	FNCALL	_ISR,_Display
	FNCALL	_Display,_DisplayComx
	FNCALL	_DisplayComx,_DisplayData
	FNCALL	_DisplayComx,_DisplayData1
	FNCALL	_DisplayComx,_DisplayData2
	FNCALL	_DisplayComx,_DisplayFunction
	FNCALL	_DisplayComx,_DisplayTurn
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_SegTab
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
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	30
_SegTab:
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
	retlw	077h
	retlw	07Ch
	retlw	058h
	retlw	05Eh
	retlw	079h
	retlw	071h
	retlw	low(0)
	global __end_of_SegTab
__end_of_SegTab:
	global	_SegTab
	global	_tcount
	global	Display@Dcount
	global	_Dis_SSun
	global	_Dis_SFan
	global	_Dis_SC1
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_Dis_SC1:
       ds      1

	global	_Dis_SC0
_Dis_SC0:
       ds      1

	global	_Dis_SCircle
_Dis_SCircle:
       ds      1

	global	_Dis_SWS
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_Dis_SWS:
       ds      1

	global	_Dis_SAD
_Dis_SAD:
       ds      1

	global	_Dis_SH
_Dis_SH:
       ds      1

	global	_T2CON
_T2CON	set	18
	global	_INTCON
_INTCON	set	11
	global	_TMR2IF
_TMR2IF	set	97
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_PR2
_PR2	set	146
	global	_OSCCON
_OSCCON	set	143
	global	_TRISB
_TRISB	set	134
	global	_TRISA
_TRISA	set	133
	global	_TMR2IE
_TMR2IE	set	1121
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISA0
_TRISA0	set	1064
	global	_TRISA1
_TRISA1	set	1065
	global	_TRISA2
_TRISA2	set	1066
; #config settings
	file	"practice.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_tcount:
       ds      1

Display@Dcount:
       ds      1

_Dis_SSun:
       ds      1

_Dis_SFan:
       ds      1

	file	"practice.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
?_InitLed:	; 1 bytes @ 0x0
?_DisplayData:	; 1 bytes @ 0x0
??_DisplayData:	; 1 bytes @ 0x0
?_DisplayData1:	; 1 bytes @ 0x0
??_DisplayData1:	; 1 bytes @ 0x0
?_DisplayData2:	; 1 bytes @ 0x0
??_DisplayData2:	; 1 bytes @ 0x0
?_DisplayFunction:	; 1 bytes @ 0x0
??_DisplayFunction:	; 1 bytes @ 0x0
?_DisplayTurn:	; 1 bytes @ 0x0
??_DisplayTurn:	; 1 bytes @ 0x0
?_DisplayComx:	; 1 bytes @ 0x0
?_Display:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	global	DisplayData@data
DisplayData@data:	; 1 bytes @ 0x0
	global	DisplayData1@data
DisplayData1@data:	; 1 bytes @ 0x0
	ds	1
??_DisplayComx:	; 1 bytes @ 0x1
	global	DisplayComx@x
DisplayComx@x:	; 1 bytes @ 0x1
	ds	1
??_Display:	; 1 bytes @ 0x2
	ds	1
??_ISR:	; 1 bytes @ 0x3
	ds	4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_InitLed:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    17
;!    Data        0
;!    BSS         4
;!    Persistent  6
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7      14
;!    BANK0            80      0       3
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
;!    _ISR->_Display
;!    _Display->_DisplayComx
;!    _DisplayComx->_DisplayData
;!    _DisplayComx->_DisplayData1
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
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
;! (0) _main                                                 0     0      0       0
;!                            _InitLed
;! ---------------------------------------------------------------------------------
;! (1) _InitLed                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  4     4      0     142
;!                                              3 COMMON     4     4      0
;!                            _Display
;! ---------------------------------------------------------------------------------
;! (3) _Display                                              1     1      0     142
;!                                              2 COMMON     1     1      0
;!                        _DisplayComx
;! ---------------------------------------------------------------------------------
;! (4) _DisplayComx                                          1     1      0     142
;!                                              1 COMMON     1     1      0
;!                        _DisplayData
;!                       _DisplayData1
;!                       _DisplayData2
;!                    _DisplayFunction
;!                        _DisplayTurn
;! ---------------------------------------------------------------------------------
;! (6) _DisplayTurn                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _DisplayFunction                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _DisplayData2                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _DisplayData1                                         1     1      0      60
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (5) _DisplayData                                          1     1      0      60
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _InitLed
;!
;! _ISR (ROOT)
;!   _Display
;!     _DisplayComx
;!       _DisplayData
;!       _DisplayData1
;!       _DisplayData2
;!       _DisplayFunction
;!       _DisplayTurn
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            50      0       0       3        0.0%
;!BANK0               50      0       3       4        3.8%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITBANK1            50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BANK1               50      0       0       6        0.0%
;!BANK2               50      0       0       7        0.0%
;!ABS                  0      0      11       8        0.0%
;!DATA                 0      0      11       9        0.0%
;!BITBANK2            50      0       0      10        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 16 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_InitLed
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
	line	16
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2232:	
# 18 "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
clrwdt ;# 
psect	maintext
	line	19
	
l2234:	
;main.c: 19: OSCCON=0B01110001;
	movlw	low(071h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	21
;main.c: 21: PR2=62;
	movlw	low(03Eh)
	movwf	(146)^080h	;volatile
	line	22
	
l2236:	
;main.c: 22: TMR2IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	23
	
l2238:	
;main.c: 23: TMR2IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	24
;main.c: 24: T2CON=0B00000101;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(18)	;volatile
	line	26
	
l2240:	
;main.c: 26: InitLed();
	fcall	_InitLed
	line	28
	
l2242:	
;main.c: 28: INTCON=0B11000000;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	29
	
l2244:	
;main.c: 29: Dis_SC0=1;
	movlw	low(01h)
	movwf	(_Dis_SC0)	;volatile
	line	30
	
l2246:	
;main.c: 30: Dis_SC1=6;
	movlw	low(06h)
	movwf	(_Dis_SC1)	;volatile
	line	31
	
l2248:	
;main.c: 31: {Dis_SFan = 0;};
	clrf	(_Dis_SFan)	;volatile
	line	32
	
l2250:	
;main.c: 32: {Dis_SSun = 0;};
	clrf	(_Dis_SSun)	;volatile
	line	33
	
l2252:	
;main.c: 33: {Dis_SCircle = 1;};
	movlw	low(01h)
	movwf	(_Dis_SCircle)	;volatile
	line	34
	
l2254:	
;main.c: 34: {Dis_SH = 1;};
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_Dis_SH)	;volatile
	line	35
	
l2256:	
;main.c: 35: {Dis_SAD = 1;};
	movlw	low(01h)
	movwf	(_Dis_SAD)	;volatile
	line	36
	
l2258:	
;main.c: 36: {Dis_SWS = 1;};
	movlw	low(01h)
	movwf	(_Dis_SWS)	;volatile
	line	38
;main.c: 38: while(1)
	
l1518:	
	line	40
# 40 "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
clrwdt ;# 
psect	maintext
	line	41
	
l2260:	
;main.c: 41: if(tcount>=32)
	movlw	low(020h)
	subwf	(_tcount),w
	skipc
	goto	u391
	goto	u390
u391:
	goto	l1518
u390:
	line	43
	
l2262:	
;main.c: 42: {
;main.c: 43: tcount=0;
	clrf	(_tcount)
	goto	l1518
	global	start
	ljmp	start
	opt stack 0
	line	47
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_InitLed

;; *************** function _InitLed *****************
;; Defined at:
;;		line 51 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
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
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	51
global __ptext1
__ptext1:	;psect for function _InitLed
psect	text1
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	51
	global	__size_of_InitLed
	__size_of_InitLed	equ	__end_of_InitLed-_InitLed
	
_InitLed:	
;incstack = 0
	opt	stack 2
; Regs used in _InitLed: [wreg]
	line	54
	
l2230:	
;Display.c: 54: TRISA&=0B11111111;
	bsf	status, 5	;RP0=1, select bank1
	movf	(133)^080h,w	;volatile
	line	55
;Display.c: 55: TRISB&=0B11111111;
	movf	(134)^080h,w	;volatile
	line	57
	
l717:	
	return
	opt stack 0
GLOBAL	__end_of_InitLed
	__end_of_InitLed:
	signat	_InitLed,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 6 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
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
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Display
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
	line	6
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\main.c"
	line	6
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
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
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text2
	line	8
	
i1l2190:	
;main.c: 8: if(TMR2IF)
	btfss	(97/8),(97)&7	;volatile
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l1513
u37_20:
	line	10
	
i1l2192:	
;main.c: 9: {
;main.c: 10: TMR2IF=0;
	bcf	(97/8),(97)&7	;volatile
	line	11
	
i1l2194:	
;main.c: 11: tcount++;
	incf	(_tcount),f
	line	12
	
i1l2196:	
;main.c: 12: Display();
	fcall	_Display
	line	14
	
i1l1513:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_Display

;; *************** function _Display *****************
;; Defined at:
;;		line 302 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
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
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DisplayComx
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	302
global __ptext3
__ptext3:	;psect for function _Display
psect	text3
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	302
	global	__size_of_Display
	__size_of_Display	equ	__end_of_Display-_Display
	
_Display:	
;incstack = 0
	opt	stack 2
; Regs used in _Display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	304
	
i1l2172:	
;Display.c: 304: TRISA&=0B11111111;
	bsf	status, 5	;RP0=1, select bank1
	movf	(133)^080h,w	;volatile
	line	305
;Display.c: 305: TRISB&=0B11111111;
	movf	(134)^080h,w	;volatile
	line	312
	
i1l2174:	
;Display.c: 307: static unsigned char Dcount;
;Display.c: 312: RA0 = 1; RA1 = 1; RA2 = 1; RB4 = 1; RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	
i1l2176:	
	bsf	(41/8),(41)&7	;volatile
	
i1l2178:	
	bsf	(42/8),(42)&7	;volatile
	
i1l2180:	
	bsf	(52/8),(52)&7	;volatile
	
i1l2182:	
	bsf	(53/8),(53)&7	;volatile
	line	313
	
i1l2184:	
;Display.c: 313: DisplayComx(Dcount);
	movf	(Display@Dcount),w
	fcall	_DisplayComx
	line	314
	
i1l2186:	
;Display.c: 314: if(Dcount++>=5)
	movf	(Display@Dcount),w
	incf	(Display@Dcount),f
	movwf	(??_Display+0)+0
	movlw	05h
	subwf	(??_Display+0)+0,w
	skipc
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l789
u36_20:
	line	315
	
i1l2188:	
;Display.c: 315: Dcount=0;
	clrf	(Display@Dcount)
	line	332
	
i1l789:	
	return
	opt stack 0
GLOBAL	__end_of_Display
	__end_of_Display:
	signat	_Display,89
	global	_DisplayComx

;; *************** function _DisplayComx *****************
;; Defined at:
;;		line 279 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_DisplayData
;;		_DisplayData1
;;		_DisplayData2
;;		_DisplayFunction
;;		_DisplayTurn
;; This function is called by:
;;		_Display
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	279
global __ptext4
__ptext4:	;psect for function _DisplayComx
psect	text4
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	279
	global	__size_of_DisplayComx
	__size_of_DisplayComx	equ	__end_of_DisplayComx-_DisplayComx
	
_DisplayComx:	
;incstack = 0
	opt	stack 2
; Regs used in _DisplayComx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;DisplayComx@x stored from wreg
	movwf	(DisplayComx@x)
	line	281
	
i1l2122:	
# 281 "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
clrwdt ;# 
psect	text4
	line	282
	
i1l2124:	
;Display.c: 282: TRISA&=0B11111111;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(133)^080h,w	;volatile
	line	283
;Display.c: 283: TRISB&=0B11111111;
	movf	(134)^080h,w	;volatile
	line	284
	
i1l2126:	
;Display.c: 284: RA0 = 1; RA1 = 1; RA2 = 1; RB4 = 1; RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	
i1l2128:	
	bsf	(41/8),(41)&7	;volatile
	
i1l2130:	
	bsf	(42/8),(42)&7	;volatile
	
i1l2132:	
	bsf	(52/8),(52)&7	;volatile
	
i1l2134:	
	bsf	(53/8),(53)&7	;volatile
	line	285
;Display.c: 285: switch(x)
	goto	i1l2168
	line	288
	
i1l2136:	
	movf	(_Dis_SC0),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	fcall	_DisplayData
	
i1l2138:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(40/8),(40)&7	;volatile
	
i1l2140:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7	;volatile
	goto	i1l783
	line	289
	
i1l2142:	
	movf	(_Dis_SC1),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	fcall	_DisplayData1
	
i1l2144:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	
i1l2146:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	goto	i1l783
	line	290
	
i1l2148:	
	fcall	_DisplayData2
	
i1l2150:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(52/8),(52)&7	;volatile
	
i1l2152:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	goto	i1l783
	line	291
	
i1l2154:	
	fcall	_DisplayFunction
	
i1l2156:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7	;volatile
	
i1l2158:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	goto	i1l783
	line	292
	
i1l2160:	
	fcall	_DisplayTurn
	
i1l2162:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	(53/8),(53)&7	;volatile
	
i1l2164:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	goto	i1l783
	line	285
	
i1l2168:	
	movf	(DisplayComx@x),w
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
	goto	i1l2136
	xorlw	1^0	; case 1
	skipnz
	goto	i1l2142
	xorlw	2^1	; case 2
	skipnz
	goto	i1l2148
	xorlw	3^2	; case 3
	skipnz
	goto	i1l2154
	xorlw	4^3	; case 4
	skipnz
	goto	i1l2160
	goto	i1l783
	opt asmopt_pop

	line	295
	
i1l783:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayComx
	__end_of_DisplayComx:
	signat	_DisplayComx,4217
	global	_DisplayTurn

;; *************** function _DisplayTurn *****************
;; Defined at:
;;		line 232 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
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
;;		On exit  : 200/0
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
;;		_DisplayComx
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	232
global __ptext5
__ptext5:	;psect for function _DisplayTurn
psect	text5
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	232
	global	__size_of_DisplayTurn
	__size_of_DisplayTurn	equ	__end_of_DisplayTurn-_DisplayTurn
	
_DisplayTurn:	
;incstack = 0
	opt	stack 2
; Regs used in _DisplayTurn: [wreg-fsr0h+status,2+status,0+pclath]
	line	235
	
i1l2106:	
;Display.c: 235: if(SegTab[Dis_SC1]&0x20)
	movf	(_Dis_SC1),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	020h
	btfsc	status,2
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l764
u32_20:
	line	237
	
i1l2108:	
;Display.c: 236: {
;Display.c: 237: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	238
;Display.c: 238: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	239
;Display.c: 239: }else
	goto	i1l2110
	
i1l764:	
	line	241
;Display.c: 240: {
;Display.c: 241: TRISA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	244
	
i1l2110:	
;Display.c: 243: }
;Display.c: 244: if(SegTab[Dis_SC1]&0x40)
	movf	(_Dis_SC1),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	040h
	btfsc	status,2
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l766
u33_20:
	line	246
	
i1l2112:	
;Display.c: 245: {
;Display.c: 246: TRISA1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	247
;Display.c: 247: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	248
;Display.c: 248: }else
	goto	i1l2114
	
i1l766:	
	line	250
;Display.c: 249: {
;Display.c: 250: TRISA1=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	253
	
i1l2114:	
;Display.c: 252: }
;Display.c: 253: if(Dis_SAD)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_Dis_SAD)),w	;volatile
	btfsc	status,2
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l768
u34_20:
	line	255
	
i1l2116:	
;Display.c: 254: {
;Display.c: 255: TRISA2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	256
;Display.c: 256: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	257
;Display.c: 257: }else
	goto	i1l2118
	
i1l768:	
	line	259
;Display.c: 258: {
;Display.c: 259: TRISA2=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7	;volatile
	line	262
	
i1l2118:	
;Display.c: 261: }
;Display.c: 262: if(Dis_SWS)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_Dis_SWS)),w	;volatile
	btfsc	status,2
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l770
u35_20:
	line	264
	
i1l2120:	
;Display.c: 263: {
;Display.c: 264: TRISB4=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	265
;Display.c: 265: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	266
;Display.c: 266: }else
	goto	i1l772
	
i1l770:	
	line	268
;Display.c: 267: {
;Display.c: 268: TRISB4=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	271
	
i1l772:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayTurn
	__end_of_DisplayTurn:
	signat	_DisplayTurn,89
	global	_DisplayFunction

;; *************** function _DisplayFunction *****************
;; Defined at:
;;		line 191 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
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
;;		On exit  : 200/0
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
;;		_DisplayComx
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	191
global __ptext6
__ptext6:	;psect for function _DisplayFunction
psect	text6
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	191
	global	__size_of_DisplayFunction
	__size_of_DisplayFunction	equ	__end_of_DisplayFunction-_DisplayFunction
	
_DisplayFunction:	
;incstack = 0
	opt	stack 3
; Regs used in _DisplayFunction: [wreg+status,2+status,0]
	line	194
	
i1l2090:	
;Display.c: 194: if(Dis_SFan)
	movf	((_Dis_SFan)),w	;volatile
	btfsc	status,2
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l753
u28_20:
	line	196
	
i1l2092:	
;Display.c: 195: {
;Display.c: 196: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	197
;Display.c: 197: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	198
;Display.c: 198: }else
	goto	i1l2094
	
i1l753:	
	line	200
;Display.c: 199: {
;Display.c: 200: TRISA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	203
	
i1l2094:	
;Display.c: 202: }
;Display.c: 203: if(Dis_SSun)
	movf	((_Dis_SSun)),w	;volatile
	btfsc	status,2
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l755
u29_20:
	line	205
	
i1l2096:	
;Display.c: 204: {
;Display.c: 205: TRISA1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	206
;Display.c: 206: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	207
;Display.c: 207: }else
	goto	i1l2098
	
i1l755:	
	line	209
;Display.c: 208: {
;Display.c: 209: TRISA1=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	212
	
i1l2098:	
;Display.c: 211: }
;Display.c: 212: if(Dis_SCircle)
	movf	((_Dis_SCircle)),w	;volatile
	btfsc	status,2
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l757
u30_20:
	line	214
	
i1l2100:	
;Display.c: 213: {
;Display.c: 214: TRISB4=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	215
;Display.c: 215: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	216
;Display.c: 216: }else
	goto	i1l2102
	
i1l757:	
	line	218
;Display.c: 217: {
;Display.c: 218: TRISB4=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	221
	
i1l2102:	
;Display.c: 220: }
;Display.c: 221: if(Dis_SH)
	bcf	status, 5	;RP0=0, select bank0
	movf	((_Dis_SH)),w	;volatile
	btfsc	status,2
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l759
u31_20:
	line	223
	
i1l2104:	
;Display.c: 222: {
;Display.c: 223: TRISB5=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	224
;Display.c: 224: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	225
;Display.c: 225: }else
	goto	i1l761
	
i1l759:	
	line	227
;Display.c: 226: {
;Display.c: 227: TRISB5=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	230
	
i1l761:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayFunction
	__end_of_DisplayFunction:
	signat	_DisplayFunction,89
	global	_DisplayData2

;; *************** function _DisplayData2 *****************
;; Defined at:
;;		line 144 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
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
;;		On exit  : 200/0
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
;;		_DisplayComx
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	144
global __ptext7
__ptext7:	;psect for function _DisplayData2
psect	text7
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	144
	global	__size_of_DisplayData2
	__size_of_DisplayData2	equ	__end_of_DisplayData2-_DisplayData2
	
_DisplayData2:	
;incstack = 0
	opt	stack 2
; Regs used in _DisplayData2: [wreg-fsr0h+status,2+status,0+pclath]
	line	147
	
i1l2074:	
;Display.c: 147: if(SegTab[Dis_SC0]&0x10)
	movf	(_Dis_SC0),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	010h
	btfsc	status,2
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l742
u24_20:
	line	149
	
i1l2076:	
;Display.c: 148: {
;Display.c: 149: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	150
;Display.c: 150: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	151
;Display.c: 151: }else
	goto	i1l2078
	
i1l742:	
	line	153
;Display.c: 152: {
;Display.c: 153: TRISA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	156
	
i1l2078:	
;Display.c: 155: }
;Display.c: 156: if(SegTab[Dis_SC0]&0x20)
	movf	(_Dis_SC0),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	020h
	btfsc	status,2
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l744
u25_20:
	line	158
	
i1l2080:	
;Display.c: 157: {
;Display.c: 158: TRISA1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	159
;Display.c: 159: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	160
;Display.c: 160: }else
	goto	i1l2082
	
i1l744:	
	line	162
;Display.c: 161: {
;Display.c: 162: TRISA1=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	165
	
i1l2082:	
;Display.c: 164: }
;Display.c: 165: if(SegTab[Dis_SC0]&0x40)
	movf	(_Dis_SC0),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	040h
	btfsc	status,2
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l746
u26_20:
	line	167
	
i1l2084:	
;Display.c: 166: {
;Display.c: 167: TRISA2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	168
;Display.c: 168: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	169
;Display.c: 169: }else
	goto	i1l2086
	
i1l746:	
	line	171
;Display.c: 170: {
;Display.c: 171: TRISA2=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7	;volatile
	line	174
	
i1l2086:	
;Display.c: 173: }
;Display.c: 174: if(SegTab[Dis_SC1]&0x10)
	movf	(_Dis_SC1),w
	addlw	low((((_SegTab)-__stringbase)|8000h))
	movwf	fsr0
	fcall	stringdir
	andlw	010h
	btfsc	status,2
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l748
u27_20:
	line	176
	
i1l2088:	
;Display.c: 175: {
;Display.c: 176: TRISB5=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	177
;Display.c: 177: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	178
;Display.c: 178: }else
	goto	i1l750
	
i1l748:	
	line	180
;Display.c: 179: {
;Display.c: 180: TRISB5=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	183
	
i1l750:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayData2
	__end_of_DisplayData2:
	signat	_DisplayData2,89
	global	_DisplayData1

;; *************** function _DisplayData1 *****************
;; Defined at:
;;		line 106 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
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
;;		_DisplayComx
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	106
global __ptext8
__ptext8:	;psect for function _DisplayData1
psect	text8
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	106
	global	__size_of_DisplayData1
	__size_of_DisplayData1	equ	__end_of_DisplayData1-_DisplayData1
	
_DisplayData1:	
;incstack = 0
	opt	stack 3
; Regs used in _DisplayData1: [wreg]
;DisplayData1@data stored from wreg
	movwf	(DisplayData1@data)
	line	109
	
i1l1908:	
;Display.c: 109: if(data&0x01)
	btfss	(DisplayData1@data),(0)&7
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l731
u5_20:
	line	111
	
i1l1910:	
;Display.c: 110: {
;Display.c: 111: TRISA0=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	112
;Display.c: 112: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(40/8),(40)&7	;volatile
	line	113
;Display.c: 113: }else
	goto	i1l732
	
i1l731:	
	line	115
;Display.c: 114: {
;Display.c: 115: TRISA0=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	116
	
i1l732:	
	line	117
;Display.c: 116: }
;Display.c: 117: if(data&0x02)
	btfss	(DisplayData1@data),(1)&7
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l733
u6_20:
	line	119
	
i1l1912:	
;Display.c: 118: {
;Display.c: 119: TRISA2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	120
;Display.c: 120: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	121
;Display.c: 121: }else
	goto	i1l734
	
i1l733:	
	line	123
;Display.c: 122: {
;Display.c: 123: TRISA2=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7	;volatile
	line	124
	
i1l734:	
	line	125
;Display.c: 124: }
;Display.c: 125: if(data&0x04)
	btfss	(DisplayData1@data),(2)&7
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l735
u7_20:
	line	127
	
i1l1914:	
;Display.c: 126: {
;Display.c: 127: TRISB4=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	128
;Display.c: 128: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	129
;Display.c: 129: }else
	goto	i1l736
	
i1l735:	
	line	131
;Display.c: 130: {
;Display.c: 131: TRISB4=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	132
	
i1l736:	
	line	133
;Display.c: 132: }
;Display.c: 133: if(data&0x08)
	btfss	(DisplayData1@data),(3)&7
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l737
u8_20:
	line	135
	
i1l1916:	
;Display.c: 134: {
;Display.c: 135: TRISB5=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	136
;Display.c: 136: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	137
;Display.c: 137: }else
	goto	i1l739
	
i1l737:	
	line	139
;Display.c: 138: {
;Display.c: 139: TRISB5=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	142
	
i1l739:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayData1
	__end_of_DisplayData1:
	signat	_DisplayData1,4217
	global	_DisplayData

;; *************** function _DisplayData *****************
;; Defined at:
;;		line 63 in file "D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 200/0
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
;;		_DisplayComx
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	line	63
global __ptext9
__ptext9:	;psect for function _DisplayData
psect	text9
	file	"D:\CMS\CMS_IDE_V2.03.21\works  暖风机\Demo\Display.c"
	line	63
	global	__size_of_DisplayData
	__size_of_DisplayData	equ	__end_of_DisplayData-_DisplayData
	
_DisplayData:	
;incstack = 0
	opt	stack 3
; Regs used in _DisplayData: [wreg]
;DisplayData@data stored from wreg
	movwf	(DisplayData@data)
	line	66
	
i1l1898:	
;Display.c: 66: if(data&0x01)
	btfss	(DisplayData@data),(0)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l720
u1_20:
	line	68
	
i1l1900:	
;Display.c: 67: {
;Display.c: 68: TRISA1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	69
;Display.c: 69: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(41/8),(41)&7	;volatile
	line	70
;Display.c: 70: }
	goto	i1l721
	line	71
	
i1l720:	
	line	73
;Display.c: 71: else
;Display.c: 72: {
;Display.c: 73: TRISA1=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	75
	
i1l721:	
	line	76
;Display.c: 75: }
;Display.c: 76: if(data&0x02)
	btfss	(DisplayData@data),(1)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l722
u2_20:
	line	78
	
i1l1902:	
;Display.c: 77: {
;Display.c: 78: TRISA2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7	;volatile
	line	79
;Display.c: 79: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7	;volatile
	line	80
;Display.c: 80: }
	goto	i1l723
	line	81
	
i1l722:	
	line	83
;Display.c: 81: else
;Display.c: 82: {
;Display.c: 83: TRISA2=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7	;volatile
	line	85
	
i1l723:	
	line	86
;Display.c: 85: }
;Display.c: 86: if(data&0x04)
	btfss	(DisplayData@data),(2)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l724
u3_20:
	line	88
	
i1l1904:	
;Display.c: 87: {
;Display.c: 88: TRISB4=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	89
;Display.c: 89: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	90
;Display.c: 90: }else
	goto	i1l725
	
i1l724:	
	line	92
;Display.c: 91: {
;Display.c: 92: TRISB4=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1076/8)^080h,(1076)&7	;volatile
	line	94
	
i1l725:	
	line	95
;Display.c: 94: }
;Display.c: 95: if(data&0x08)
	btfss	(DisplayData@data),(3)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l726
u4_20:
	line	97
	
i1l1906:	
;Display.c: 96: {
;Display.c: 97: TRISB5=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	98
;Display.c: 98: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	line	99
;Display.c: 99: }else
	goto	i1l728
	
i1l726:	
	line	101
;Display.c: 100: {
;Display.c: 101: TRISB5=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1077/8)^080h,(1077)&7	;volatile
	line	104
	
i1l728:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayData
	__end_of_DisplayData:
	signat	_DisplayData,4217
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
