//Name: Samita Damani
//ID: 1980918
//This program implements a 'SWITCH' code snippet of C, using jumpTable

.text
.global _start 
_start:
	LDR r3, vb //read vb
	LDR r4, vc //read vc
	ADR r5, va //loading address of a
	
	LDR r6, vp //read vp
	ADR r7, jTable //address of the table
	LDR r1, [r7, r6, lsl #2] //accessing the elements of the table (cases) [r1] = jTable[p]
	MOV PC, r1 //loading r1 address to PC
	
case0:
	ADD r1, r3,r4 //a=b+c
	B after
case1:
	SUB r1, r3, r4//a=b-c
	B after
case3:
	MOV r1, r3 //a=b
	B after
case7: 
	MOV r1, r4//a=c
	B after
casedefault: 
	MOV r1, #0 //a=0
after:
	STR r1, [r5] //STR stores data from a register(r1) to a memory address(r5)
STOP: B STOP 
//jTable .word case0,case1,casedefault,case3,casedefault,casedefault,casedefault,case7
jTable: .word 0x1c, 0x24, 0x3c, 0x2c, 0x3c, 0x3c, 0x3c, 0x34

va: .word 0
vb: .word 0x12345678 // variable b 
vc: .word 0x11223344 // variable c 
vp: .word 3 // variable p
.end