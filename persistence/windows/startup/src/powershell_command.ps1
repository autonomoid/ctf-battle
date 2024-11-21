$shortcut = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\MicrosoftDefenderUpdate.lnk"
$target = "C:\Windows\System32\notepad.exe"
$wshell = New-Object -ComObject WScript.Shell
$shortcutObj = $wshell.CreateShortcut($shortcut)
$shortcutObj.TargetPath = $target
$shortcutObj.Save()

# %ProgramData%\Microsoft\Windows\Start Menu\Programs\Startup