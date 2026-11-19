<#
.SYNOPSIS
  Install Microsoft Windows SDK 7.1 (the compiler Kinarm lists for MATLAB R2013a 64-bit).
.DESCRIPTION
  Known gotcha: SDK 7.1 setup fails if Visual C++ 2010 SP1 redistributables (10.0.40219)
  are already present. This script removes them, runs the SDK installer, then applies the
  KB2519277 compiler update so the x64 compiler actually works.
  The SDK installer itself runs interactively: untick everything except
  "Windows Headers and Libraries" and "Visual C++ Compilers" (and the x64 options).
.NOTES
  Run elevated. Verify the download URLs still resolve; they are Microsoft's long-standing
  archive links but are not guaranteed.
#>
param([string] $WorkDir = 'C:\kinarm-setup')
$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force -Path $WorkDir | Out-Null

$sdkIso   = Join-Path $WorkDir 'GRMSDKX_EN_DVD.iso'
$sdkUrl   = 'https://download.microsoft.com/download/F/1/0/F10113F5-B750-4969-A255-274341AC6BCE/GRMSDKX_EN_DVD.iso'
$patchExe = Join-Path $WorkDir 'VC-Compiler-KB2519277.exe'
$patchUrl = 'https://download.microsoft.com/download/7/5/0/75040801-126C-4591-BCE4-4D4C0A9A1D30/VC-Compiler-KB2519277.exe'

foreach ($pair in @(@($sdkIso,$sdkUrl), @($patchExe,$patchUrl))) {
    if (-not (Test-Path $pair[0])) {
        Write-Host "Downloading $($pair[1])"
        Invoke-WebRequest -Uri $pair[1] -OutFile $pair[0] -UseBasicParsing
    }
}

# 1. Remove VC++ 2010 redistributables that block SDK 7.1 setup.
$redists = Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*' -ErrorAction SilentlyContinue |
           Where-Object { $_.DisplayName -like 'Microsoft Visual C++ 2010*Redistributable*' }
foreach ($r in $redists) {
    Write-Host "Uninstalling $($r.DisplayName) $($r.DisplayVersion)"
    if ($r.UninstallString -match '\{[0-9A-F-]+\}') {
        Start-Process msiexec.exe -ArgumentList "/x $($Matches[0]) /quiet /norestart" -Wait
    }
}

# 2. Run the SDK installer (interactive; select only headers/libs + VC++ compilers).
$img = Mount-DiskImage -ImagePath $sdkIso -PassThru
$drive = ($img | Get-Volume).DriveLetter + ':'
try {
    Write-Host "SDK setup starting. In the feature list keep ONLY: Windows Headers and Libraries, Visual C++ Compilers."
    Start-Process (Join-Path $drive 'setup.exe') -Wait
} finally { Dismount-DiskImage -ImagePath $sdkIso | Out-Null }

# 3. Apply the x64 compiler update.
Write-Host "Applying KB2519277 compiler update"
Start-Process $patchExe -ArgumentList '/quiet /norestart' -Wait

Write-Host "Done. In MATLAB run:  mex -setup   and choose 'Microsoft Software Development Kit (SDK) 7.1'."
