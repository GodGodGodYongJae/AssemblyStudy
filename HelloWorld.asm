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
    
    
    ;메모리 <-> 레지스터
  ;  mov rax, a ; a라는 바구니의 주소값을 rax에 복사
    ;mov rax, [a] ; 바구니 표시를 해줘야 값을 넣어준다 [] a라는 바구니안에 있는 값을 rax에다 복사.
    mov al,[a]; ; 딱 a만 1byte만 값을 넣어주고싶을
    
    ;레지스터 > 메모리
    ; 0x55 만 넣으면 0x000055일수도 있어서 1byte만을 넣고 싶다고 표현해줘야 함 
    mov [a], byte 0x55
    mov [a], word 0x6666
    mov [a], cl
    
    xor rax, rax
    ret

    ; 변수의 선언 및 사용
    
    
    
section .data
;초기화 된 데이터
;변수이름 크기 초기값
;크기 -> db (define byte 1byte) dw(2byte)  dd(4) dq(8)
 a db 0x11 
 b dw 0x2222
 c dd 0x33333333
 d dq 0x4444444444444444
 
section .bss
;초기화 되지 않은 데이터
; [변수이름] [크기] [개수]
; 크기 resb(1) resw(2) resd(4) resq(8)
e resb 10
