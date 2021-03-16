;Chang Liu 216882813

s0: DC "Please enter an integer value :\0"
s1: DC "The number of times x appears in the list is "
s2: DC " times"
a: DD 128, 10, 23, 12, 128, 9, 220, 46, 128, 5
add x22, x0, x0
add x20, x0, x0
loop: addi x5, x0, s0
ecall x0, x5, 4 ;out info
ecall x6, x0, 5 ;input
;add x22, x0, x0
;add x20, x0, x0
addi x21, x0, 10
addi x20, x20, 1
blt x20, x21, loop1
beq x20, x21, end

loop1: slli x10, x22, 3
;add x10,x10, x25
ld x9, a(x10)
sd x9, a(x10)
bne x9, x6, loop
addi x22, x22, 1
beq x9, x6, loop

end: addi x7, x0, s1
ecall x1, x7, 4
ecall x1, x22 ,0
addi x19, x0, s2
ecall x1, x19, 4

DM: 1