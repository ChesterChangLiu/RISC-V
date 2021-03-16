s1: DC "Enter an integer:\0"
s2: DC "Enter an memory address:\0"

addi x30, x0, s1
addi x31, x0, s2

loop: ecall x0, x30, 4 
ecall x6, x0, 5 
ecall x0, x31, 4
ecall x7, x0, 5 
sd x6, 0(x7)
beq x0, x0, loop