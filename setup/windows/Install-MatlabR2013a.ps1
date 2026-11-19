<#
.SYNOPSIS
  Silent install of MATLAB R2013a (64-bit Windows) for Kinarm Dexterit-E 3.5 task development.
.NOTES
  Run in an elevated PowerShell on the Windows build machine.
  Needs: the Windows ISO (R2013a_Windows.iso, NOT R2013a_UNIX.iso) and
         installer_input.local.txt with fileInstallationKey and licensePath filled in.
#>
param(
    [Parameter(Mandatory)] [string] $IsoPath,
    [string] $InputFile = (Join-Path $PSScriptRoot 'installer_input.local.txt')
)
$ErrorActionPreference = 'Stop'

if (-not (Test-Path $IsoPath))   { throw "ISO not found: $IsoPath" }
if (-not (Test-Path $InputFile)) { throw "Fill in installer_input.local.txt first (copy from installer_input.txt)." }
if ((Get-Content $InputFile) -match '^fileInstallationKey=\s*$') { throw "fileInstallationKey is empty in $InputFile" }
$lic = (Get-Content $InputFile | Where-Object { $_ -match '^licensePath=' }) -replace '^licensePath=',''
if (-not (Test-Path $lic)) { throw "License file not found at $lic (download it from the MathWorks License Center for this machine's host ID)." }
if ([Environment]::Is64BitOperatingSystem -eq $false) { throw "Kinarm requires 64-bit R2013a; this OS is 32-bit." }

Write-Host "Mounting $IsoPath"
$img = Mount-DiskImage -ImagePath (Resolve-Path $IsoPath) -PassThru
$drive = ($img | Get-Volume).DriveLetter + ':'
try {
    $setup = Join-Path $drive 'setup.exe'
    if (-not (Test-Path $setup)) { throw "setup.exe not on the ISO. Is this the Windows ISO?" }
    Write-Host "Running silent install (log: see outputFile in $InputFile). This takes 10-30 minutes."
    $p = Start-Process -FilePath $setup -ArgumentList @('-inputFile', "`"$InputFile`"") -Wait -PassThru
    if ($p.ExitCode -ne 0) { throw "MATLAB installer exited with code $($p.ExitCode). Check the log." }
    Write-Host "MATLAB R2013a installed. Next: Install-WinSDK71.ps1, then run verify_toolchain.m inside MATLAB."
}
finally {
    Dismount-DiskImage -ImagePath (Resolve-Path $IsoPath) | Out-Null
}
