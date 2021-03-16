src1: DD 1, 5, -7, 23, -5
src2: DD 3, -2, 4, 11, -7

addi x18, x0, 40
add x5, x0, x0
add x6, x0, x0
add x7, x0, x0

loop: 	ld x6, src1(x5) 
	ld x7, src2(x5)
	add x8, x6, x7
	sd x8, dst(x5)
	addi x5, x5, 8
	beq x5, x18, end
	bne x5, x18, loop

end: ebreak x0, x0, 0
dst: DM 1
