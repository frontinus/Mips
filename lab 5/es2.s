		.data
punt1:	.space 4
punt2:	.space 4
		.text
		.globl main
		.ent main
main:	
		li $t1,0
		add $s0,$sp,$0
ciclo:	li  $v0, 12
		syscall
		subu $sp, $sp, 4
		move $sp,$v0
		move $t0,$sp
		addi $t1,$t1,4
		bne '\n',$t0,ciclo
		div $t1,2
		mflo $t1
ciclo2:	lw $t2,($sp)
		lw $t3,($s0)
		beq $t2,$t3,fine
		addi $sp,$sp,4
		addi $s0,$s0,-4
		bne $t1,s0,ciclo2
		
fine:	li $v0, 10
		syscall
		.end main