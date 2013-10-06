call "injExeTmpl.bat"
SET INSTL=1
for /f "delims=" %%a in ('Wfolder.exe "SET DESTNZ=" "" "Destination for Installation" /noquote') do %%a
for %%A in ("%DESTNZ%") do set DESTB=%%~nA
for %%A in ("%DESTNZ%") do set DESTP=%%~dpA
for %%A in ("%DESTNZ%") do set DESTD=%DESTNZ:~0,2%
for %%A in ("%DESTNZ%") do set DESTJ=%DESTNZ:~0,-1%
if "%DESTNZ%"=="%DESTD%\" set DESTN=%DESTD%
if "%DESTNZ%"=="" goto :CANCELLED
mkdir "%DESTNZ%\%ROMN%"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%"') do copy /y "%%~a" "%DESTNZ%\%ROMN%"
if "%DESTNZ%"=="" xxmklink.exe "%CD%\%ROMN%.lnk" "%CD%\%ROMN%.bat" "" "%CD%" GameExecutable 7 "%CD%\Folder.ico"
if "%DESTNZ%" NEQ "" xxmklink.exe "%DESKTOPDIR%\%ROMN%\%ROMN%.lnk" "%DESTNZ%\%ROMN%\%ROMN%.bat" "" "%DESTNZ%\%ROMN%" GameExecutable 7 "%DESTNZ%\%ROMN%\Folder.ico"
exit /b

:CANCELLED
set CANCL=1