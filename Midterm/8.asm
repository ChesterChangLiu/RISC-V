Start:
DC "York University\0"
addi a2, x0, Start+6
jal x1, Loop1
addi x6, x0, str1
ecall x0, x6, 4
ebreak x0, x0, 0
Loop1:
jal x1, Loop2
addi a3, a3, -1
jalr x0, 0(x1)
Loop2:
addi a3, a3, 1
blt x0, a3, Start