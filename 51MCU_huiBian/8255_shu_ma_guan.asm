  //通过8255的PA口输出段码，PB口输出位码，驱动数码管显示01234   
    
         ORG 0000H
         MOV P1,#0H
         MOV SP,#70H
         MOV DPTR,#7FFFH
         MOV A,#80H
         MOVX @DPTR,A
         MOV R0,#50H
         MOV R2,#01H
         MOV 50H,#0
         MOV 51H,#1
         MOV 52H,#2
         MOV 53H,#3
         MOV 54H,#4
         MOV 55H,#5
NEXT:    MOV DPTR,#LEDSEG
         MOV A,@R0
	 MOVC A,@A+DPTR
	 MOV DPTR,#7FFCH
	 MOVX @DPTR,A
	 INC DPTR
	 MOV A,R2
	 MOVX @DPTR,A
	 ACALL DELAY
	 INC R0
	 RL A
	 MOVX @DPTR,A
	 MOV R2,A
	 JB ACC.6,DONE
	 AJMP NEXT
DONE:    RET
LEDSEG:  DB 3FH,06H,5BH,4FH
         DB 66H,6DH,7DH
         DB 07H,7FH,6FH
DELAY:   MOV R6,#4
LD1:     MOV R7,#250
         DJNZ R7,$
	 DJNZ R6,LD1
	 RET
	 END    