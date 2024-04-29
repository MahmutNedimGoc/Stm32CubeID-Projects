.text
.align 2
.global main

main:

.equ Loc1, 0x20004000
.equ Loc2, 0x30000200

memPrep:     LDR     R0, =Loc1
             LDR     R1, =0xf0f1f2f3
             STR     R1 , [R0]
             ADD     R0,R0, #4
             LDR     R1, =0xf4f5f6f7
             STR     R1, [R0]
             ADD     R0,R0, #4
             LDR     R1, =0xf8f9fafb
             STR     R1, [R0]
             ADD     R0,R0, #4
             LDR     R1, =0xfcfdfeff
             STR     R1, [R0]
			 LDR     R7, =0x0

begin:       LDR     R0, =Loc1
             MOV     R1, #0x0
             LDR     R3, =0x00000001
             LDR     R2, [R0]


             LDR     R2, [R0]

loop1:      LDR R3, =0x1
 			AND     R3, R3, R2
 			CMP     R3, #1
 			BEQ     add_odd1
 			B       shift_check1

add_odd1:    LDR     R6, =0xFF
			 AND     R6, R6, R2
             ADD     R7, R7, R6
             B       shift_check1

shift_check1:LSR     R2, R2, #8
             CMP     R2, #0
             BNE     loop1

begin2:      ADD     R0, R0, #4

             LDR     R2, [R0]


             LDR     R2, [R0]

loop2:      LDR R3, =0x1
 			AND     R3, R3, R2
 			CMP     R3, #1
 			BEQ     add_odd2
 			B       shift_check2

add_odd2:    LDR     R6, =0xFF
			 AND     R6, R6, R2
             ADD     R7, R7, R6
             B       shift_check2

shift_check2:LSR     R2, R2, #8
             CMP     R2, #0
             BNE     loop2

begin3:      ADD     R0, R0, #4

             LDR     R2, [R0]


             LDR     R2, [R0]

loop3:      LDR R3, =0x1
 			AND     R3, R3, R2
 			CMP     R3, #1
 			BEQ     add_odd3
 			B       shift_check3

add_odd3:    LDR     R6, =0xFF
			 AND     R6, R6, R2
             ADD     R7, R7, R6
             B       shift_check3

shift_check3:LSR     R2, R2, #8
             CMP     R2, #0
             BNE     loop3

begin4:       ADD     R0, R0, #4

             LDR     R2, [R0]


             LDR     R2, [R0]

loop4:      LDR R3, =0x1
 			AND     R3, R3, R2
 			CMP     R3, #1
 			BEQ     add_odd4
 			B       shift_check4

add_odd4:    LDR     R6, =0xFF
			 AND     R6, R6, R2
             ADD     R7, R7, R6
             B       shift_check4

shift_check4:LSR     R2, R2, #8
             CMP     R2, #0
             BNE     loop4

             LSR     R7,R7,#3

write2Loc2:   LDR     R0, =Loc2
              STR     R7, [R0]
END: b END
.end
