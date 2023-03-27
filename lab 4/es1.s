		.data
Vettore: .space 80
		.text
		.globl main
		.ent main
main:	li $t0,0
		li $t1,1
		sw $t1,Vettore($t0)
		addi $t0,$t0,4
		li $t2,1
		sw $t2,Vettore($t0)
		addi $t0,$t0,4
		li $s0,2
ciclo:	add $t3,$t2,$t1
		sw $t3,Vettore($t0)
		addi $t0,$t0,4
		move $t1,$t2
		move $t2,$t3
		addi $s0,$s0,1
		blt $s0,20,ciclo
		li $v0, 10
		syscall
		.end main