src: DD -1, 55, -3, 7, 0
add x6, x0, x0
add x7, x0, x0
loop: ld x5, src(x6)
beq x5, x0, end
blt x7, x5, big
blt x5, x7, skip

big: add x7, x0, x5
addi x6, x6, 8
beq x0, x0, loop

skip: addi x6, x6, 8
beq x0, x0, loop

end: add x5, x7, x0
ebreak x0, x0, 0

