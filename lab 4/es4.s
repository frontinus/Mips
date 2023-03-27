		.data
v: 	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
mat:	.space 400
		.text
		.globl main
		.ent main
main:	
		li $t2,0
		li $t3,0
		li $s0,0

ciclo: 	lw $t0,v1($t2)
		lw $t1,v1($t3)
		mul $s1,$t1,$t0
		sw 	$s1,mat($s0)
		addi $t2,$t2,4
		addi $s0,$s0,4
		beq $t2,40,nextciclo
		bne $t2,40,ciclo

nextciclo: beq $t3,40,fine
		addi $t3,$t3,4
		li $t2,0
		b ciclo


		
fine:	li $v0, 10
		syscall
		.end main