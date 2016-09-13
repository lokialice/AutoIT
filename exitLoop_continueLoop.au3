 $sum = 0
 While 1 ;use infinite loop since ExitLoop will get called
 	$ans = InputBox("Running sum =" & $sum, "  Enter a positive number. (A negative exits)")
 	If $ans < 0 Then ExitLoop
 	$sum = $sum + $ans
 WEnd
MsgBox(0,"The sum was", $sum)


$i = 1
While $i <= 2 ;loop level 2
	For $j = 1 To 5 ;loop level 1
		If $j=3 Then ExitLoop
		MsgBox(0,"msg", "$i = " & $i & "   $j = " & $j)
	Next
	$i += 1
WEnd

For $i=1 To 4
	If $i=2 Then ContinueLoop
	MsgBox(0, "Message", "$i = " & $i)
Next