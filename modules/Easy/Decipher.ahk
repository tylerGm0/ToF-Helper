Decipher:
    MouseGetPos, mx, my
    CKClick(1300,762,1,0,250) ; Perfect Decipher
    CKClick(1590,768,1,0,250) ; Forced Decipher
    MouseMove, %mx%, %my%, 0
return

PerfectDecipher:
    MouseGetPos, mx, my
    CKClick(1300,762,1,0,250) ; Perfect Decipher
    MouseMove, %mx%, %my%, 0
return

ForcedDecipher:
    MouseGetPos, mx, my
    CKClick(1590,768,1,0,550) ; Forced Decipher
    CKClick(1252,580,1,0,250) ; Yes Dont Use Keys... DUH
    MouseMove, %mx%, %my%, 0
return