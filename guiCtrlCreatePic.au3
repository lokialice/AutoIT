#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

Opt ('MustDeclareVars', 1)
Global $gui, $guiPos, $pic, $picPos, $WS_EX_MIDCHILD

Example1()
Example2()

; ---Example 1-----

Func Example1()
	Local $n, $msg

	GUICreate("My GUI Picture", 1024, 720, -1, -1, $WS_SIZEBOX + $WS_SYSMENU) ; will create a dialog box that when displayed is created

	GUISetBkColor(0xE0FFFF)
	$n = GUICtrlCreatePic(@DesktopDir & "\gai.jpg", 25, 25, 512, 342)

	GUISetState()

	; Run the GUI until the dialog is closed

	While 1
		$msg = GUIGetMsg()
		If $msg = $GUI_EVENT_CLOSE Then ExitLoop
	WEnd

	; GUISetState
		; resize the control

		$n = GUICtrlSetPos($n, 25, 25, 720, 360)
		; Run the GUI until the dialog is closed
		While 1
			$msg = GUIGetMsg()
			If $msg = $GUI_EVENT_CLOSE Then ExitLoop
		WEnd

		GUIDelete()
EndFunc

; Example 2

Func Example2()
	Local $msg

	$gui = GUICreate("test transparentpic",1024,720, -1)
	$pic = GUICreate("",512, 341, 10, 10, $WS_POPUP, BitOR($WS_EX_LAYERED, $WS_EX_MIDCHILD), $gui)
	GUICtrlCreatePic(@DesktopDir & "\gai1.jpg",0, 0, 0, 0, -1, $GUI_WS_EX_PARENTDRAG)
		GUISetState(@SW_SHOW, $gui)
		GUISetState(@SW_SHOW, $pic)

	HotKeySet("{ESC}", "main")
	HotKeySet("{LEFT}", "left")
	HotKeySet("{RIGHT}", "right")
	HotKeySet("{DOWN}", "down")
	HotKeySet("{UP}", "up")

	$picPos = WinGetPos($pic)
	$guiPos = WinGetPos($gui)

	Do
		$msg = GUIGetMsg()
	Until $msg = $GUI_EVENT_CLOSE
EndFunc ; => Example 2

Func main()
	$guiPos = WinGetPos($gui)
	WinMove($gui, "", $guiPos[0] + 10, $guiPos[1] + 10)
EndFunc

Func left()
	$picPos = WinGetPos($pic)
	WinMove($pic, "",$picPos[0] - 10, $picPos[1])
EndFunc

Func right()
	$picPos = WinGetPos($pic)
	WinMove($pic, "", $picPos[0] + 10, $picPos[1])
EndFunc

Func down()
	$picPos = WinGetPos($pic)
	WinMove($pic, "", $picPos[0], $picPos[1] + 10)
EndFunc

Func up()
	$picPos = WinGetPos($pic)
	WinMove($pic, "", $picPos[0], $picPos[1] - 10)
EndFunc

;Example 3 PNG work araund by Zedna

#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <GDIPlus.au3>
#include <WinAPI.au3>

Global $hGUI, $hImage, $hGraphics, $hImage1

; Create GUI

$hGUI = GUICreate("Show PNG", 350, 301)

; Load PNG Image

_GDIPlus_Startup()
$hImage = _GDIPlus_ImageLoadFromFile("Desktop\gai3.jpg")
$hGraphics = _GDIPlus_GraphicsCreateFromHWND($hGUI)

GUIRegisterMsg($WS_PAINT, "MY_WM_PAINT")
GUISetState()


; Loop until user exits

Do
Until GUIGetMsg() = $GUI_EVENT_CLOSE

; Clean up resource

_GDIPlus_GraphicsDispose($hGraphics)
_GDIPlus_ImageDispose($hImage)
_GDIPlus_Shutdown()

; Draw PNG Image
Func MY_WM_PAINT($hWnd, $msg, $wParam, $lParam)
	_WinAPI_RedrawWindow($hGUI, 0, 0 , $RDW_UPDAte




