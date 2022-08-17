Auto(what) {
    StringUpper, what, what
    if (what=="ROTATION") {
        global GIROT:=!GIROT
        if (GIROT) { 
            HotKeys("ON")
        }
        SM:=% "Auto Rotation: " (GIROT ? "ON" : "OFF")
    }
    CKTooltip(SM,,,900)
}
