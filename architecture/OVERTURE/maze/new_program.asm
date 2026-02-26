const is_wall = in
const command = r0
const turn_left = 0
const move_forward = 1
const turn_right = 2

maze_loop:
; Move forward.
imm move_forward
mov out, command

imm turn_left
mov out, command
mov out, command
; Keep turning right and checking if free (start left), 
; until you've found a free direction.
; (In the worst case, backwards should be free.)
check_loop:
	imm turn_right
	mov out, command
	mov r3, is_wall
imm check_loop
jnz
check_endloop:

; Loop, unconditionally.
; (How do I know when I'm at the end??)
; (I think simply facing the door makes you finish?)
imm maze_loop
jmp
maze_endloop:
