		.data
v1: 	.word 1, 2, 3, 4
v2:		.word 1, 2, 3, 5
mat:	.space 64
		.text
		.globl main
		.ent main
main:	li $t2,0
		li $t3,0
		li $s0,0
		

ciclo: lw $t0,v1($t2)
		lw $t1,v2($t3)
		mul $s1,$t1,$t0
		sw 	$s1,mat($s0)
		addi $t2,$t2,4
		addi $s0,$s0,4
		beq $t2,16,nextciclo
		bne $t2,16,ciclo

nextciclo: beq $t3,16,fine
		addi $t3,$t3,4
		li $t2,0
		b ciclo


		
fine:	li $v0, 10
		syscall
		.end main