		.data
op1: .byte 150
op2: .byte 100
		.text
		.globl main
		.ent main
main:
		lbu $t0,op1
		lbu $t1,op2
		add $t2,$t1,$t0
		
		li  $v0, 1           
		add $a0,$t2,$0
		syscall

		li $v0, 10
		syscall
		.end main