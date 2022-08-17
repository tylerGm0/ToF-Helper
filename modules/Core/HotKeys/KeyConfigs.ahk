MH := [{"$!f":"AutoLoot"
    , "$!r":"AutoRotation"
    , "$p":"PurchaseMax"
    , "$+p":"Purchase"
    , "$!d":"Decipher"
    , "$+d":"PerfectDecipher"
    , "$+f":"ForcedDecipher"
    , "$+r":"Return"
    , "$x":"SkipOther"
    , "$+x":"SkipOther2"
    , "$+t":"EasyRift"
    , "$MButton":"SpaceRift"
    , "$Numpad1":"SwitchSetWeapon"
    , "$Numpad2":"SwitchSetWeapon"
    , "$Numpad3":"SwitchSetWeapon"
    , "$Numpad4":"ConfigSetRelic"
    , "$Numpad5":"ConfigSetRelic"
    , "$Numpad6":"ConfigSetRelic"
    , "$Numpad7":"InfiniteClimbAlternate"
    , "$Numpad8":"InfiniteClimb"
    , "$4":"BaseAttack"
    , "$5":"HeavyAttack"
    , "$6":"AerialAttack"
    , "$F1":"Weeklies"
    , "$F2":"Recommended"
    , "$F3":"Select"
    , "$F4":"Challenge"
    , "$F5":"SpecialOrders"
    , "$^g":"SatietyFill"
    , "$!b":"TakeBitmap"}]

MainHotkeys:=MH.1
for key, mapping in MainHotkeys {
    Hotkey, IfWinActive, ahk_exe QRSL.exe
    Hotkey, % key, % mapping
}
return