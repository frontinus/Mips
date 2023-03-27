		.data
var: .word 0x3FFFFFF0
		.text
		.globl main
		.ent main
main:
		lw $t1,var
		add $t1,$t1,$t1
		addi $t2,$t1,40
		li  $v0, 1           
		add $a0,$t1,$0
		syscall

		li $v0, 10
		syscall
		.end main