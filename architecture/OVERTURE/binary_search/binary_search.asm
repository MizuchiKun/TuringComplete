main:
const bottom = r4
const top = r5
const mid = r6
; Set bottom to 0.
imm 0
mov bottom, r0
; Set top to 255.
imm 60
mov r1, r0
mov r2, r0
add ; 120
mov r1, r3
mov r2, r3
add ; 240
mov r1, r3
imm 15
mov r2, r0
add ; 255
mov top, r3

search_loop:
	; mid = bottom + (top - bottom) / 2
	mov r1, top
	mov r2, bottom
	sub ; top - bottom
	mov r1, r3
	lsr ; (top - bottom) / 2
	mov r1, r3
	add ; bottom + (top - bottom) / 2
	mov mid, r3

	; Output mid.
	mov out, mid

	; Read input.
	mov r3, in

	; Adjust boundaries.
	imm too_low
	jz ; input == 1 => too high, else => too low
	too_high:
		; top = mid
		mov top, mid
	imm endif
	jmp
	too_low:
		; bottom = mid + 1
		mov r1, mid
		imm 1
		mov r2, r0
		add
		mov bottom, r3
	endif:
	
imm search_loop
jmp
search_endloop:
