include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	intArray WORD 50 DUP(5)
.code
main PROC
		mov eax,SIZEOF intArray

	mov al, LENGTHOF intArray
	mov esi,0
	mov ax,intArray[esi]
	add esi,99
	mov ax,intArray[esi]


	mov edi,OFFSET intArray
	mov ecx,LENGTHOF intArray
	mov eax,0
L1:
	add eax,[edi]
	add edi,TYPE intArray
	loop L1
	call WriteInt
	

	INVOKE ExitProcess,0
main ENDP
END main