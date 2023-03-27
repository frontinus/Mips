
		.data
n1: .byte 10
n2: .byte 0x10
n3: .byte '1'
res: .byte space
		.text
		.globl main
		.ent main
main:
		lbu $t1,n1
		lb  $t3,n3
		lb  $t2,n2
		add $t0,$0,$0
		add $t0,$t0,$t1
		add $t0,$t0,$t3
		sub $t0,$t0,$t2
		sb  $t0,res



		li $v0, 10
		syscall
		.end main