Switch @HOUR
	Case 6 To 11
		$msg = "Good Morning"
	Case 12 To 17
		$msg = "Good Afternoon"
	Case 18 To 21
		$msg = "Good Evening"
	Case Else
		$msg = "What are you doing now ?"
EndSwitch

MsgBox(0, Default, $msg)