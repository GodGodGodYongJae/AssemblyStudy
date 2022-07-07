%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    ; 반복문 (while for )
    ; 특정 조건을 만족할 때 까지 반복해서 실행
    
    ; ex ) Hello World 10번을 출력 해야 한다면?  
    ; comment : 안보고 Jump 와 cmp를 활용해서 반복분 만들어보기.
    
    ; mov al,10
    ; 카운터와 관련된 건 ecx에서 많이 사용 
    mov ecx, 10
    ;jmp L1 빼도됨
    
L1:
PRINT_STRING msg
NEWLINE
;sub ecx , 1
;서브를 해줘도 되는데 dec이 더 빨리동작
dec ecx
cmp ecx, 0
JNE L1
              
  ;연습문제 ) 1에서 100까지의 합을 구하는 프로그램 1+2+3+4 ... +100 = ?     
  ; al 과 bl 등으로 하면 문제가 발생함. 
  ;al (1바이트)를 결과 연산에 사용하시는데,
 ;signed int8은 (-127~128)의 범위라서 그 범위를 초과하면
 ;엉뚱한 결과가 나올 수 있습니다.         
    xor eax,eax
    mov ebx, 0
L2:
    inc eax
    add ebx, eax
    cmp eax, 100
    jne L2
    
    PRINT_DEC 4, ebx
    NEWLINE


;PRINT_DEC 1, rbx
;NEWLINE
;해답
; mov eax, 100
; xor ebx,ebx
 
;  LABEL_SUM:
;   ;inc ecx ; add ecx, 1과 동일
 ;  add ebx,eax ; ebx = ebx + ecx
  ; dec eax
   ;cmp eax, 0
   ;jne LABEL_SUM
   ;PRINT_DEC 4, ebx
   ;NEWLINE
   
    ; loop [라벨]
    ; - ecx에 반복 횟수
    ; - loop를 할때마다 ecx 1 감소. 0이면 빠져나감. 아니면, 라벨로 이동
    mov ecx,100
    xor ebx,ebx
LABEL_LOOP_SUM:
      add ebx,ecx
      loop LABEL_LOOP_SUM
      
    PRINT_DEC 4, ebx
    NEWLINE
    
    xor rax, rax
    ret

section .data
    msg db 'Hello World', 0x0
 
 
section .bss
    num resb 1
