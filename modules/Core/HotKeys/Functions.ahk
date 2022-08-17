HotKeys(what) {
    StringUpper, what, what
    if (what=="TOGGLE") {
        HotKeys:=!HotKeys
        SM:="HotKeys " (HotKeys ? "ON":"OFF")
        if (!HotKeys) {
            for k,v in MainHotkeys {
                Hotkey, % k, OFF
            }
        } else {
            for k,v in MainHotkeys {
                Hotkey, % k, ON
            }        
        }
    }
    if (what=="ON") {
        HotKeys:=true
        SM:="HotKeys ON"
        for k,v in MainHotkeys {
            Hotkey, % k, ON
        }
    }
    if (what=="OFF") {
        HotKeys:=false
        SM:="HotKeys OFF"
        for k,v in MainHotkeys {
            Hotkey, % k, OFF
        }
    }
    return SM
    ;CKTooltip(SM,10,50,850,true,19)
}