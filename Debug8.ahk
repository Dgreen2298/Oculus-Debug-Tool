Loop, 1
{
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    ; tt = AutoHotkey ahk_class CabinetWClass
    ; WinWait, %tt%
    ; IfWinNotActive, %tt%,, WinActivate, %tt%

    ; ControlClick, x93 y1844, %tt%,, Left  ; Click at coordinates (93, 1844) within the window 'tt'

    ; Start the Oculus Debug Tool in a hidden state
    Run, "C:\Program Files\Oculus\Support\oculus-diagnostics\OculusDebugTool.exe" ;,, Hide

    WinWait, Oculus Debug Tool  ; Wait for the Oculus Debug Tool window to appear
    WinActivate  ; Activate the Oculus Debug Tool window

    ControlClick, x732 y287, Oculus Debug Tool,, Left  ; Click at coordinates (732, 287) within the Oculus Debug Tool window

    Send, {Blind}1{vkBE}25
    
	Sleep, 125

    MouseClick, L, 1243, 625 
 	
	Sleep, 125

    MouseClick, L, 1243, 625 

    Sleep, 250

    MouseClick, L, 951, 750 

    Sleep, 250

    Send, {Blind}{Escape}

       ;ControlClick, x852 y603, Oculus Debug Tool,, Left  ; Click at coordinates (812, 767) within the Oculus Debug Tool window

       ;Send, {Up}{Esc} ; Selecting dropdown box up then escaping

    MsgBox, Activated Oculus Debug Tool Window

    ; ControlClick, x1180 y766, Oculus Debug Tool,, Left  ; Click at coordinates (1180, 766) within the Oculus Debug Tool window

    ; ControlClick, x976 y958, Oculus Debug Tool,, Left  ; Click at coordinates (976, 958) within the Oculus Debug Tool window

    ; ControlClick, x978 y29, Oculus Debug Tool,, Left  ; Click at coordinates (978, 29) within the Oculus Debug Tool window

    ; Close the Oculus Debug Tool
    WinMinimize, Oculus Debug Tool

    ; Insert a small delay here (e.g., 1000 milliseconds)
    Sleep 1000
}

; Insert another delay after the loop to give you a chance to regain control.
Sleep 1000
