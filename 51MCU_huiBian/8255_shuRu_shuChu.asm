//8255��8255�������˿ڶ������ڷ�ʽ0��A��Ϊ����ڣ�B��Ϊ�����

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