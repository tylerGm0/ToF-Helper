; Folders
global op:="output\", np:="needles\"
global Resolution:="2K" ; UWD = UltraWide / 4K = 4K / 2K = Any resolution in the 2K (1920x1080 example) Range.
global Filter:="MGGI" ; Filter You are Using -- Corresponds to the Folder your Filters are placed under.
global NeedlePath:="needles\" . Filter  . "\" . Resolution . "\"
global ButtonPath:=NeedlePath . "Buttons\"
global LockPath:=NeedlePath . "Lock\"
global Res:="1920,1080"
ResTMP:=CKSplit(Res)
global ResX:=ResTMP[1], ResY:=ResTMP[2]
global OutputPath:=% A_ScriptDir "\output\"

;region Data Configs -> Colors
global MenuColors := ["0x1E2B48", "0x1E2A47", "0x47B6F9", "0x4BB8FD"]
global AltMenuColors := ["0xE74747"]
;endregion