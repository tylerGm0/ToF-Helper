TakeBitmap(x,y,w,h,file:="default.png") {
    pBitmap1 := Gdip_BitmapFromScreen(x "|" y "|" w "|" h)
    Gdip_SaveBitmapToFile(pBitmap1,file,100)
    Gdip_DisposeImage(pBitmap1)
}

TakeBitmap:
    ;TakeBitmap(996,738,250,35)
    ;TakeBitmap(1314,1006,250,35)
    ;TakeBitmap(1832,30,35,35)
    ;TakeBitmap(1013,860,300,35)
    ;TakeBitmap(1474,1000,175,35)
    ;TakeBitmap(1766,188,25,25)
    ;TakeBitmap(2890,1328,280,65,"4K_BTN_Purchase.png") ; Purchase Button LOC
    ;TakeBitmap(1775,980,335,65,"4K_BTN_BluePurchase.png") ; Purchase Button BLUE LOC
    ;TakeBitmap(2145,819,36,36,"4K_BTN_PurchasePlus.png") ; Purchase Menu + Button
    ;TakeBitmap(2926,650,42,45,"4K_Lock_Closed.png")
    ;TakeBitmap(2926,650,25,25,"4K_Lock_Opened.png")
    ;TakeBitmap(2793,1118,75,68,"4K_Refine_AddMaterial.png")
    ;TakeBitmap(2903,1341,33,37,"BTN_Claim.png")
    ;TakeBitmap(3037,1003,180,40,"BTN_AutoAdd.png")
    ;TakeBitmap(2870,1327,325,60,"BTN_Enhance.png")
    ;TakeBitmap(1513,1079,325,60,"BTN_Confirm.png")
    ;TakeBitmap(1285,790,28,38,"BTN_Teleport.png")
    ;TakeBitmap(1767,213,42,45,"2K_Lock_Closed.png")
    ;TakeBitmap(1767,213,25,28,"2K_Lock_Opened.png")
    ;TakeBitmap(1740,427,25,28,"2K_Lock_Opened.png")
    ;TakeBitmap(1010,850,325,50,"Default.png") ; Submit Button
    ;TakeBitmap(1475,1000,175,35,"BTN_Give.png") ; Give Button
    CKTooltip("Bitmap Completed")
return