		.data
var: .word 0x3FFFFFF0
		.text
		.globl main
		.ent main
main:
		lw $t1,var
		addu $t1,$t1,$t1
		addiu $t2,$0,40
		
		
		li  $v0, 1           
		add $a0,$t1,$t2
		syscall

		li $v0, 10
		syscall
		.end main