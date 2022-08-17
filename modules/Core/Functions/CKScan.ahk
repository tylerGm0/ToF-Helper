CKScan(needle,c=0,variation=150) {
    p=% OutputPath
    f:="ScanFile_*.png"
    o=% ListLatestFile(p,f)
    VarStr := RegExReplace(o, "\d")
    VarInt := RegExReplace(o, "\D")
    Loop,1
    {
	    ;Tooltip,% VarStr VarInt
	    VarInt := Format("{:1}", VarInt+1)
    }
    if (VarInt<1) {
        VarInt:=0
    }
    file=% "output\scans\ScanFile_" VarInt ".png"
    pBitmap := Gdip_BitmapFromScreen(0 "|" 0 "|" ResX "|" ResY)
    Gdip_SaveBitmapToFile(pBitmap,file,100)
    bmpNeedle:=Gdip_CreateBitmapFromFile(needle)
    RET := Gdip_ImageSearch(pBitmap,bmpNeedle,L1,0,0,0,0,variation,,4,0)
    Gdip_DisposeImage(pBitmap)
    Gdip_DisposeImage(bmpNeedle)
    
    if (RET>0) {
        ItemLoc:=CKSplit(L1)
        IX := ItemLoc[1]
        IY := ItemLoc[2]
        MouseMove, IX, IY, 0
        Sleep,15
        if (c>0) {
            Click
            return
        } else {
            return %IX% . "," . %IY%
        }
    }
}

ListLatestFile(d,f) {
    myFolder=%d%%f%
    FileList :=
    Loop, Files, %myFolder%, F
    FileList = %FileList%%A_LoopFileTimeModified%`t%A_LoopFileFullPath%`n
	
    Sort, FileList, R

    LastModifTimeandFilePath := SubStr(FileList, 1, InStr(FileList,"`n")-1)
    stringIndex := InStr(LastModifTimeandFilePath, "`t") + 1
    LastModificationFilePath := SubStr(LastModifTimeandFilePath, stringIndex, StrLen(LastModifTimeandFilePath))
    return %LastModificationFilePath%
}