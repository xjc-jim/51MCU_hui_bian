//二进制转BCD码：
        
         ORG 0000H
	 MOV B,#100
	 MOV A,#11111111B
	 DIV AB
	 MOV 30H,A
	 MOV A,B
	 MOV B,#10 
	 DIV AB
	 MOV 31H,A
	 MOV 32H,B
	 END