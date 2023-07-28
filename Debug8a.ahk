; Check if the Oculus Debug Tool is running
if (ProcessExist("OculusDebugTool.exe")) {
    MsgBox, Oculus Debug Tool is running.
    ExitApp  ; Terminate the script
}

Loop, 1
{
    SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    ; Start the Oculus Debug Tool in a hidden state or I like to see my icon inthe bottom bar if you want it hidden just remove  ";" after "s\OculusDebugTool.exe"" 
    Run, "C:\Program Files\Oculus\Support\oculus-diagnostics\OculusDebugTool.exe" ;,, Hide

    WinWait, Oculus Debug Tool  ; Wait for the Oculus Debug Tool window to appear
    WinActivate  ; Activate the Oculus Debug Tool window

    ControlClick, x732 y287, Oculus Debug Tool,, Left  ; Click at coordinates (732, 287) within the Oculus Debug Tool window

    Send, {Blind}1{vkBE}25

    Sleep, 250  ; Added sleep as they are needed or else script wont work correctly

    ControlClick, x852 y603, Oculus Debug Tool,, Left  ; Click at coordinates (812, 767) within the Oculus Debug Tool window

    Sleep, 250  ; Added sleep as they are needed or else script wont work correctly
 
    Send {Down 2}{Esc} ; Selecting dropdown box up then escaping ONLY WORKS AS OCULUS DEB TOOL IS SET TO AUTO EVERY TIME YOU START IT

     ; MsgBox, Activated Oculus Debug Tool Window

       ; Close the Oculus Debug Tool
    WinMinimize, Oculus Debug Tool

    ; Insert a small delay here (e.g., 1000 milliseconds)
    Sleep 1000
}

; Insert another delay after the loop to give you a chance to regain control.
Sleep 1000

ProcessExist(Name) {
    Process, Exist, %Name%
    return ErrorLevel
}
