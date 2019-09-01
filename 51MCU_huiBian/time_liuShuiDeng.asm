//定时器循环彩灯：P1口接发光二极管L1~L8；
//L1~L8依次点亮；L1~L8依次熄灭；L1~L8全亮、全灭；

          ORG 0000H
	  LJMP START
	  ORG 000BH
	  LJMP INT_0
	  ORG 0100H
START:    MOV SP,#60H
          MOV TMOD,#01H
	  MOV TH0,#3CH
	  MOV TL0,#0B0H
	  MOV IE,#82H
	  MOV R2,#5
	  MOV R4,#10
	  MOV A,#11111110B
	  SETB TR0
	  SJMP $
INT_0:    INC R3
          CJNE R3,#45,STEP1
	  MOV P1,#0FFH
	  DJNZ R4,STEP2
	  MOV R4,#10
	  MOV R2,#5
	  MOV R3,#0
	  RETI
STEP2:    MOV R3,#44
          RETI
STEP1:    MOV TH0,#3CH
	  MOV TL0,#0B0H
          DJNZ R2,STEP3
	  MOV P1,A
	  MOV R2,#5
	  RL A
	  RETI
STEP3:    RETI
          END