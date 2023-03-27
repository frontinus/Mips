		.data
wMat: .word 154, 123, 109, 86, 4, 0, 412, -23, -231, 9, 50, 0, 123, -24, 12, 55, -45, 0, 0, 0, 0, 0, 0, 0
		.text
		.globl main
		.ent main
main:	
		li $t0,0
		li $t1,0
		
ciclo1: lw $t2,wMat($t0)
		add $t1,$t2,$t1
		addi $t0,$t0,4
		beq  $t0,20,nextciclo1
		beq  $t0,40,nextciclo1
		beq  $t0,60,nextciclo1
		bne $t2,64,ciclo1

nextciclo1: sw $t1,wMat($t0)
		beq $t0,72 nextstep
		li $t1, 0
		b ciclo1

nextstep: li $t0,0
		li $t1,0
		b ciclo2
		  
ciclo2: lw $t2,wMat($t0)
		add $t1,$t1,$t2
		addi $t0,$t0,24
		beq $t0,64,nextciclo2
		beq $t0,68,nextciclo2
		beq $t0,72,nextciclo2
		beq $t0,76,nextciclo2
		beq $t0,80,nextciclo2
		beq $t0,84,nextciclo2
		bne $t0,88,ciclo2
		
nextciclo2: sw $t1,wMat($t0)
		beq $t0,80 fine
		li $t1, 0
		addi $t0,$t0,-60
		b ciclo2
		
fine:	li $v0, 10
		syscall
		.end main