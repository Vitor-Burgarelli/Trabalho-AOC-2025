start:
	load 0
	xto M
	xto R3
	load 1
	xto R1
	xto Y
	load 0
	xto R0
	ADD
	xto R2
	goto RECURSIVIDADE

ALOCA:

	tox R3
	xto M
	tox R0
	movexa 15
	goto ponteiro

	load 13
	xto Y
	tox R0
	EQ
	IF
	goto fim
RECURSIVIDADE:
	tox R1
	xto R0
	tox R2
	xto R1
	xto Y
	tox R0
	ADD
	xto R2
	goto ALOCA

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
	goto RECURSIVIDADE


fim:
	goto fim
