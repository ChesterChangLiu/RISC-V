
src: DD 121, 33, -5, 242, -45, -12, 0
add x6, x0, x0
add x7, x0, x0


loop: ld x5, src(x6)
beq x5, x0, end
blt x5, x7, small
blt x7, x5, skip

small: add x7, x0, x5
add x29, x0, x6
addi x6, x6, 8
beq x0, x0, loop

skip: addi x6, x6, 8
beq x0, x0, loop

end: add x5, x7, x0
ld x28, src(x0)
sd x5, src(x0)
sd x28, src(x29)
ebreak x0, x0, 0
