//方式三（BCD查表法）： 

         ORG 0000H
	 MOV B,#100
	 MOV A,#0FFH
	 MOV DPTR,#TAB
	 DIV AB
	 MOVC A,@A+DPTR
	 MOV 30H,A
	 MOV A,B
	 MOV B,#10 
	 DIV AB
	 MOVC A,@A+DPTR
	 MOV 31H,A
	 MOV A,B
	 MOVC A,@A+DPTR
	 MOV 32H,A 
TAB:     DB 30H,31H,32H,33H,34H
         DB 35H,36H,37H,38H,39H	  
	 SJMP $
	 END