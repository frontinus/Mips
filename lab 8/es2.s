bisestile:
li $t7,0
li $t3,100
li $t4,4
li $t5,400
ciclo:li $t0,0($a0)
divu $t0,$t3
mfhi $t1
beq $t1,$0,test2
div $t0,$t4
mfhi $t1
beq $t1,$0,path1
b path2

test2: divu $t0,$t5
mfhi $t1
beq $t1,$0,path1
b path2

path1: lbu 1,0($a1)
b fine

path2: lbu $0,0($a1)
b fine

fine: addi $a0,$a0,4
addi $a1,$a1,1
addi $t7,$t7,1
bne $t7,$a2,ciclo
jr $ra
