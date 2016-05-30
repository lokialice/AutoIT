Run("notepad.exe")
WinWaitActive("Untitled - Notepad")
Send("Chim To Qua Ha")
WinClose("Untitled - Notepad")
WinWaitActive("Notepad", "Save")
;WinWaitActive("Notepad", "Do you want to save") ; When running under Windows XP
Send("!n")