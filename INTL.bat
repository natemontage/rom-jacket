
TITLE INIT
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO TASKKILL /F /PID %%A

taskkill /f /im START.exe
taskkill /f /im Wbox.exe
taskkill /f /im Wbusy.exe
taskkill /f /im Wselect.exe
taskkill /f /im Wfile.exe
taskkill /f /im Wfolder.exe
taskkill /f /im winput.exe
taskkill /f /im wget.exe
taskkill /f /im aria.exe
taskkill /f /im dxdiag.exe
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)

FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
cd "%~dp0"

pushd "RomJacket"
del /q "%USERPROFILE%\Links\~RoM-Jacket~.lnk"
del /q "%USERPROFILE%\Links\~Emulators~.lnk"
del /q "%USERPROFILE%\Links\~Consoles~.lnk"
del /q "logs\*.log"
del /q "*.ini"
del /q "*.cmd"
del /q "custEmu.bat"
del /q "%DESKTOPDIR%\RJ-Sort-Folder.lnk"
del /q "%DESKTOPDIR%\RJ-Configurator.lnk"
del /q "%DESKTOPDIR%\RJ-Bios-Folder.lnk"

xxmklink.exe "Configure.lnk" "%CD%\START.bat" ">\"%CD%\logs\START.log"\" "%CD%" Configure-Rom-Jacket 7 "%CD%\RomJacket.ico"
xxmklink.exe "Initialize-Rom-Jacket.lnk" "%CD%\INTL.bat" " " "%CD%" Initialize-Rom-Jacket 7 "%CD%\restart.ico"
move /Y Initialize-Rom-Jacket.lnk "%CD%\..\"
move /Y Configure.lnk "%CD%\..\"
wbox.exe "Initialized" "Program Initialized." "RESET" /TM=2
exit /b