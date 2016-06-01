#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>


$gui = GUICreate("Random number", 200, 100) ;tao gui chinh

;tao nhan se hien thi so vua tao
$label_num = GUICtrlCreateLabel("000", 20, 20, 160, 30)
;gan label dung font arial, size la 14
GUICtrlSetFont(-1, 14, 400, 0, "Arial")
;tao nut cap phat so ngau nhien
$button_gen = GUICtrlCreateButton("Generate random number",20, 50, 160, 30)

GUISetState() ;hien thi gui vua tao len man hinh

While 1 ;vong xu ly lap thong diep
	$msg = GUIGetMsg() ;ghi nhan su kien xay ra tren gui
	Switch $msg
		Case $GUI_EVENT_CLOSE ;neu nhan nut close hoac alt+f4
			ExitLoop
		Case $button_gen ;neu nhan nut cap phat thi tao so ngau nhien
			$num = Int(Random(-10^9, 10^9))
			;gan vao label de hien thi so vua cap phat
			GUICtrlSetData($label_num, $num)
	EndSwitch
WEnd

;Example 2

Example()

Func Example()
	Local $gui, $background, $pic, $basti_stay, $msg
	Local $sFile = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\AutoIt v3\AutoIt", "InstallDir") & "\Examples\GUI\logo4.gif"

	$gui = GUICreate("Background", 400, 100)
	;background picture
	$background = GUICtrlCreatePic(@DesktopDir & "\pic01.jpg", 0, 0, 400, 100)
	GUISetState(@SW_SHOW)

	;transparent MDI child window
	$pic = GUICreate("", 169, 68, 0, 0, $WS_POPUP, BitOR($WS_EX_LAYERED, $WS_EX_MDICHILD), $gui)
	;transparent pic
	$basti_stay = GUICtrlCreatePic($sFile, 0, 0, 169, 68)
	GUISetState(@SW_SHOW)

	Do
		$msg = GUIGetMsg()
	Until	$msg = $GUI_EVENT_CLOSE
EndFunc


