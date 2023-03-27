		.data
stringa: .ascii "parola"
		.text
		.globl main
		.ent main
main:	li $t0,0
cic:	lbu $a0,stringa($t0)
		jal conv
		sb $v0,stringa($t0)
		addi $t0,$t0,1
		bne $t0,6,cic
		li $v0, 10
		syscall
		.end main
		
		
conv:	addi $a0,$a0,-32
		jr $ra