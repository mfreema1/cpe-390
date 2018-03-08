	ORG	$5000
	dc.b	"Mark Freeman 2020"
	ORG	$4000
	ldx	#$5000
loop:	ldaa	0,X
	tbeq	A, done
	cmpa	#$60
	blo	uprcs
	suba	#$20
uprcs:	staa	1, X+
	bra	loop
done:	swi