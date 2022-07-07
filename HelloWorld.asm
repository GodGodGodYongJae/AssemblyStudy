%include "io64.inc"

section .text
global CMAIN
CMAIN:
   mov rbp, rsp; for correct debugging
    
   ; 배열과 주소
   
   ; 배열 : 동일한 타입의 데이터 묶음
   ; - 배열을 구성하는 각 값을 배열 요소 (element)
   ; - 배열의 위치를 가르키는 숫자 인덱스 (index)
   mov rax ,a 
   
   PRINT_HEX 1, [a]
   NEWLINE
    
    ; 다음 데이터로 그럼 어떻게 넘어가는가? 위에 껀 a 에 있는 0x01이라면 0x02를 꺼내기 위해선?
    ; 내가 생각한 것
    ;inc rax
    ;PRINT_HEX 1,[rax]
    ; 풀이
    PRINT_HEX 1, [a+1]
    NEWLINE
    PRINT_HEX 1, [a+2]
    NEWLINE
    
    ; 연습문제 : a 배열의 모든 데이터 출력
    ; loop 형태로 구현. loop는 위로 한 줄만 입력이 가능..
    xor ecx, ecx
   
    L1:
    PRINT_HEX 1, [a+ecx]
    NEWLINE
    inc ecx
    cmp ecx,5
    jne L1
    
    
    
    ; 연습문제 :b 배열의 모든 데이터 출력
    xor ecx,ecx

    L2:
    PRINT_HEX 2, [b+ecx*2]
    NEWLINE
    inc ecx
    cmp ecx,5
    jne L2
    
;     PRINT_HEX 2, [b]
 ;    PRINT_HEX 2, [b+2]
  ;   PRINT_HEX 2, [b+4]
   ;  PRINT_HEX 2, [b+6]
    ; PRINT_HEX 2, [b+8]
     
     ; 주소
     ;[시작주소 + 인덱스 + 크기]
    
    xor rax, rax
    ret

section .data
    msg db 'Hello World', 0x0
   a db 0x01,0x02,0x03,0x04,0x05 ; 5 * 1 = 5 byte
;0x1 ;0x0
;인디언 - 0x0001 로 볼수 있다.
   b times 5 dw 1 ; 5 * 2 = 10 byte
   
section .bss
    num resb 1
    
