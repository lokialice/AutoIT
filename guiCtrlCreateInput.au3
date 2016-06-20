#include <GUIConstantsEx.au3>

Opt("MustDeclareVars",1)

Example()

Func Example()
	Local $file, $btn, $msg

	GUICreate(" My GUI Input acceptfile", 320, 120, @DesktopCommonDir / 2 - 160, @DesktopHeight / 2 - 45, -1, 0x00000018) ;WS_EX_ACCEPTFILE
	$file = GUICtrlCreateInput("", 10, 5, 300, 20)
	GUICtrlSetState(-1, $GUI_DROPACCEPTED)
	GUICtrlCreateInput("", 10, 35, 300, 20) ; will not accept drag&drop files
	$btn = GUICtrlCreateButton("Ok", 40, 75, 60, 20)

	GUISetState()

	$msg = 0

	While $msg <> $GUI_EVENT_CLOSE
		$msg = GUIGetMsg()
		Select
			Case $msg = $btn
				ExitLoop
		EndSelect
	WEnd

	MsgBox(4096," Drag drop files", GUICtrlRead($file))
EndFunc ; => Example