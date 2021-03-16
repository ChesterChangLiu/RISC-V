dir: DC "John"
DC "11111"
DC "Nick"
DC "22222"
DC "Sara"
DC "11111"
DC "Nick"
DC "33333"
DD 0
s1: DC "Enter a phone or a name\nto search for:"
space: DC " "
nl: DC "\n"
addi x30, x0, s1
addi x28, x0, 4
addi x29, x0, 5

main:
        ecall x1, x30, 4;info
	ecall x7, x0, 9 ;input string
       
	beq x0, x0, main
	
loop: 	ld x6, dir(x5)
	srai x8, x5, 3
	
	beq x6, x0, main
	

end:    ebreak x0, x0, 0



