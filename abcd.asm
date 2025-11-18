start:
	load 1
	xto R0
	xto R1
	xto Y
	ADD
	xto R2

ALOCA:
	tox R2
	xto M
	tox R3
	moveax 15


	ADD
	movexa 	0

RECURSIVIDADE:
	;R2 -> R1
	;R1 -> R0
	;R0 -> X
	;R1 ->	Y
	;ADD
	;X->R2
	;goto ponteiro


ponteiro:
	load 1
	xto Y
	tox R3
	ADD	
	xto	R3
	goto 8


fim:
	goto fim
