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
# URL current as of 2026-11-19 (from https://www.microsoft.com/en-us/download/details.aspx?id=4422);
# the exe is Authenticode-signed by Microsoft Corporation - verify with Get-AuthenticodeSignature.
$patchUrl = 'https://download.microsoft.com/download/7/5/0/75040801-126c-4591-bce4-4cd1fd1499aa/VC-Compiler-KB2519277.exe'

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
    Write-Host "On Windows 10 the installer misreads .NET 4.5+ as 'pre-release .NET 4': OK past the warning, and if"
    Write-Host "'Visual C++ Compilers' is greyed out, install WITHOUT it - the KB2519277 step below installs the compilers."
    # setup.exe spawns a child installer and exits immediately, so -Wait returns too
    # early and the KB2519277 step below would run before the SDK exists. Ask instead.
    Start-Process (Join-Path $drive 'setup.exe')
    Read-Host "When the SDK installer has finished and you clicked Finish, press Enter here to continue"
} finally { Dismount-DiskImage -ImagePath $sdkIso | Out-Null }

# 3. Apply the x64 compiler update.
Write-Host "Applying KB2519277 compiler update"
Start-Process $patchExe -ArgumentList '/quiet /norestart' -Wait

Write-Host "Done. In MATLAB run:  mex -setup   and choose 'Microsoft Software Development Kit (SDK) 7.1'."
