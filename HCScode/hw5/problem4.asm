        movw    #rtisr, UserRTI
        clr     HOTT
        movb    #$00, DDRA
        movb    #$6B, RTICTL ;393,126 cycles ~ 100ms @4MHz
        movb    #$80, CRGINT
        cli
        bra     CMC

rtisr:  movb    #$80, CRGFLG
        ldaa    PORTA
        cmpa    HOTT
        blt     skip
        staa    HOTT
skip:   rti