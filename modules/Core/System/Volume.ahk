WinGetVolume(wintitle) {
    WinGet exe, ProcessName, % wintitle
    Return AppVolume(exe).GetVolume()
}

WinSetVolume(wintitle, volume) {
    WinGet exe, ProcessName, % wintitle
    AppVolume(exe).SetVolume(volume)
}

$NumpadMult::
{
    WinGet, ActivePID, PID, A
    WinGetTitle, Title, A
    if !(Volume:=GetVolumeObject(ActivePID))
    {
        SM:="There was a problem retrieving the application volume interface."
        CKTooltip(SM)
    }
    VA_ISimpleAudioVolume_GetMute(Volume, Mute)  ;Get mute state
    ;MuteStatus:=% "Application " A " @ " ActivePID " is currently " (mute ? "muted" : "not muted")
    VA_ISimpleAudioVolume_SetMute(Volume, !Mute) ;Toggle mute state
    SM:=% (Mute ? "Unmuting" : "Muting") " application: " Title
    CKTooltip(SM,,20,1500)
    ObjRelease(Volume)
}
return

$NumpadSub::
{
    WinGetTitle, Title, A
    CurVol:=% WinGetVolume(Title)
    CurVol:=Round(CurVol)
    if (CurVol<=15) {
        NewVol:=0
    } else {
        NewVol:=% (CurVol - 15)
    }
    SM:=% "Changing Volume From " . CurVol . " to " . NewVol
    CKTooltip(SM,,20,1500)
    WinSetVolume(Title, NewVol)
}
return

$NumpadAdd::
{
    WinGetTitle, Title, A
    CurVol:=% WinGetVolume(Title)
    CurVol:=Round(CurVol)
    if (CurVol>=85) {
        NewVol:=100
    } else {
        NewVol:=% (CurVol + 15)
    }
    SM:=% "Changing Volume From " . CurVol . " to " . NewVol
    CKTooltip(SM,,20,1500)
    WinSetVolume(Title, NewVol)
}
return