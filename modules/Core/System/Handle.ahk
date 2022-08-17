HandleDebug:
    Debug:=!Debug
    if (Debug) {
        CKTooltip("Debugging: ON")
    } else {
        CKTooltip("Debugging: OFF")
    }
return

HandleReload:
    CKTooltip("Reloading Script")
    Sleep, 800
    Reload
return

HandleExit:
    CKTooltip("Exiting App")
    Sleep, 800
    ExitApp
return