.data
wVett: .word 5, 7, 3, 4,
wResult: .space 4

.text
.globl main
.ent main
main:
la $t1,wVett
add $t0,$0,$0
add $t3,$0,$0
loop: lw $t2,($t1)
	  add $t0,$t0,$t2
	  addi $t1,$t1,4
	  addi $t3,$t3,1
	  bne $t3,5,loop
sw $t0,wResult
li $v0, 10
syscall
.end main