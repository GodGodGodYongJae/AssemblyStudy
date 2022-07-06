%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 어떤 숫자로 데이터를 받아오겠다.
    GET_DEC 1, al
    GET_DEC 1, num
    
      ;PRINT_DEC 1, al
      ;NEWLINE
      ;PRINT_DEC 1, num  
      
      ;더하기 연산
      ;add a,b ( a= a + b )
      ; a는 register or meomry
      ; b는 register or 메모리 or 상수
      ; -단! a,b 모두 메모리 X
      
      ;빼기 연산
      ;sub a,b ( a= a - b )
      
      add al, 1 ;레지스터 + 상수
      PRINT_DEC 1, al
      NEWLINE
      
    ; mov rax, num
      
      add al, [num] ; 레지스터 + 메모리
      PRINT_DEC 1, al
      NEWLINE
     
      mov bl, 3
      add al,bl ; 레지스터 + 레지스터      PRINT_DEC 1, al
      PRINT_DEC 1, al
      NEWLINE
     
      add [num], byte 1 ; 메모리 + 상수
      PRINT_DEC 1, [num]
      NEWLINE
      
       add [num], al ; 메모리 + 레지스터
      PRINT_DEC 1, [num]
      NEWLINE
        
        
    ; 곱하기 연산
    ; mul reg
    ; - mul bl => al * bl 
    ; -- 연산결과를 ax에 저장
    ; - mul bx => ax * bx
    ; -- 연산 결과를 dx(상위16비트) ax(하위16비트)에 저장
    
     ; ex ) 5 * 8은 ?
     mov ax, 0
     mov al, 5
     mov bl , 8
     mul bl
     PRINT_DEC 1,ax
     NEWLINE 
         
    ; 나누기 연산
    ; div reg
    ; - div bl => ax / bl
    ; -- 연산 결과는 al(몫) ah(나머지)
    
    ;ex) 100/3은?
    mov ax, 100
    mov bl, 3
    div bl
    PRINT_DEC 1,al
    NEWLINE
    mov al, ah
    PRINT_DEC 1,al     
         
    xor rax, rax
    ret

;section .data

 
section .bss
    num resb 1
