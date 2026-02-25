include ../asm/maths

; Main function.
main:
imm 60
mov r1, r0
mov r2, r0
add ; 120
mov r1, r3
imm 7
mov r2, r0
add ; 127
mov r1, r3

imm 12
mov r2, r0

imm maths.div
jmp
; a = 0
; b = 255 (by adding multiple immediates together)
; x = (a+b) / 2
; output x
; if input == 1: b = x
; else: a = x + 1 
; jmp main
