ConfigSetRelic:
    tk:=A_ThisHotkey
    Send {ESC} ; Open Menu
    Sleep,% CKWait(500) ; Sleep 500ms
    CKClick(1800,320,1,0,850) ; Click Relics and Sleep 850ms
    CKClick(370,1025,1,0,1250) ; Click Deploy and Wait for it to Finish Loading.
    if (tk=="$Numpad4") {
        CKClick(145,600,1,0,250) ; Click Set 1.
    }
    if (tk=="$Numpad5") {
        CKClick(245,600,1,0,250) ; Click Set 2.
    }
    if (tk=="$Numpad6") {
        CKClick(345,600,1,0,250) ; Click Set 3.
    }
return