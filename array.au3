;~ Dim $maxtrix[2][3]

;~ $maxtrix[0][0] = 3
;~ $maxtrix[0][1] = 3
;~ $maxtrix[0][2] = 3
;~ $maxtrix[1][0] = 3
;~ $maxtrix[1][1] = 3
;~ $maxtrix[1][2] = 3

;~ $n = $maxtrix[0][1]

;~ ;create array

;~ Dim $array[5] = [10, 20, 30, 40, 50]
;~ Local $test[4] = ["a", "hello", 500, 4.55]
;~ Global $Grid[2][3] = [["sun", "moon", "earth"], [1000, cos(0), sqrt(900)]

;get length of array

Dim $myArray[10][20]

$rows = UBound($myArray)
$cols = UBound($myArray, 2)
$dims = UBound($myArray, 0)

$info = "This Array has " & $dims & " dimension(s) : " &@CRLF & $rows & " rows, " & $cols & " columns"
MsgBox(0, "Msg of Array", $info)



