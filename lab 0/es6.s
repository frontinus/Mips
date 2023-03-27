.data
vett: .space 5
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

loop2:addi $t1,$t1,-1
addi $t0,$t0,-1
lb $a0,($t2)
li $v0,11
syscall
bne $t1,0,loop2

li $v0, 10
syscall
.end main