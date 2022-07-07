%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 쉬프트(shift)연산, 논리(logical) 연산
    ; 음수가 아닌 이상 곱하기 1 옮길때마다 x2 해주는 값이 나옴 
    mov eax, 0x12345678
    PRINT_HEX 4, eax
    NEWLINE
    shl eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    shr eax, 8
   PRINT_HEX 4, eax
    NEWLINE
      ; 곱셈/ 나눗셈 빠르게 
      ; 게임서버에서 ObjectID를 만들어줄 때   
      
      ; 논리연산 not and or xor
      
      ; 조건 A : 잘생겼다
      ; 조건 B : 키가 크다
      
      ; not A : 잘생겼다의 반대 -> (0이면 1, 1이면 0)
      ; A and B : 조건 A 와 조건B => 둘다1이면 1, 아니면 0
      ; A xor B : 둘다 1이거나 둘다 0이면 0, 서로 다르면  1
      mov al, 0b10010101
      mov bl, 0b01111100
      
      ;0001 0100 0x14
      and al,bl ; al = al and bl
      PRINT_HEX 1, al
      NEWLINE
      
      ;14     12 eb
      ;0b1110 1011 = 0xeb
      not al
      PRINT_HEX 1, al
      NEWLINE
      
      
    xor rax, rax
    ret

;section .data

 
section .bss
    num resb 1
