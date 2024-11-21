$filePath = ".\src\powershell_command.ps1"
$inner_command = Get-Content -Path $filePath -Raw

$bytes = [System.Text.Encoding]::Unicode.GetBytes($inner_command)
$encodedInnerCommand = [Convert]::ToBase64String($bytes)

$powershell_command = 'powershell.exe -NoProfile -ExecutionPolicy Bypass -EncodedCommand ' + $encodedInnerCommand

$bytes = [System.Text.Encoding]::Unicode.GetBytes($powershell_command)
$encodedPowershellCommand = [Convert]::ToBase64String($bytes)

Write-Output $encodedPowershellCommand