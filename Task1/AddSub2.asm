include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	array WORD 50 DUP(5)
.code
main PROC
	mov eax,SIZEOF array
	mov al, LENGTHOF array
	mov esi,0
	mov ax,array[esi]
	add esi,100
	mov ax,array[esi]


	mov edi,OFFSET array
	mov ecx,LENGTHOF array
	mov eax,0
L1:
	add ax,[edi]
	add edi,TYPE array
	loop L1
	mov ax,250/50
	call WriteInt
	

	INVOKE ExitProcess,0
main ENDP
END main