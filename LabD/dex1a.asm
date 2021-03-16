Stack: EQU 0x100000     ;set stack in memory
lui sp, Stack>>12

addi x6, x0, 2
addi x10, x0, 1
ecall x5, x0, 5

loop:	beq x5, x0, zero
	rem x7, x5, x6

	beq x7, x0, loop1
	beq x0, x0, loop2
    

loop1:	sd x13, 0(sp)
	addi sp, sp, -8
	div x5 ,x5, x6
ld x13, 0(sp)
        ecall x13, x0, 0
	beq x0, x0, loop

loop2:	sd x10, 0(sp)
	addi sp, sp, -8
	addi x5, x5, -1
	div x5 ,x5, x6

        ecall x1, x10, 0
	beq x0, x0, loop

beq x0, x0, end


zero:	sd x5, 0(sp)
        ecall x1, x5, 0
	ebreak x0, x0, 0

end: ebreak x0, x0, 0