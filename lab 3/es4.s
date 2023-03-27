		.data
DIM:   .word 4
		.text
		.globl main
		.ent main
main: lw $t0,DIM
	  add $s0,$0,$0
	  add $t2,$0,$0
loop: beq $t0,$s0,fine
	  li $v0,5
	  syscall
	  move $t1,$v0
	  add $t2,$t1,$t2
	  addi $s0,$s0,1
	  bne $s0,$t0,loop

		
fine:	divu $t2,$t0
		move $a0,$LO
		
		li $v0,1
		syscall

		li $v0, 10
		syscall
		.end main