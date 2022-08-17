#SingleInstance force
#MaxHotkeysPerInterval, 1000
#InstallKeybdHook
;#Warn

SetWorkingDir, %A_ScriptDir%

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
CoordMode, Tooltip, Screen
SetBatchLines, -1
SetKeyDelay, 0
SetMouseDelay, 0
SetTitleMatchMode, 2

;region 3RD Party -> Libraries
#Include, lib\Gdip_All.ahk
#Include, lib\Gdip_ImageSearch.ahk
#Include, lib\PaddleOCR\PaddleOCR.ahk
#Include, lib\VA.ahk
#Include, lib\GeekDude_Volume.ahk
#Include, lib\CKVolume.ahk
#Include, lib\String.ahk
#Include, lib\Print.ahk
#Include, lib\Morse.ahk
;endregion

pToken := Gdip_Startup()

;region Modules -> Core -- Data/Functions/Configs/GDI
#Include, modules/Core/Data/Configs.ahk
#Include, modules/Core/Functions/CKClick.ahk
#Include, modules/Core/Functions/CKScan.ahk
#Include, modules/Core/Functions/CKSplit.ahk
#Include, modules/Core/Functions/CKSuspend.ahk
#Include, modules/Core/Functions/CKTooltip.ahk
#Include, modules/Core/Functions/CKWait.ahk
#Include, modules/Core/Functions/InMenu.ahk
#Include, modules/Core/Functions/OpenMenu.ahk
#Include, modules/Core/HotKeys/Functions.ahk
#Include, modules/Core/HotKeys/KeyConfigs.ahk
#Include, modules/Core/HotKeys/Menus.ahk
#Include, modules/Core/GDI/TakeBitmap.ahk
#Include, modules/Core/Functions/Auto.ahk

;endregion

;region Modules -> Auto -- Automation Controls
#Include, modules/Auto/Movement.ahk
#Include, modules/Auto/Loot.ahk
;endregion

;region Modules -> Combat -- Combat Tactics and Rotations
#Include, modules/Combat/Base.ahk
#Include, modules/Combat/Rotation.ahk
;endregion

;region Modules -> Easy -- Quality of Life Improvements
#Include, modules/Easy/Climb.ahk
#Include, modules/Easy/ConfigSet.ahk
#Include, modules/Easy/Decipher.ahk
#Include, modules/Easy/Food.ahk
#Include, modules/Easy/Purchase.ahk
#Include, modules/Easy/Skip.ahk
#Include, modules/Easy/SwitchSet.ahk
#Include, modules/Easy/SpaceRift.ahk
;endregion

;region ToolTips
#Include, modules/Core/System/Tooltips.ahk
;endregion

;region Modules -> System -- Internal Utility / Handles
#Include, modules/Core/System/Utility.ahk
#Include, modules/Core/System/Handle.ahk
#Include, modules/Core/System/Keys.ahk
;endregion

;region Modules -> Combat -- Handles Combat Functionality
#Include, modules/Combat/Rotation.ahk
;endregion

;region Modules -> System -> Volume
#Include, modules/Core/System/Volume.ahk
;endregion