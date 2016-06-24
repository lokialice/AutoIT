Hi("Marry")

$nick = "Lovely Cat"

Hi($nick)

Func Hi($name)
	$greeting = "Hello, " & $name &". Have a nice day"
	MsgBox(0, "Hi", $greeting)
EndFunc


;BYREF

$var1 = 100
$var2 = 50

MsgBox(0, "Orginal", "Orginal Value: $var1 = " & $var1 & " --- $var2 = " & $var2 )
_Swap($var1, $var2)
MsgBox(0, "Modified", "Modified Value: $var1 = " & $var1 & " --- $var2 = " & $var2 )


Func _Swap(ByRef $a, ByRef $b)
	$temp = $a
	$a = $b
	$b = $temp
EndFunc

;Default

WinMove("[active]","",Default,Default, 200, 300) ;just resize the active window (no move)
MyFunc2(Default,Default)

Func MyFunc2($param1 = Default, $param2 = 'Two', $param3 = Default)
	If $param1 = Default Then $param1 = 'One'
	If $param3 = Default Then $param3 = 'Three'

	MsgBox(0, 'Params', '1 = ' & $Param1 & @LF & '2 = ' & $Param2 & @LF & '_3 = ' & $Param3)


EndFunc
