; OR both values
; NAND both values
; then AND those results?

; A    | 0 0 1 1
; B    | 0 1 0 1
; -----+--------
; OR   | 0 1 1 1
; NAND | 1 1 1 0
; -----+--------
; AND  | 0 1 1 0 
; same as XOR of initial inputs.

; OR values
mov r1, in
mov r2, in
or
mov r4, r3

; NAND values
nand
mov r2, r3

; AND those results
mov r1, r4
and

; Output XOR result
mov out, r3





