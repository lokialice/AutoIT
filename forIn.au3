$oShell = ObjCreate("shell.application")
$oShellWindows = $oShell.windows

If IsObj($oShellWindows) Then
	$String = ""
	For $Window in $oShellWindows
		$String = $String & $Window.LocationName & @CRLF
	Next

	MsgBox(0, "", "You have the following windows open: " & @CRLF & $String)

Else
	MsgBox(0, "", " You have no open shell windows.")
EndIf