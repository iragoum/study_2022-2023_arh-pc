%include	'in_out.asm'

SECTION	.data
msg1:	DB 'Please enter the value of a : ',0
msg2:	DB 'PLease enter the value of x',0
msg3:	DB 'The result is : ',0
A dd '7'
SECTION	.bss
a:	RESB 10
x:	RESB 10

SECTION	.text
GLOBAL	_start
_start:

mov	eax, msg1
call	sprintLF

mov	ecx,a
mov	edx,10
call 	sread
mov	eax,a
call 	atoi
mov	edi,eax

mov	eax,A
call 	atoi
mov	[A],eax

cmp	edi,[A]
jnl	check_C

mov	eax,a
call 	atoi
mov	esi,eax
mov	eax, msg2
call	sprintLF
mov	ecx,x
mov	edx,10
call 	sread
mov	eax,x
call 	atoi
mov	ecx,eax
mov	eax,esi
mul	ecx
mov	edi,eax
jmp	fin		

check_C:
mov	eax,a
call 	atoi
mov	edi,eax
add	edi,-7

fin:
mov	eax,msg3
call 	sprint
mov	eax,edi
call 	iprintLF


call 	quit
