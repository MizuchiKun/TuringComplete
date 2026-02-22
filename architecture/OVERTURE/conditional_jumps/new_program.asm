; Reads the input until it is 37.
; Then outputs the number of times the input was read.

imm 37
mov r4, r0		; Store 37 in r4

loop:

; Increment counter.
mov r1, r5
imm 1
mov r2, r0
add
mov r5, r3

; Check if input is 37.
mov r1, in
mov r2, r4
sub				; Sub 37 from input for jump.

; Keep looping if input != 37.
imm loop
jnz

; Output count.
mov out, r5
