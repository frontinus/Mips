		.data
input: .asciiz "Introduci un numero: "
		.text
		.globl main
		.ent main
main:	
		la $a0, input
		li $v0, 4
		syscall
		li $v0, 5
		syscall
		move $a0,$v0
		jal calcolaSucessivo
		li $v0, 10
		syscall
		.end main

calcolaSucessivo: andi $t1,$a0,1
		beq $t1,$0,odd
		multu $a0,3
		mflo $t2
		addi $t2,$t2,1
		b endo
		
		
odd:	div $a0,2
		mflo $t2
		b endo

endo:	move $a0, $t2
		li $v0, 1
		syscall
		li $a0, '\n'
		li $v0, 11
		syscall
		move $v0, $t2
		jr $ra