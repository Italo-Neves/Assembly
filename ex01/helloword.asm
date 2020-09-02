;-------------------------------
; Programa hello word   
;------------------------------

section .data: ;campo das variaves
    msg db 'hello, word!', 0xa
    len equ $ - msg 

section .text:


global _start

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80 ;endereço do kernel

    ;saída 

    mov eax, 1
    mov ebx, 0
    int 0x80

