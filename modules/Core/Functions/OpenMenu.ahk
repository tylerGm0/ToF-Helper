OpenMenu(what) {
    StringUpper, what, what
    if (what=="MAIN") {
        Send {Alt Down}
        Sleep,15
        Send {3}
        Sleep, 15
        Send {Alt Up}
    }
    if (what=="SPECIALORDERS") {
        Send {ESC}
        Sleep, 150
        CKClick(1700,200,1,150)
    }
}