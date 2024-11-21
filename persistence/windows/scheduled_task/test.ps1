$filePath = ".\do_this.txt"
$inner_command = Get-Content -Path $filePath -Raw

$bytes = [System.Text.Encoding]::Unicode.GetBytes($inner_command)
$encodedInnerCommand = [Convert]::ToBase64String($bytes)

Write-Output $encodedInnerCommand