//排序：给出一组数，将此组数据排序，使之成为有序数列
         
           ORG 0000H
	   MOV R0,#30H
	   MOV R3,#06H
	   MOV DPTR,#TAB
	   CLR A
	   MOV R1,A
    STEP1: MOVC A,@A+DPTR
           MOV @R0,A	
	   INC R1
	   INC R0
	   MOV A,R1
	   DJNZ R3,STEP1
	   MOV R1,#05H
	   MOV R3,#05H
	   MOV R0,#30H 
    STEP2: MOV A,R1	
	   JZ STEP4	
           DEC R1
	   MOV A,@R0
	   INC R0
	   MOV B,@R0
	   DIV AB
	   JNZ STEP3
	   SJMP STEP2
    STEP3: DEC R0
           MOV A,@R0
	   INC R0
	   XCH A,@R0
	   DEC R0
	   MOV @R0,A
	   INC R0
	   SJMP STEP2
    TAB:   DB 10H,26H,5H  
           DB 3CH,0C6H,9H
    STEP4: DEC R3
           MOV A,R3
	   MOV R1,A
	   MOV R0,#30H
	   CJNE R3,#0,STEP2 
           SJMP $
           END