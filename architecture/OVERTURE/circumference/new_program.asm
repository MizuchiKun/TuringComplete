; Calculates circumference = 2*pi*in
; and then sends the result to out.
; Approximates pi as 3.

; Store input in r5.
mov r5, in

loop:

; Store 2*pi (~6) in r2.
imm 6
mov r2, r0
; r4 += 2*pi
mov r1, r4
add
mov r4, r3

; Store 1 in r2.
imm 1
mov r2, r0
; r5 -= 1
mov r1, r5
sub
mov r5, r3

imm loop
jg

; Return result.
mov out, r4
