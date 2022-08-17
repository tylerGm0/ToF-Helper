InMenu(what) {
    StringUpper, what, what
    if (what=="MAIN") {
        pixelGetColor,cc,5,15,RGB,Fast
        iv:=% HasVal(MenuColors,cc)
        if (iv>0) {
            out:=true
        }
    }
    if (what=="ESC") {
        pixelGetColor,cc,1750,70,RGB,Fast
        iv:=% HasVal(AltMenuColors,cc)
        if (iv>0) {
            out:=true
        }
    }
    return out
}