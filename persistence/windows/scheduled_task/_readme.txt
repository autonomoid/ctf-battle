# Objective
* Create a scheduled task that runs every X minutes indefinitely.

# Files
## powershell_command.ps1 
* Contains the PowerShell logic for creating the scheduled task.

## b64_powershell_wrapper.ps1
* Base64 encodes the PowerShell command in powershell_command.ps1.
* Wraps the result in Powershell.exe command with the "-EncodedCommand" option.
* Base64 encodes the final result.

## b64_command_runner.vbs
* Decode a base64-encoded command and runs it silently via Windows Script Host.

# Notes
* You have to manully copy and paste the output of b64_powershell_wrapper into b64_command_runner.vbs.
* You have to places "notepad.exe" in powershell_command.ps1 with whatever you need the task to launch.
* For operational use rename b64_command_runner.vbs to something less conspiculous.