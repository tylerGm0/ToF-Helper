MouseLoc:
    MouseGetPos, mx, my
    PixelGetColor, cC, mx, my, RGB, Fast
    Tooltip, %mx% %my% - Color: %cC%, 20, 20, 5
    if (!MLS) {
        Tooltip,,,,5
    }
return