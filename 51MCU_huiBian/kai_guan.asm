//ƽ�ƿ��أ�ƽ�ƿ��ص����K1��P1.0��K2��P1.1����������ܵ�����L1��P1.2��L2��P1.3��L5��P1.4��L6��P1.5

          ORG 0000H
    START:MOV P1,#0FFH
          MOV A,P1
	  ANL A,#0FFH
	  XRL A,#0FFH
	  JZ START     
          CJNE A,#01H,LOOP1
          MOV P1,#0CFH 
    LOOP1:CJNE A,#02H,LOOP2
          MOV P1,#0F3H 
    LOOP2:CJNE A,#03H,START
          MOV P1,#0C3H     
	  END