.data
wVett: .word 5, 7, 3, 4,
wResult: .space 4

.text
.globl main
.ent main
main:
la $t1,wVett
lw $t2,($t1)
add $t0,$t2,$0
addi $t1,$t1,4
lw $t2,($t1)
add $t0,$t0,$t2
addi $t1,$t1,4
lw $t2,($t1)
add $t0,$t0,$t2
addi $t1,$t1,4
lw $t2,($t1)
add $t0,$t0,$t2
sw $t0,wResult
li $v0, 10
syscall
.end main