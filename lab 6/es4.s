		.data
vettore: .word 15, 870, 1200, -21, -1000, 15003, -1039581
		.text
		.globl main
		.ent main
main:	la $a0, vettore
		li $a1, 7
		jal maxim
		move $a0, $v0
		li $v0, 1
		syscall
		li $v0, 10
		syscall
		.end main
		
maxim:	move $t0, $a0
		move $t1, $a1
		lw $v0, ($t0)
ciclo:	addi $t0,$t0,4
		lw $t2,($t0)
		sub $t3,$v0,$t2
		bgez $t3,ciclo
		move $v0,$t2
		bne $t0,28,ciclo
		jr $ra