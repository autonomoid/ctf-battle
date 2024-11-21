# Objective
* Create a scheduled task that runs every X minutes indefinitely.

# Execution Notes
* Replace "notepad.exe" in do_this.txt with whatever you need the scheduled task to launch.
* Run .\build.ps1 to create output.vbs.
* The output file is called "msdefender_updater_v1.0.3.vbs".
* To launch the output file open an elevated command prompt and use 'wscript.exe msdefender_updater_v1.0.3.vbs'.
* To verfiy it was successful, open Task Scheduler from the Start menu. Look for a task called "MicrosoftDefenderUpdate".

# Files
## do_this.txt
* Contains the command you want to scheduled task to run.

## powershell_command_template.ps1 
* Contains the PowerShell logic for creating the scheduled task.

## b64_powershell_wrapper.ps1
* Base64 encodes the PowerShell command in powershell_command.ps1.
* Wraps the result in Powershell.exe command with the "-EncodedCommand" option.
* Base64 encodes the final result.

## b64_command_runner.vbs
* Decode a base64-encoded command and runs it silently via Windows Script Host.

## build.ps1
* Replaces {{PLACEHOLDER}} in powershell_command_template.vbs with the contents of do_this.ps1.
* Replaces {{PLACEHOLDER}} in b64_command_runner_template.vbs with the output from b64_powershell_wrapper.ps1.

# Design Notes
* When a PowerShell command is executed through wscript.exe, PowerShell execution policies are bypassed.

* Executing PowerShell through VBScript avoids direct command-line logging in Windows Event Logs (Event ID 4688 or 4104). When powershell.exe is invoked directly, 4688 logs will capture the full command line, including suspicious parameters like:

    powershell.exe -NoProfile -ExecutionPolicy Bypass -EncodedCommand VwByAGkAdABlAC0ATwB1AHQAcAB1AHQlAGQAIgA=

* When PowerShell is executed through wscript.exe, 4688 logs the creation of the wscript.exe process instead of powershell.exe. The command-line arguments passed to wscript.exe might not include the PowerShell command explicitly; instead, they look benign, such as:

    wscript.exe C:\path\to\script.vbs

* When a PowerShell script or command is run directly, 4104 logs capture the content of the script, including:

    Inline commands.
    Decoded Base64 commands.

* PowerShell's script block logging only activates if the script or command is processed directly by powershell.exe.

* VBScript can be embedded into Office macros or delivered as .vbs files.