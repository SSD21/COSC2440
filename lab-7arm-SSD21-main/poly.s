.global _start 
_start:
// compute a*x2 + b*y2 + c*x*y + d
	adr r1, X //array's base address 
	adr r2, Y
	ldr r3, x //index
	ldr r4, y
	ldr r5, [r1, r3, LSL #2] //x
	ldr r6, [r2, r4, LSL #2] //y
	
	ldr r7, a
	ldr r8, b
	ldr r9, c
	ldr r10, d
	
	mul r0, r5, r5 //x^2
	mul r0, r5, r7 // a*x^2
	
	
	
	mul r11, r6, r6 //y^2
	mul r11, r11, r8 //b*y^2
	add r0, r0, r11 
	
	mul r12, r5, r6 //x*y
	mul r12, r12, r9 //c*x*y
	add r0, r0, r12
	
	add r0, r0, r10
	
	
	
	
        
		
STOP: B STOP
x: .word 4
y: .word 6
X: .word 1, 2, 3, 4, 5, 6, 7, 8
Y: .word 10, 11, 20, 7, 31, 19, 25, 63
a: .word 8
b: .word 11
c: .word 9
d: .word 20
.end




