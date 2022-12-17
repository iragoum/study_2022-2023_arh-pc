%include	'in_out.asm'

SECTION .data
msg	db "Результат: ",0
msg1	db "Функция: f(x)=12x-7",0

SECTION	.bss
	res:	RESB 80
	
SECTION	.text
global	_start

_start:

	pop	ecx
	pop	edx
	sub	ecx,1
	mov	esi, 0
	
call	_calcul

	mov	eax, msg1
	call	sprintLF
	mov	eax, msg
	call	sprint
	mov	eax,[res]
	call	iprintLF
	call	quit

_calcul:
	
	next:
		cmp	ecx,0h
		jz	_end
		mov	ebx,12

		pop	eax
		call	atoi

		mul	ebx
		add	eax,-7
	

		add	esi,eax
		loop	next
	_end:
		mov 	[res],eax
		ret


