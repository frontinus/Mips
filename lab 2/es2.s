		.data
prompt: .asciiz "inserire numero"
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
		
		la $a0, prompt
        li $v0, 4
        syscall
		
		li $v0,5
		syscall
		move $t0,$v0
		
		xor $t2,$t1,$t0
		nor $t0,$t0,$0
		and $t3,$t1,$t0
		nor $t3,$t3,$0
		or $t0,$t3,$t2
		
		move $a0,$t0
        li $v0, 35
        syscall
		
		
		li $v0, 10
		syscall
		.end main