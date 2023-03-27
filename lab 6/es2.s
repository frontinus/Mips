		.data
input:  .asciiz "Introduci un numero: "	
		.text
		.globl main
		.ent main
main:	la $a0, input
		li $v0, 4
		syscall
		li $v0, 5
		syscall
		move $s0, $v0
		move $a0, $s0
		jal stampaTriangolo
		move $a0, $s0
		jal stampaQuadrato
		li $v0, 10
		syscall
		.end main

stampaTriangolo: move $t2,$a0
		addi $t2,$t2,1
		li $t0,0
		li $t1,1
cicl1:	addi $t0,$t0,1
		li $a0,'*'
		li $v0,11
		syscall
		bne $t0,$t1,cic1
		addi $t1,$t1,1
		li $a0,'\n'
		li $v0,11
		syscall
		li $t0,0
		bne $t1,$t2,cic1
		jr $ra

stampaQuadrato:move $t2,$a0
		addi $t2,$t2,1
		li $t0,1
		li $t1,1
cic2:	addi $t0,$t0,1
		li $a0,'*'
		li $v0,11
		syscall
		bne $t0,$t2,cic2
		addi $t1,$t1,1
		li $a0,'\n'
		li $v0,11
		syscall
		li $t0,0
		bne $t1,$t2,cic2
		jr $ra