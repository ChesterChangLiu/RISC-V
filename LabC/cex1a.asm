s0: DC "Factorial.\0"
s1: DC "Enter a small positive integer:\0"
s2: DC "Result:\0"
addi x5, x0, s0
ecall x0, x5, 4 ; out info
addi x5, x0, s1
ecall x1, x5, 4 ;prompt a
ecall x6, x0, 5 ;inp a
addi x7, x0, 1

loop: beq x6, x0, end
mul x7, x7, x6
addi x6, x6, -1
beq x0, x0, loop

end: addi x5, x0, s2
ecall x1, x5, 4
ecall x0, x7, 0
ebreak x0,x0,0