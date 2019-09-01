//8255：8255的三个端口都工作于方式0，A口为输出口，B口为输入口

         ORG 0000H
   START:MOV DPTR,#7FFFH
         MOV A,#82H
    LOOP:MOVX @DPTR,A
	 MOV DPTR,#7FFEH
	 MOVX A,@DPTR
	 MOV DPTR,#7FFCH
	 MOVX @DPTR,A
	 SJMP LOOP
	 END