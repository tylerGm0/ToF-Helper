PurchaseMax:
    MouseGetPos, mx, my
    CKClick(mx,my,1,0,150) ; Click Item You Are Hovering over
    CKClick(1756,814,1,0,50) ; Click Max Purchase Area
    CKClick(1535,955,1,0,50) ; Click Blue Purchase Button
    MouseMove, %mx%, %my%, 0
return

Purchase:
    MouseGetPos, mx, my
    CKClick(mx,my,1,0,150) ; Click Item You Are Hovering over
    CKClick(1535,955,1,0,50) ; Click Blue Purchase Button
    MouseMove, %mx%, %my%, 0
return