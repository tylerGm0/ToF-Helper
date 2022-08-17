SkipDNR(level)
{
    if (level=="1") {
        MouseGetPos,mx,my
        CKClick(mx,my,1,0,300)
        Sleep,% CKWait(2500)
        CKClick(1772,35,1,0,350)
        Sleep,% CKWait(1250)
    }
    if (level=="2") {
        CKClick(50,50,1,0)
        Sleep,% CKWait(500)
        MouseMove, %mx%, %my%
        sdw=0
    }
}

SkipDNR:
    global sdw
    sdw++
    SkipDNR(sdw)
return

SkipOther:
    MouseGetPos,mx,my
    CKClick(1780,30,1)
    CKClick(740,644,1)
    CKClick(41,41,1)
    MouseMove, %mx%, %my%, 0
return

SkipOther2:
    MouseGetPos,mx,my
    CKClick(50,50,1,0,500)
    MouseMove, %mx%, %my%, 0
return

Return:
    MouseGetPos, mx, mx
    SkipX:=% (A_ScreenHeight - 35)
    SkipX:=% (A_ScreenHeight - SkipX)
    SkipY:=% (A_ScreenWidth - 200)
    ;MsgBox,%SkipX%  %SkipY%
    ReturnX:=50
    ReturnY:=50
    CKClick(mx,my,1,0)
    CKClick(SkipX,SkipY,1,0)
    CKClick(ReturnX,ReturnY,1,0)
    Sleep, 500
    MouseMove,%mx%,%my%,0
return