%include "io64.inc"

section .text
global CMAIN
CMAIN:
     mov rbp, rsp; for correct debugging

    PRINT_STRING msg
    
    xor rax, rax
    ret

section .data

; Hello World , 0x0 (0x0 문자가 끝났다)
 msg db 0x48,0x65,0x6c,0x6c,0x6f,0x20,0x57,0x6f,0x72,0x6c,0x64,0x0
 
 a db 0x11,0x11,0x11,0x11 
;{0x78,0x56,0x34,0x12 - 리틀 엔디안
; 왜 뒤집어서 정렬을 하나? 
; 장단점이 교차한다. -리틀 엔디언:캐스팅에 유리하다.
;0x12345678 중 78만 남기고 다 날리고싶다고 한다면... 
;첫번째 주소에서만 추출하면 된다.
; 빅엔디언 : 숫자비교에 유리하다.
; ex 0x123456 과 0x45123411 이 있다면 첫번째 byte 자리수로만 따져서 비교가 가능함 
 b dd 0x12345678
 
section .bss
;초기화 되지 않은 데이터
; [변수이름] [크기] [개수]
; 크기 resb(1) resw(2) resd(4) resq(8)
e resb 10
