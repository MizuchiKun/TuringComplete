; Skip to end, should this get executed.
imm maths_end
jmp

pub div:
; Calculates a // b and then halts.
; Args: a in r1, b in r2.
const a = r4
const b = r5
const r = r6
mov a, r1 ; Store a.
mov b, r2 ; Store b.
imm 0
mov r, r0 ; r = 0
sub ; a - b
imm div_endloop
jl ; Skip loop if a < b.
div_loop:
	; a -= b:
	; (a - b was computed before current iteration)
	mov a, r3

	; r += 1:
	mov r1, r
	imm 1
	mov r2, r0
	add
	mov r, r3

	; while a >= b
	mov r1, a
	mov r2, b
	sub
imm div_loop
jge
div_endloop:

; (Floor) Division done.
imm halt  ; For testing purposes only. Just for fun anyway.
halt: jmp



maths_end: nop
