#include <GUIConstantsEx.au3>

Opt('MustDeclareVars', 1)

Example()

Func Example()
	Local $widthCell, $msg, $iOldOpt

	; will create a dialog box that when displayed is centered
	GUICreate("My GUI")

	GUISetHelp("notepad") ; will run notepad F1 is typed
	$iOldOpt = Opt("GUICoordMode", 2)

	$widthCell = 70
	GUICtrlCreateLabel("Line 1 Cell 1", 10, 30, $widthCell) ; first cell 70 width
	GUICtrlCreateLabel("Line 2 Cell 2", -1, 0) ; next line
	GUICtrlCreateLabel("Line 3 Cell 3", 0 , 0) ; next line and next cell
	GUICtrlCreateLabel("Line 4 Cell 1", 1 * $widthCell, 0) ; next line Cell1

	GUISetState() ; will display an empty dialog box

	; run the GUI until the dialog is closed

	Do
		$msg = GUIGetMsg()
	Until $msg = $GUI_EVENT_CLOSE

	$iOldOpt = Opt("GUICoordMode", $iOldOpt)
EndFunc ; => Example
