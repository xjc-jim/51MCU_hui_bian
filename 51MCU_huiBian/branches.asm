//多分支结构：
                ORG 0000H	
		MOV DPTR,#TAB
		MOV A,#0
		RL A
		JMP @A+DPTR
		MOV A,#1
		RL A
		JMP @A+DPTR
        TAB:    AJMP LOOP1
                AJMP LOOP2

        LOOP1:  MOV R0,#30H
                MOV @R0,#0FFH
        LOOP2:  SETB 20H.3
                SJMP $
                END