Weeklies:
    if (!(InMenu("MenuItems"))) {
        OpenMenu("Main")
    }
return

Recommended:
    if (!(InMenu("MenuItems"))) {
        OpenMenu("Main")
    }
    CKClick(200,350,1)
return

Select:
    if (!(InMenu("MenuItems"))) {
        OpenMenu("Main")
    }
    CKClick(200,450,1)
return

Challenge:
    if (!(InMenu("MenuItems"))) {
        OpenMenu("Main")
    }
    CKClick(200,550,1)
return

SpecialOrders:
    if (!(InMenu("MenuItems"))) {
        if (!(InMenu("EscMenu"))) {
            OpenMenu("SpecialOrders")
        }
    }
return