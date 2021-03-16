;Chang Liu 216882813

str1: DC "Input String :\0"
str2: DC "Number of zeros :\0"
str3: DC "Output String :\0"
s4: DC "0"
STACK: EQU 0x100000 ;stack
lui sp, STACK>>12
addi a2, x0, s4;
addi a3, x0, 0 ;
addi x6, x0, str1
ecall x0, x6, 4; info string
;ecall x28, x0, 9
jal x1, delch
;addi x7, x0, str3
;ecall x0, x7, 0
;ecall x0, x28, 0
;addi x5, x0, str2 ;output
;ecall x0, x5, 0
;ecall x0, x30, 0
addi x31, x0, 0
;beq x28, x31, cnt
ebreak x0, x0, 0 ;finish
;cnt: addi x30, x30, 1 ;counter

delch: sd x1, 0(sp) ;push
sd s0, -8(sp) ;push
sd s1, -16(sp) ;push
addi sp, sp, -24 ;push
addi s0, a2, 0
addi s1, a3, 0
bge x0, s1, end2

loop2: jal x1, delch1
addi a2, s0, 0
addi s1, s1, -1
bne s1, x0, loop2

end2: addi sp, sp, 24 ;pop
ld x1, 0(sp) ;pop
ld s0, -8(sp) ;pop
ld s1, -16(sp) ;pop
ecall x28, x0, 9
addi x7, x0, str3
ecall x0, x7, 0
ecall x0, x28, 0
addi x5, x0, str2 ;output
ecall x0, x5, 0
ecall x0, x30, 0
jalr x0, 0(x1) ;return

delch1: lb x5, 0(a2)
loop1: beq x5, x0, end1
lb x5, 1(a2)
sb x5, 0(a2)
addi a2, a2, 1
jal x0, loop1

end1: jalr x0, 0(x1) ;return