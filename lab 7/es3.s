		.data
input: .asciiz "Introduci un numero:"
output: .asciiz "Numero di elementi nella sequenza: "
		.text
		.globl main
		.ent main
main:	la $a0, input
		li $v0, 4
		syscall
		li $v0, 5
		syscall
		move $a0, $v0
		jal sequenzaDiCollatz
		move $t0, $v0
		la $a0, output
		li $v0, 4
		syscall
		move $a0, $t0
		li $v0, 1
		syscall
		li $v0, 10
		syscall
		.end main
		
sequenzaDiCollatz:addi $sp, $sp, -8
		sw $ra, 4($sp)
		sw $s0, ($sp)
		li $s0, 1
ciclo: 	beq $a0, 1, fineCiclo
		jal calcolaSuccessivo
		move $a0, $v0
		addi $s0, $s0, 1
		b ciclo
fineCiclo: move $v0, $s0
		lw $s0, ($sp)
		lw $ra, 4($sp)
		addi $sp, $sp, 8
		jr $ra