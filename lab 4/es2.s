		.data
opa:    .word  2043
opb:    .word  5
res:     .space 4
		.text
		.globl main
		.ent main
main:	lw $t0, opa
		lw $t1, opb
		li $v0, 5
		syscall
		beq $v0,0,somma
		beq $v0,1,sottrazione
		beq $v0,2,moltiplicazione
		beq $v0,3,divisione
		
		
		
		
somma: 	add $t0, $t0, $t1
		b fine
sottrazione: sub $t0, $t0, $t1
		b fine
moltiplicazione: mul $t0, $t0, $t1
		b fine
divisione: div $t0, $t0, $t1
		b fine		
		
fine:	sw $t0, res

		li $v0, 10
		syscall
		.end main