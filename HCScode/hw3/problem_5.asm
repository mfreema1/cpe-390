	ORG	$5000
arr:	DCB.W	12, $1600
	DCB.W 12, $2200
	ORG	$5100
	DS.B	1
	ORG	$4000
	ldx	#arr		;set up X on the array, will 2 step it
	ldy	#24		;we'll use 3 arithmetic shifts to bring nums into 8-bit range
reld:	ldd	2, X+	
crsh:	asra
	rorb
	asra
	rorb
	asra
	rorb			;these two are the equivalent of a arithmetic right shift on D
rdy:	addd	#125		;lowest possible value is -125
	bmi	nope		;if it's negative, go back
	subd	#375		;take the 375 out
	ble	nope		;if we're still in after this, add it
good:	inc	$5100		;add 1 to the total
nope:	dbne	y,reld	;back to the top if we have more to go
	
	
	
	
	