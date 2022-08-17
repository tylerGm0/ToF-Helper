CKClick(x,y,c,d=0,wait=0) {
    x:=x * (A_ScreenWidth / 1920)
    y:=y * (A_ScreenHeight / 1080)
    MouseMove, %x%, %y%, 0
    Sleep,5
    if (c>0) {
        /*
        Click, Down, %x%, %y%
        Sleep, 125
        Click, Up, %x%, %y%
        */
        Send {LButton Down}
        Sleep, 75
        Send {LButton Up}
        Sleep, 75
    } else {
        MouseMove,%x%,%y%,0
    }
    Sleep,%wait%
    return
}