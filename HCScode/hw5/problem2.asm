;Idea is to check pin 6 of port A - if it's up, toggle pin 1, and go to forever down
;keep checking pin 6 to make sure it's down, if it goes up, go back to forever up                

                ORG     $6000
PTA:            EQU     $00

                ORG     $4000
                movb    #$AA, DDRA ;read pin 6, write on pin 1
foreverdown:    brset   PTA, %00100000, toggle ;pin6 is down in this loop
                bra     foreverdown
toggle:         brclr   PTA, %00000010, setone ;pin6 is up in this loop
setzero:        movb    %00100000, PTA
                bra     foreverup
setone:         movb    %00100010, PTA
foreverup:      brclr   PTA, %00100000, foreverdown
                bra     foreverup