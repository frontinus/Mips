		.data
var:	.word 3141592653
		.text
		.globl main
		.ent main
main:	lw $t0,var
		li $t1,10
		li $t2,0
ciclo:	div $t0,$t1
		subu $sp, $sp, 4
		mflo $t0
		mfhi $sp
		subu $sp, $sp, 4
		addi $t2,$t2,1
		bne $t2,10,ciclo
		
		li $t2,0
ciclo2:	lw 	$a0, ($sp)
		addi $sp, $sp, 4
		addi $a0,$a0,48
		li  $v0, 11   
		syscall
		addi $t2,$t2,1
		bne $t2,10,ciclo2
		li $v0, 10
		syscall
		.end main