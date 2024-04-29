' Check if there are enough arguments
If WScript.Arguments.Count <> 2 Then
    WScript.Echo "Usage: message.vbs <title> <description>"
    WScript.Quit 1
End If

' Assign arguments to variables
Dim title, description
title = WScript.Arguments(0)
description = WScript.Arguments(1)

' Display message box
MsgBox description, vbExclamation, title