
s1: DC "What is your name?\0"
s2: DC "Hello "
s3: DC "! "
ld x5, s2(x0)
ld x6, s3(x0)
addi x30, x0, s1

ecall x0, x30, 4 ;info string
ecall x7, x0, 8
ecall x1, x5, 3
ecall x1, x7, 3
ecall x1j, x6, 3