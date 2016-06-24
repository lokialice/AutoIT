Global $m = "Hello world"

MsgBox(0, "MSG", $m)
_RepText()
MsgBox(0, "MSG", $m)

;define func
Func _RepText()
	$m &= ", " &$m
EndFunc

Global $explore = "Explore " & @WindowsDir
function()
Run($explore)

Func function()
	Dim $explore = "Explore " & @TempDir
EndFunc

Const $pi = 3.14
Local $text = "Hello"
Global Const $e = exp(1)