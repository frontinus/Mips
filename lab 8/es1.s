costoparcheggio:
lbu $t2,0($a0)
lbu $t3,0($a1)
subu $t0,$t3,$t2
lbu $t2,1($a0)
lbu $t3,1($a1)
subu $t1,$t3,$t2
li $t3,60
multu $t0,$t3
mflo $t0
addu $t0,$t0,$t1
divu $t0,$a3
mflo $t0
mfhi $t1
beq $t1,0,fine
addiu $t0,$t0,1
fine: multu $t0,$a2
mflo $t0,$a2
mflo $v0
jr $ra