%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 분기문 (if)
    ; 특정 조건에 따라서 코드 흐름을 제어하는 것
    ; ex) Button을 눌렀는가? YES -> 동작
    ; ex ) 제한 시간 내에 던전 입장 수락 버튼을 눌렀는가? YES -> 입장,  NO -> 던전 취소
    
    ;조건 -> 흐름 
    ; CMP dst, src (dst가 기준)
    ; 비교를 한 결과물은 Flag Register 저장 
    
    ; JMP(JUMP) [label] 시리즈 
    ; JMP  : 무조건 Jump
    ; JE : JumpEquals 같으면 jump
    ; JNE : JUmpNotEquals 다르면 jump
    ; JG : JumpGreater jump 
    ; JGE : JumpGreaterEquals 크거나 같으면 jump
    ; JL .. JLE ... 
    
    ; 두 숫자가 같으면 1, 아니면 0을 출력하는 프로그램 
    mov rax, 20
    mov rbx, 10
    
    cmp rax, rbx
    
    je LABEL_EQUAL
    
    ; je를 못했으면, 같지 않다는 의미.
    ; mov rcx, 0
    xor rcx, rcx
    jmp LABEL_EQUAL_END
    
LABEL_EQUAL:
    mov rcx, 1
    
LABEL_EQUAL_END:

     PRINT_HEX 1, rcx
     NEWLINE 
     
     ;연습 문제 : 어떤 숫자 (1~100)가 짝수면1, 홀수면 0 출력하는 프로그램 
     mov ax, 100
     mov bl, 2 
     div bl
    
    cmp ah,0
    
    JNE LABEL2_EQUAL
    
    mov rcx,1
    jmp LABEL2_NOT_EQUAL
     ; 나누기 연산 
     ; div reg
     ; - div bl => ax / bl (al몫 ah 나머지)
LABEL2_EQUAL:
    XOR rcx,rcx
LABEL2_NOT_EQUAL:
    PRINT_HEX 1, rcx         
                   
                     
    xor rax, rax
    ret

;section .data

 
section .bss
    num resb 1
