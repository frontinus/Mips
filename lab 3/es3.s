		.data
giorni: .byte 12
ore: .byte 3
minuti: .byte 7
result: .space 4
		.text
		.globl main
		.ent main
main: lbu $t0,giorni
	  mul $t1, $t0, 24
	  lbu $t0, ore
	  addu $t1, $t1, $t0 
	  mul $t1, $t1, 60 
	  lbu $t0, minuti
	  addu $t1, $t1, $t0
	  sw $t1, risultato


		
fine:	li $v0, 10
		syscall
		.end main