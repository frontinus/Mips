.data
vett: .space 5
min: .space 4
.text
.globl main
.ent main
main:
la $t0,vett
add $t1,$0,$0
loop1:li $v0,12
syscall
sb $v0,($t0)
addi $t1,$t1,1
addi $t0,$t0,1
bne $t1,5,loop1

la $t0, vett
li $t1, 0 
lb $t2, ($t0)
loop2: lb $t3, ($t0)
bgt $t3, $t2, jump
lb $t2, ($t0) 
jump: add $t1, $t1, 1
add $t0, $t0, 1
bne $t1, 5, loop2 
li $v0, 11 
move $a0, $t2
syscall

li $v0, 10
syscall
.end main