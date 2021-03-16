s0: DC "Sums all positive integers smaller than n in a loop.\0"
s1: DC "Enter a positive integer:\0"
s2: DC "Result:\0"
addi x5, x0, s0
ecall x0, x5, 4 ; out info
addi x5, x0, s1
ecall x1, x5, 4 ;prompt a
ecall x6, x0, 5 ;inp a
addi x7, x6, 0
addi x8, x0, 0
addi x9, x0, 2

loop: beq x6, x0, end
addi x6, x6, -1
add x8, x8, x6
beq x0, x0, loop

end: addi x10, x7, -1
mul x11, x7, x10
div x7, x11, x9
addi x5, x0, s2
ecall x1, x5, 4
ecall x0, x7, 0
ebreak x0,x0,0