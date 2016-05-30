#include <GUIConstants.au3>
GUICreate("Clock", 210, 100)
$OK_Btn = GUICtrlCreateButton("Start", 10, 10, 70, 25)
$std = GUICtrlCreateInput ("Hours", 90,  10, 50, 25)
$min = GUICtrlCreateInput ("Min", 150,  10, 50, 25)
GuiCtrlCreateLabel(":", 142, 14, 5, 25)
$lab = GUICtrlCreateLabel("Time left: ", 10, 50, 200, 20)
$progressbar1 = GUICtrlCreateProgress (10,70,190,20)
GUISetState(@SW_SHOW)

While 1
    $msg = GUIGetMsg()

    Select

        Case $msg = $GUI_EVENT_CLOSE
            GUIDelete()
            Exit

        Case $msg = $OK_Btn
            if GUICtrlRead($OK_Btn) = "Start" Then
                $time = (StringIsDigit(GUICtrlRead($std)) Or StringIsFloat(GUICtrlRead($std)))* GUICtrlRead($std) * 3600
                $time += (StringIsDigit(GUICtrlRead($min)) Or StringIsFloat(GUICtrlRead($min))) * GUICtrlRead($min) * 60
                GUICtrlSetData ($OK_Btn,"Stop")
                $begin = TimerInit()
                While Int(TimerDiff($begin)/1000) <= $time
                    $Diffhour = Int($time/3600 - TimerDiff($begin)/3600000)
                    $Diffmin = Int(Mod($time/60 - TimerDiff($begin)/60000, 60))
                    $Diffsek = Int(Mod($time - TimerDiff($begin)/1000, 60))
                    GUICtrlSetData($lab, "Time Left: " & $Diffhour & " h " & $DiffMin & " min " & $Diffsek & " sec ")
                    GUICtrlSetData($progressbar1, (Int(TimerDiff($begin)/1000)/$time)*100)
                    if Int(TimerDiff($begin)/1000) = $time then
                        GUICtrlSetData($progressbar1, 100)
                        SoundPlay(@WindowsDir & "\Media\Tada.wav", 1)
                        GUICtrlSetData($progressbar1, 0)
                        GUICtrlSetData ($OK_Btn,"Start")
                        ContinueCase
                    EndIf
                    if GUIGetMsg() = $OK_Btn then
                        GUICtrlSetData($progressbar1, 0)
                        GUICtrlSetData ($OK_Btn,"Start")
                        ContinueCase
                    EndIf
                    Sleep(10)
                WEnd
            ElseIf GUICtrlRead($OK_Btn) = "Stop" Then
                GUICtrlSetData ($OK_Btn,"Start")
            EndIf

        Case @error

    EndSelect

WEnd
;~ lokiAliceCode