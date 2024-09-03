param([switch]$Elevated)

function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}

cscript C:\Windows\System32\slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
cscript C:\Windows\System32\slmgr.vbs /skms kms.digiboy.ir:1688

explorer "https://download.mozilla.org/?product=firefox-stub&os=win&lang=en-US"
explorer "https://drivers.pantum.ru/userfiles/files/download/%E9%A9%B1%E5%8A%A8%E6%96%87%E4%BB%B6/2013/2024%E5%B9%B48%E6%9C%887%E6%97%A5%202013/Pantum%20P2200-P2500-P2600-S2000%20Series%20Windows%20Driver%20V2_6_38.exe"
pause
start "C:\Users\govno\Downloads\Firefox Installer.exe"
start "C:\Users\govno\Downloads\Pantum P2200-P2500-P2600-S2000 Series Windows Driver V2_6_38.exe"
pause

Stop-Process -Force -Name msedge
rm -r -Force "C:\Program Files\Microsoft"
