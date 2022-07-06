%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging

    ; 8 bit = 1byte
    ; 16 bit = 2byte = 1word
    ; 32 bit = 4byte = 2word = 1 dword (double-word)
    ; 64 bit = 8byte = 4 word = 1 qword (quad - word)
    
    ;mov [reg1], cst(number)
    ;mov [reg1],[reg2]
    ;reg1 = cst
    ;reg1 = reg2
    
    ; al 의 경우 8bit만 쓰기 때문에 1234 중 1200 이 됨
    
    mov eax, 0x1234
    mov rbx, 0x12345678
    mov cl, 0xff
    
    mov al, 0x00
    mov rax, rdx
    
    
    xor rax, rax
    ret
