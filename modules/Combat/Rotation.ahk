Fire(what:=0) {
    if (what==0) {
        Send {LButton Down}
        Sleep,15
        Send {LButton Up}
    }
    if (what==1) {
        Send {1}
    }
    if (what==2) {
        Send {2}
    }
    if (what==3) {
        Send {3}
    }
    if (what=="heavy") {
        Send {LButton Down}
        Sleep,15
        Send {LButton Up}
        Sleep,150
        Send {LButton Down}
        Sleep,500
        Send {LButton Up}
        Sleep,15
    }
}
return

StartRotation()
{
    global Rotation:=1
    if (Rotation) {
        global _start = A_TickCount
        SetTimer, Rotation, 75
    }
}
return

StopRotation()
{
    global Rotation:=0
    if (!Rotation) {
        global _start = 0
        Send {LButton Up}
        SetTimer, Rotation, OFF
    }
}
return

~LButton::StartRotation()
~LButton Up::StopRotation()

AutoRotation:
    Auto("ROTATION")
return

Rotation:
    elapsed := A_TickCount - _start
    if (GIROT) {
        if (elapsed>450) {
            if (UseExtras) {
                if (Use1) {
                    Fire(1)
                }
                if (Use2) {
                    Fire(2)
                }
                if (Use3) {
                    Fire(3)
                }
            }
            Fire(0)
        }
    }
return

BaseAttack:
    if (UseExtras) {
        if (Use1) {
            Fire(1)
        }
        if (Use2) {
            Fire(2)
        }
        if (Use3) {
            Fire(3)
        }
    }
    Fire(0)
return

HeavyAttack:
    Fire("heavy")
return

AerialAttacK:
return