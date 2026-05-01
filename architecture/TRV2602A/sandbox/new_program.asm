; For testing RAM hardware stuff (don't quite remember of what).
U32 0xAABBCCDD
U32 0x11223344
U32 0x55555555
U32 0x55555555
U32 0x55555555
U32 0x55555555
U32 0x55555555
U32 0x55555555

; Instructions to test if CPU is working as intended.
jal t0, lel


lel: add x0,x0,x0
