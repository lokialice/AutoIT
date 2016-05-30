$n = 101
If Mod($n, 2)=0 Then
	MsgBox(0, "Ket qua ", $n & " la so chan")
Else
	MsgBox(0, "Ket qua ", $n & " la so le")
EndIf


$m = 1010

If Mod($m, 2)=0 Then
	If 100<=$m And $m<=999 Then
		MsgBox(0, "Ket qua ", $m & " la so chan co 3 chu so")
	Else
		MsgBox(0, "Ket qua ", $m & " la so chan khong phai 3 chu so")
	EndIf
Else
	If 100<=$m And $m<=999 Then
		MsgBox(0, "Ket qua ", $m & " la so le co 3 chu so")
	Else
		MsgBox(0, "Ket qua ", $m & " la so le khong phai 3 chu so")
	EndIf
EndIf

Dim $var = '-5'
If $var > 0 Then
	MsgBox(4096,"Alert", "Value is positive")
ElseIf $var < 0 Then
	MsgBox(4096,"Alert", " Value is negative")
Else
	If StringIsXDigit ($var) Then
		MsgBox(4096,"Alert", "Value might be hexadecimal!")
	Else
		MsgBox(4096,"Alert", "Value is either a string or is zero")
	EndIf
EndIf

Dim $a=0, $b=2, $c=0

If ($a>0 And $b>0) Or $c=0 Then	MsgBox(0,"msg", "Thong diep 1")
If $a>0 And ($b>0 Or $c=0) Then MsgBox(0,"msg", "Thong diep 2")