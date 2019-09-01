//十六进制转ASCII码：

//方式一（direct）： 

          ORG 0000H
	  MOV A,#069H
	  MOV B,#16
	  DIV AB
	  MOV R1,A
	  MOV R0,B
	  MOV B,#10
	  DIV AB
	  CJNE A,#0,LOOP1
	  MOV A,R1
	  ADD A,#30H
	  MOV 30H,A
	  LJMP NEXT1
    LOOP1:CLR C
          MOV A,R1
	  SUBB A,#10
	  ADD A,#1
	  ADD A,#40H
	  MOV 30H,A
    NEXT1:MOV A,R0
          MOV B,#16
	  DIV AB
	  CJNE A,#0,LOOP2
	  MOV A,R0
	  ADD A,#30H
	  MOV 31H,A
	  SJMP $
    LOOP2:CLR C
          MOV A,R0
	  SUBB A,#10
	  ADD A,#1
	  ADD A,#40H
	  MOV 31H,A
	  SJMP $
          END