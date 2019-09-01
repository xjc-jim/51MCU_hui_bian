//·½Ê½¶þ£¨BCD£©£º
   
         ORG 0000H
	 MOV B,#100
	 MOV A,#0FFH
	 DIV AB
	 ADD A,#30H
	 MOV 30H,A
	 MOV A,B
	 MOV B,#10 
	 DIV AB
	 ADD A,#30H
	 MOV 31H,A
	 MOV A,B
	 ADD A,#30H
	 MOV 32H,A
	 SJMP $ 
	 END