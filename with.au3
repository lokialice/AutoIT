; code using object general

$object  = ObjCreate("InternetExplorer.Application.1")
$object.Visible = 1
$object.Height = 768
$object.Width = 1024
$object.Navigate("http://www.google.com")

; code using With..EndWith

$object = ObjCreate("InternetExplorer.Application.1")
With $object
	.Visible = 1
	.Height = 768
	.Width = 1024
	.Navigate("http://www.google.com/")
EndWith