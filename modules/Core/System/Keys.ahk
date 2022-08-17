$SC029::
{
    Send {F10}
}
return

$+SC029::
{
    SM:=% HotKeys("TOGGLE")
    CKTooltip(SM)
}
return

$NumpadDiv::
{
    CKTooltip("Reloading Script")
    Sleep, 800
    Reload
}
return

$^NumpadDiv::
{
    global MLS:=!MLS
    CKTooltip("Toggling MouseLoc/Color " (MLS ? "ON":"OFF"))
    if (MLS) {
        SetTimer, MouseLoc, 100
    } else {
        SetTimer, MouseLoc, Off
        Tooltip,,,,5
    }
}
return

$!SC029::
    Suspend
    if (A_IsSuspended) {
        CKTooltip("Status: Suspended")
    } else {
        CKTooltip("Status: Unsuspended")
    }
return

$+F1::
{
    WinGet, WndID, ID, Tower of Fantasy
    global WndID
    CKTooltip(WndID)
}
return