		.data
messaggio: .asciiz "\n non e un numero"
		.text
		.globl main
		.ent main
main:
		li $v0,12
		syscall
		move $t0,$v0
		beq $t0,'n',fine
		blt $t0, '0',nonumero
		bgt $t0, '9',nonumero
		
nonumero:la	$a0,messaggio
		 li $v0,4
		 syscall
		
fine:	li $v0, 10
		syscall
		.end main