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


$mainWindow = GUICreate("Hello World", 200, 100)
GUICtrlCreateLabel("Hello! How are you?", 30, 10)
$okButton = GUICtrlCreateButton("OK", 70, 50, 60)

$dummywindow = GUICreate("Dummy window for testing", 200, 100, -1, 100)
GUISetState(@SW_SHOW, $dummywindow)

GUISwitch($mainWindow)
GUISetState()

While 1
	$msg = GUIGetMsg(1)

	Select
		Case $msg[0] = $okButton
			MsgBox(0, "GUI EVENT", " You pressed OK!")

		Case $msg[0] = $GUI_EVENT_CLOSE And $msg[1] = $mainWindow
			MsgBox(0, "GUI EVENT", "You clicked Close on the Main Window! Exiting...")
		ExitLoop
	EndSelect
WEnd