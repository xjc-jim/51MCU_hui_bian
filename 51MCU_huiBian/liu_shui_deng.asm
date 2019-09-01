//流水灯：本实验使用51单片机的P1口作为输入输出

         ORG 0000H
   START:MOV SP,#70H
	 MOV A,#0FEH
   LOOP: MOV P1,A
         ACALL DELAY
	 RL A
	 SJMP LOOP
   DELAY:MOV R5,#200
   DEL2: MOV R6,#250
   DEL1: DJNZ R6,DEL1
         DJNZ R5,DEL2
	 RET
	 END