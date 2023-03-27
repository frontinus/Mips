	.data
messaggio: .asciiz "\n non e un numero"
messaggio2: .asciiz "\n non rappresentabile in 4bytes"
messaggio3:.asciiz "\n overflow"
		.text
		.globl main
		.ent main
main:
		li $t2,10
		li $t1,0
loop:	li $v0,12
		syscall
		move $t0,$v0
		beq $t0,'n',fine
		blt $t0, '0',nonumero
		bgt $t0, '9',nonumero
		blt $t0,-2147483648,norap
		bgt $t0,2147483647,norap
		subi $t0,$t0,'0'
		mult $t1,$t2
		move $t1,$LO
		add $t1,$t1,$t0
		blt $t1,-2147483648,overfl
		bgt $t1,2147483647,overfl
		bne $t0,'n',loop
		
norap: la $a,messaggio2
	   li $v0,4
	   syscall
overfl:la $a,messaggio3
	   li $v0,4
	   syscall
		
nonumero:la	$a0,messaggio
		 li $v0,4
		 syscall
		
fine:	li $v0,1
		move $a0,$t1
		syscall


		li $v0, 10
		syscall
		.end main