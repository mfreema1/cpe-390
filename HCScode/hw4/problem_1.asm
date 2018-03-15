lwcs:	EQU	$60
	ORG	$5000
	dc.b	"Mark Freeman 2020"
	ORG	$4000
	ldx	#$5000
loop:	ldaa	0,X
	tbeq	A, done
	cmpa	lwcs
	blo	upcs
	suba	#$20
upcs:	staa	1, X+
	bra	loop
done:	swi