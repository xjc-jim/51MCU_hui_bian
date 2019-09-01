//外部中断：INT0接单次脉冲发生器；P1.0接LED

          ORG 0000H
	  LJMP START
	  ORG 0003H
	  LJMP PINT0
	  ORG 0100H
    START:MOV SP,#60H
          MOV IE,#81H	
	  MOV IP,#01H
	  MOV TCON,#00H
	  SJMP $
    PINT0:PUSH ACC
          PUSH PSW	
	  CPL P1.0
	  POP PSW
	  POP ACC
	  RETI
	  END