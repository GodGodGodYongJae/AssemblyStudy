%include "io64.inc"

section .text
global CMAIN
CMAIN:
   mov rbp, rsp; for correct debugging
    
    ;함수 (프로시저 procedure 서브루틴 subroutine)
    
  ;call PRINT_MSG
   mov eax,10
   mov ebx,5
   call MAX
   PRINT_DEC 4, ecx
    
    xor rax, rax
    ret
PRINT_MSG:
PRINT_STRING msg
NEWLINE
ret
MAX:
   cmp eax,ebx
   jg L1
    mov ecx,ebx
    jmp L2
    L1:
    mov ecx,eax
    L2:
    ret
;ex ) 두 값 중 더 큰 값을 반환하는 max
; 근데 2 값을 어떻게 넘겨받지? 반환 어떻게?
; eax와 ebx 입력값을 ecx에 반환.
section .data
 msg db 'Hello World', 0x0
section .bss
    num resb 1
    
