		.data
prompt: .asciiz "inserire numero"
txt1:	.asciiz "numero pari"
txt2:	.asciiz "numero dispari"
		.text
		.globl main
		.ent main
main:
		la $a0, prompt
        li $v0, 4
        syscall
		
		li $v0,5
		syscall
		move $t1,$v0
		andi $t0,$t1,1 
		
		beq $t0,$0,pari
		
		la $a0, txt2
        li $v0, 4
        syscall
		


		li $v0, 10
		syscall
		.end main
		
pari:	la $a0,txt1
        li $v0, 4
        syscall