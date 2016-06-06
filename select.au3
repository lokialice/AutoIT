;Example 1

$s = 3
$n = 5

Select
	Case IsString($s)
		MsgBox(0, "msg", "$s la chuoi")
	Case $n<>0
		MsgBox(0, "msg", "$n la so khac 0")
	Case Else
		MsgBox(0, "msg", "$s khong la chuoi. $n khong la so")
EndSelect

;Example 2

$ver = @OSVersion
Select
	Case $ver = "WIN_2008"
		MsgBox(0, "Version", "Your OS is Win 2008")
	Case $ver = "WIN_VISTA"
		MsgBox(0, "Version", "Your OS is Win Vista")
	Case $ver = "WIN_2003"
		MsgBox(0, "Version", "Your OS is Win 2003")
	Case $ver = "WIN_XP"
		MsgBox(0, "Version", "Your OS is Win XP")
	Case $ver = "WIN_2000"
		MsgBox(0, "Version", "Your OS is Win 2000")
	Case Else
		MsgBox(0,"Version", "Your OS is Win 9x")
EndSelect