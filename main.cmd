@echo off
cscript slmgr.vbs /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
cscript slmgr.vbs /skms kms.digiboy.ir:1688

explorer "https://download.mozilla.org/?product=firefox-latest-ssl&os=win&lang=en-US"
explorer "https://drivers.pantum.ru/userfiles/files/download/%E9%A9%B1%E5%8A%A8%E6%96%87%E4%BB%B6/2013/2024%E5%B9%B48%E6%9C%887%E6%97%A5%202013/Pantum%20P2200-P2500-P2600-S2000%20Series%20Windows%20Driver%20V2_6_38.exe"
pause
start "%CSIDL_DEFAULT_DOWNLOADS%\Firefox Setup *.exe"
start "%CSIDL_DEFAULT_DOWNLOADS%\Pantum P2200-P2500-P2600-S2000 Series Windows Driver *.exe"
pause

taskkill /F /IM msedge.exe /T
rmdir /S /Q "%PROGRAMFILES%\Microsoft"
