for /f "tokens=* delims= " %%a in ('type "%GBC%\custEmu.ini"') do (
CALL "%GBC%\custEmu.bat"
copy /Y "%GBC%\custEmu.set" "%CUSTCONSPTH%\zz.bat"
del /s /q "%CUSTCONSPTH%\*.bat"
CALL :custInjBegin
goto :EOF
)

:custInjBegin
%GAMDIR%
cd "%CUSTCONSPTH%
for /f "tokens=* delims= " %%a in ('dir /b /ad"') do (
SET CSTR=%%a
CALL :CSTROMS
goto :EOF
)

:CSTROMS
copy /Y "%CD%\zz.bat" "%CD%\%CSTR%"
move /Y "%CD%\%CSTR%\zz.bat" "%CD%\%CSTR%\%CSTR%.bat"