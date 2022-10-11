include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

string1 EQU <"HELLO WORLD",0dh,0ah>
string2 EQU <"ABC GHI XYZ",0dh,0ah>

.data
array1 BYTE string1
array2 BYTE string2
print DWORD OFFSET array1

.code
main proc

mov ecx,LENGTHOF array1
mov esi,0

L1:
	mov dl,array1[esi]
	mov dh,array2[esi]
	mov array1[esi],dh
	mov array2[esi],dl

	add esi,TYPE array1
	loop L1
mov edx,print
Call WriteString


mov ecx,LENGTHOF array1
mov esi,OFFSET array1



L2:
	mov dl,[esi]
	Call WriteString
	add esi,TYPE array1
	loop L2



	invoke ExitProcess,0
main endp
end main