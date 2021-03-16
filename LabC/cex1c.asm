s0: DC "Find all divisors.\0"
s1: DC "Enter i:\0"
s2: DC "Divisors:\0"
addi x5, x0, s0
ecall x0, x5, 4 ; out info
addi x5, x0, s1
ecall x1, x5, 4 ;prompt a
ecall x6, x0, 5 ;inp a
addi x7, x0, 1
addi x5, x0, s2
ecall x0, x5, 4

loop: rem x8, x6, x7
beq x6, x7, end
beq x8, x0, output
addi x7, x7, 1
beq x0, x0, loop

output: 
ecall x0, x7, 0
addi x7, x7, 1
beq x6, x7, end
beq x0, x0, loop

end: 
ecall x0, x6, 0
ebreak x0,x0,0