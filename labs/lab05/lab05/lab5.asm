SECTION .data
	nfname:	DB 'Mougari Abderrahim',10 
	
	nfnameLen: EQU $-nfname

SECTION .text
	GLOBAL _start
	
_start:
mov eax,4
mov ebx,1
mov ecx,nfname
mov edx,nfnameLen
int 80h

mov eax,1
mov ebx,0
int 80h
