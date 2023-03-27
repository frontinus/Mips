calcola_sconto:
subu$fp, $sp, 4
move $t0, $a0# prezzi
move $t1, $a1# scontati
move $t2, $0# indice
ciclo
li $t5, 100# costante
sub $t3, $t5, $a3# percentualedel prezzodopolo sconto
lw$t4, 4($fp)# arrotondamento
move $v0, $0# scontototale
ciclo:lw$t6, ($t0)
mul$t7, $t6, $t3
div $t7, $t5
mflo$t7
beqz$t4, noArrotondamento# arrotondailprezzo
mfhi$t8
blt$t8, 50, noArrotondamento
addiu$t7, $t7, 1
noArrotondamento:sw$t7, ($t1)
subu$t8, $t6, $t7
addu$v0, $v0, $t8
addiu$t0, $t0, 4
addiu$t1, $t1, 4
addiu$t2, $t2, 1
bne$t2, $a2, ciclo
jr$ra