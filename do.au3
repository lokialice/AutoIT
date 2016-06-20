Global $n, $count=0, $sum=0
Do
	$n = InputBox("Get Data", "Please enter a number." &@CRLF & "If number is zero, stop entering data")
	$sum += $n
	$count += 1
Until $n = 0
$count -= 1 ; bo qua lan nhap so 0
MsgBox(0, "Result","Avarage of sum : " & $sum/$count)


