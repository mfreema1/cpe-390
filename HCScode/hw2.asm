	ORG	$5000
	dc.w	586, 1234, 2961, 198
	ORG	$4000
	ldd	$5000
	addd	$5002
	addd	$5004
	addd	$5006
	addd	#2
	ldx	#4
	idiv
	stx	$5010