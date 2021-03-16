s1: DC "Enter unsigned integer:\0"
addi x30, x0, s1
ecall x1, x30, 4
ecall x5, x0, 5
loop: beq x5, x0, out
andi x6, x5, 1
addi sp, sp, -8
sd x6, 0(sp)
srli x5, x5, 1
beq x0, x0, loop
out: beq sp, x0, end
ld x5, 0(sp)
addi sp, sp, 8
ecall x1, x5, 0
beq x0, x0, out
end: