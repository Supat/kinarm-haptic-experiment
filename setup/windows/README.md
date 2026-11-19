# Windows build-machine setup (MATLAB R2013a for Dexterit-E 3.5)

These scripts run on the **Windows x64** machine that will build Kinarm tasks
(recommended: the lab's Dexterit-E computer). They do not run on macOS.

## Manual steps that cannot be scripted (MathWorks account required)

1. In the MathWorks License Center (https://www.mathworks.com/licensecenter), open your
   licence, choose **Install and Activate > Activate to Retrieve License File**, and
   pick release **R2013a**.
2. Enter the Windows machine's **host ID** (first network adapter MAC address; `getmac`
   in cmd) and the **Windows user name** that will run MATLAB.
3. Download the resulting **license.lic** and copy the **File Installation Key**.
4. Download **R2013a_Windows.iso** (not the UNIX iso) from the same site.
5. Log in to https://kinarm.com and download the **Task Development Kit for
   Dexterit-E 3.5** plus the *Creating Task Programs* guide and the *Basic Task*.

## Scripted steps (elevated PowerShell)

```powershell
Copy-Item installer_input.txt installer_input.local.txt   # then fill in the two REQUIRED lines
.\Install-MatlabR2013a.ps1 -IsoPath C:\kinarm-setup\R2013a_Windows.iso
.\Install-WinSDK71.ps1
```

Then inside MATLAB:

```matlab
mex -setup                              % choose Microsoft SDK 7.1
verify_toolchain('C:\kinarm-setup\TDK_3.5')
```
