_Main()

Func _Main()
	HotKeySet("{ESC}", "_Quit")         ; press ESC to exit


	While 1
		$pos = MouseGetPos();
		ToolTip("Mouse:"& $pos[0]&"."&$pos[1])
		Sleep(10)
	WEnd
EndFunc ;==> _Main

Func _Quit()
	Exit
EndFunc ;==> _Quit