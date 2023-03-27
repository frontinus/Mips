		.data
		
		.text
		.globl main
		.ent main
main:	li $t0,0
		li $t1,1
		jal stampatriangolo
		jal stamparettangolo
		b fine
stampatriangolo:li $t0,0
		li $t1,1		
cic1:	addi $t0,$t0,1
		li $a0,'*'
		li $v0,11
		syscall
		bne $t0,$t1,cic1
		addi $t1,$t1,1
		li $a0,'\n'
		li $v0,11
		syscall
		li $t0,0
		bne $t1,9,cic1
		jal stamparettangolo
		jr $ra
		
stamparettangolo:li $t0,0
		li $t1,0
cic2:	addi $t0,$t0,1
		li $a0,'*'
		li $v0,11
		syscall
		bne $t0,9,cic2
		addi $t1,$t1,1
		li $a0,'\n'
		li $v0,11
		syscall
		li $t0,0
		bne $t1,9,cic2
		jr $ra

fine:	li $v0, 10
		syscall
		.end main