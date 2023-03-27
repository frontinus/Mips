		.data
numeri: .word 3, 8, 12
		.text
		.globl main
		.ent main
main:
		la $t0,numeri
		lw $t1,0($t0)
		lw $t2,4($t0)
		lw $t3,8($t0)
		
		blt $t1,$t2,swap1
		add $s0,$0,$t1
		move $t1,$t2
		move $t2,$s0		
swap1:  blt $t1,$t3,swap2
		move $s0,$t1
		move $t1,$t3
		move $t3,$s0
swap2:	blt $t2,$t3,swap3
		move $s0,$t2
		move $t2,$t3
		move $t3,$s0
swap3:  move $a0,$t0
		li $v0,1
		syscall
		li $a0,'\n'
		li $v0,11
		syscall
		move $a0,$t2
		li $v0,1
		syscall
		li $a0,'\n'
		li $v0,11
		syscall
		move $a0,$t3
		li $v0,1
		syscall
		li $a0,'\n'
		li $v0,11
		syscall

		li $v0, 10
		syscall
		.end main



swap2:  add $s0,$0,$t1
		move $t1,$t3
		move $t3,$s0

swap3:  add $s0,$0,$t2
		move $t2,$t3
		move $t3,$s0
		
		
		