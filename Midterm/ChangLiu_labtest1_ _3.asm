;Chang Liu 216882813

s0: DC "Please enter an integer number N :\0"
s1: DC "Please enter a seed S :\0 "


loop: addi x5, x0, s0
ecall x0, x5, 4 ;out info
ecall x6, x0, 5 ;input
addi x7, x0, s1
ecall x0, x7, 4;
ecall x28, x0, 5
;jar x1, loop1
beq x0, x0, end

loop1: x6, x0, s
loop2: blt x6, x28, s
sub x6, x6, x28
beq x0, x0, loop2
s: jarlr x0, 0(x1)

end: addi x28, x0, 1
mul x30, x3, x28
add x31, x3, x30
sub x29, x3, x30
bge x3, x31, loop
blt x3, x29, loop

