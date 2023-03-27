	.data
norad:	.asciiz  "no radice"
rad:	.asciiz   "radice"
		.text
		.globl main
		.ent main
main:	add $s0,$0,$0
		li $s1,4
		li $v0, 5 
		syscall
		move $t0, $v0
		li $v0, 5 
		syscall
		move $t1, $v0
		li $v0, 5
		syscall
		move $t2, $v0
		
		mult $t1,$t1
		mflo $t1
		
		mult $t2,$t0
		mflo $t3
		
		multu $t3,$s1
		mflo $t3
		sub $t0,$t1,$t3
		slt $t2,$t0,$s0
		beq $t2,1,prefine1
		beq $t2,0,prefine2
		
prefine1:li  $v0, 4           
		la $a0,norad  
		syscall
		beq $t2,1,fine

prefine2:li  $v0, 4           
		la $a0,rad  
		syscall	
		beq $t2,0,fine
		
fine:	li $v0, 10
		syscall
		.end main