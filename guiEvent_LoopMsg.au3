#include <GUIConstantsEx.au3>

GUICreate("Hello World",200,100)
GUICtrlCreateLabel("Hello! How are you?", 30, 10)
$okButton = GUICtrlCreateButton("OK", 70, 50, 60)
GUISetState(@SW_SHOW)

While 1
	$msg = GUIGetMsg()

	Select
		Case $msg = $okButton
			MsgBox(0, "GUI EVENT", "You pressed OK!")
		Case $msg = $GUI_EVENT_CLOSE
			MsgBox(0, "GUI EVENT", "You clicked Close! Exiting...")
		ExitLoop
	EndSelect
WEnd
