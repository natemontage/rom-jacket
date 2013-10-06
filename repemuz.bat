for /f "tokens=* Delims= " %%a in ('dir /b/a-d "*exeject.bat"') do (
set EJECT=%%~na
call :INJ
)
exit /b

:INJ
set EJER=%EJECT:~0,-7%
for /f "tokens=* delims= " %%a in ('type C:\rj\romjacket\shortname.set') do (
C:\rj\romjacket\fart.exe "%EJER%exeject.bat" "%%GBG%%\%%GAM%%\%%CONS%%\%%%%~a%%\%%CSTM%%" "[ROMPTH]" 
C:\rj\romjacket\fart.exe "exec%EJER%.bat" "%%GBG%%\%%GAM%%\%%CONS%%\%%%%~a%%\%%CSTM%%" "[ROMPTH]" 
)
for /f "tokens=* delims= " %%a in ('type C:\rj\romjacket\shortemu.set') do (
C:\rj\romjacket\fart.exe "%EJER%exeject.bat" "] \"%%GBE%%\%%EMUZ%%\%%%%~a%%" "] \"[EMUPTH]" 
C:\rj\romjacket\fart.exe "exec%EJER%.bat" "] \"%%GBE%%\%%EMUZ%%\%%%%~a%%" "] \"[EMUPTH]" 
)