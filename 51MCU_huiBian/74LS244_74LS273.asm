//74ls244��74ls273:74LS244��IN0~IN7�ӿ��ض�ȡ״̬��74LS273��00~07�ӷ����������ʾ

              ORG 0000H      
	 LOOP:MOV DPTR,#7FFFH
	      MOVX A,@DPTR
	      MOV DPTR,#0FFFFH
	      MOVX @DPTR,A
		  ACALL DELAY
	      SJMP LOOP
	DELAY:MOV R0,#200
	DEL1: MOV R1,#250
	DEL2: DJNZ R1,DEL2
	      DJNZ R0,DEL1
		  RET
		  END