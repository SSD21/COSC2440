.text
.global _start
_start:
	//h = A[B[i]+j]
	
	mov r2, #3 //value of i
	mov r3, #2 //value of j
	ldr r4, =A //defining A's base address
	ldr r5, =B //defining B's base address
	
	ldr r6, [r5, r2, lsl #2] //B[i] is written in r6
	add r6, r6, r3 //B[i]+j
	ldr r0, [r4, r6, lsl #2]
	
stop : b stop
.data
A: .word 1,2,3,4,5,6,7,8,9,10,11,12,13,14
B: .word 1,2,3,2,4,5,1,5,4,2,1