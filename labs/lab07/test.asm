%include	'in_out.asm'

SECTION	.data
msg1:	DB 'Solve the equation (8*x+ 6)*10 for x',0
msg:	DB 'Please enter the value of x : ',0
rem:	DB 'The result is : ',0
SECTION	.bss
x:	RESB 80

SECTION	.text
GLOBAL	_start
_start:

mov	eax, msg1
call	sprintLF

mov	eax, msg
call	sprintLF

mov	ecx, x
mov	edx, 80
call 	sread

mov	eax,x
call 	atoi
mov	edi,eax

mov	eax,8
mul	edi
add	eax,6
mov	edx,10
mul	edx
mov	edi,eax

mov	eax,rem
call 	sprint
mov	eax,edi
call 	iprintLF


call 	quit
