#include <GUIConstantsEx.au3>

Opt('MustDeclareVars',1)

Example()

Func Example()
	Local $button_1, $button_2, $msg
	GUICreate("My GUI Button") ; will create a dialog box that when displayed is centered

	Opt("GUICoordMode", 2)
	$button_1 = GUICtrlCreateButton("Run Notepad", 10, 30, 100)
	$button_2 = GUICtrlCreateButton("Button Test", 0, -1)

	GUISetState() ; will display an dialog with 2 button

	;run the GUI until the dialog is closed
	While 1
		$msg = GUIGetMsg()
		Select
			Case $msg = $GUI_EVENT_CLOSE
				ExitLoop
			Case $msg = $button_1
				Run("notepad.exe") ; will Run/Open notepad
			Case $msg = $button_2
				MsgBox(0, 'Testing', 'Button 2 was pressed') ; will demonstrate Button 2 being pressed
		EndSelect
	WEnd
EndFunc ;==>Example