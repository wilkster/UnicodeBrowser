@echo off
set "WAS_RUNNING=0"
taskkill /f /im UnicodeBrowser.exe >nul 2>&1
if not errorlevel 1 set "WAS_RUNNING=1"
timeout /t 1 /nobreak >nul

start /wait "" C:\Apps\AHK\V2\Ahk2Exe.exe /in "UnicodeBrowser.ahk2" /icon Tray.ico /base "C:\Apps\AHK\V2\AutoHotkey64.exe" /out "UnicodeBrowser.exe"

if "%WAS_RUNNING%"=="1" start "" "UnicodeBrowser.exe"
pause