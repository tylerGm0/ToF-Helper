SwitchSetWeapon:
    tk:=A_ThisHotkey
    pixelGetColor,cc,193,1007,RGB,Fast
    if (cc!="0xFDFDFD") {
        Send {n}
        Sleep,% CKWait(500)
    }
    if (tk=="$Numpad1") {
        CKClick(670,1025,1,0,150)
        CKClick(165,655,1,0,350)
        CKClick(50,50,1,0)
    }
    if (tk=="$Numpad2") {
        CKClick(670,1025,1,0,150)
        CKClick(165,755,1,0,350)
        CKClick(50,50,1,0)
    }
    if (tk=="$Numpad3") {
        CKClick(670,1025,1,0,150)
        CKClick(165,855,1,0,350)
        CKClick(50,50,1,0)
    }
return