param (
    [string]$Version = "0.0.0.1"
)

Write-Host $Version
$MyDir = Split-Path $MyInvocation.MyCommand.Definition
$NuGetExe = "$MyDir\tmp\nuget.exe"

New-Item $MyDir\tmp -type directory -force

if ((Test-Path $NuGetExe) -eq $false) {(New-Object System.Net.WebClient).DownloadFile('http://nuget.org/nuget.exe', $NuGetExe)}

& $NuGetExe install psake -OutputDirectory $MyDir\tmp\packages -Version 4.4.1

if((Get-Module psake) -eq $null)
{
    Import-Module $MyDir\tmp\packages\psake.4.4.1\tools\psake.psm1
}

$psake.use_exit_on_error = $true
Invoke-psake -buildFile $MyDir'.\Default.ps1' -parameters @{"Version"=$Version}

if ($psake.build_success -eq $false) { exit 1 } else { exit 0 }
