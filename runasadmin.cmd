@echo off
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cscript slmgr.vbs /skms kms.digiboy.ir:1688
cscript slmgr.vbs /ato

taskkill /F /IM msedge.exe /T
rmdir /Q /S "%PROGRAMFILES%\Microsoft"
shutdown /s
