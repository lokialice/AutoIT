$str = "abc"

$new_str = _RepeatText($str, 10, "")
MsgBox(0,"_RepeatText 1", "Source : " & $str & @CRLF & "New string : " & $new_str)

$str = "Love"
$new_str = _RepeatText($str, 5, " - ") ;ngan cach chuoi bang " - "
MsgBox(0, "_RepeatText 2", "Source : " & $str & @CRLF & "New String : " & $new_str)

Func _RepeatText($string, $how_many, $delim)
	;$string se chua chuoi du kien duoc truyen tu ngoai vao
	;$how_many cho biet se lap lai bao nhieu lan
	;$delim chi dinh ky tu nao dung de ngan cach giua hai chuoi duoc lap lai
	Local $Rep_str = ""
	For $i=1 To $how_many
		$Rep_str &= $string & $delim
	Next

	Return $Rep_str
EndFunc
