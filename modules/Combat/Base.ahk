$F13::
{
    global UseExtras:=!UseExtras
    SM:=% UseExtras ? "ON":"OFF"
    CKTooltip("Use Extras: " . SM)
}
return

$F14::
{
    global Use1:=!Use1
    SM:=% Use1 ? "ON":"OFF"
    CKTooltip("Use 1: " . SM)
}
return

$F15::
{
    global Use2:=!Use2
    SM:=% Use2 ? "ON":"OFF"
    CKTooltip("Use 2: " . SM)
}
return

$F16::
{
    global Use3:=!Use3
    SM:=% Use3 ? "ON":"OFF"
    CKTooltip("Use 3: " . SM)
}
return

$F17::
{
    global UseMode:=!UseMode
    if (!UseMode) {
        global Use1:=False
        global Use2:=False
        global Use3:=False
    } else {
        global Use1:=True
        global Use2:=True
        global Use3:=True
    }
    SM1:=% Use1 ? "ON":"OFF"
    SM2:=% Use2 ? "ON":"OFF"
    SM3:=% Use3 ? "ON":"OFF"
    SM:=% "Use1: " SM1 "`nUse2: " SM2 "`nUse3: " SM3
    CKTooltip(SM)
}
return