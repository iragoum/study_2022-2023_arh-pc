%include	'in_out.asm'

SECTION	.data
filename db 'name.txt', 0h
msg db 'Как Вас зовут?: ', 0h
msg1 db 'Меня зовут ', 0h

SECTION .bss
phrase resb 255

SECTION	.text
	global	_start
_start:

mov	eax,msg
call	sprint

mov	ecx, phrase
mov	edx, 255
call 	sread

mov	ecx, 0777o
mov	ebx, filename
mov	eax, 8
int	80h

mov	ecx, 2
mov	ebx, filename
mov	eax, 5
int	80h

mov	edx, 50
mov	ecx, msg1
mov	ebx, eax
mov	eax, 4
int	80h

mov	esi, eax

mov	ecx, 1
mov	ebx, filename
mov	eax, 5
int	80h

mov	eax, phrase
call 	slen

mov	edx, 50
mov	ecx, phrase
mov	eax, 4
int	80h

mov	ebx, esi
mov	eax, 6
int	80h

call 	quit
