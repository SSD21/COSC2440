// Name: Samita Damani
//ID: 1980918
//Program description: Hanoi recursion problem
.text
hanoi:
// your code below
	PUSH {LR}
	SUB r0,r0,#1
	CMP r0, #1
	BEQ return
	//SUB r0, r0,#1
	BL hanoi
return:
	//SUB r0, r0, #1
	POP {LR}
	LSL r0, #1
    ADD r0, r0, #1
	BX LR
	//MOV pc, lr
// end of your code
// ------------------- user main program ------------------------------
.global _start 
_start:
	LDR sp, =stack_loc 
	MOV r0, #4
	BL hanoi
STOP: B STOP
.data
	.EQU stack_loc, 0x20001000 // Initial Main Stack Pointer Value
.end


	