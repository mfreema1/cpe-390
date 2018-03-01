	ORG	$4600
t1:	DCB.B	256, $22
	ORG	$5600
t2:	DCB.B	256, $88
	ORG	$4000
	ldab	#255
	ldx	#$4600	;#t1
	ldy	#$5600	;#t2
loop:	ldaa	0, X
	movb	0, Y, 1, X+
	staa	1, Y+
	suba	#1
	bpl	loop
	swi
