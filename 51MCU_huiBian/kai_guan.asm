//平推开关：平推开关的输出K1接P1.0；K2接P1.1；发光二极管的输入L1接P1.2；L2接P1.3；L5接P1.4；L6接P1.5

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