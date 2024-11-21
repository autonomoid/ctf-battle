$process = Get-Process -Name explorer
$payload = [System.IO.File]::ReadAllBytes("C:\Path\To\Payload.dll")
[System.Runtime.InteropServices.Marshal]::Copy($payload, 0, [System.IntPtr]::Zero, $payload.Length)
