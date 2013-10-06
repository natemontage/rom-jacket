if "%HSCONDIR%"=="%SEGM3%" goto :SPECIAL
if "%HSCONDIR%"=="%SEGM2%" goto :SPECIAL
if "%HSCONDIR%"=="%ARCD%" goto :SPECIAL
if "%HSCONDIR%"=="%NEOGE%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS2%" goto :SPECIAL
if "%HSCONDIR%"=="%CPS3%" goto :SPECIAL

:ROMDRS
for /f "tokens=* delims= " %%a in ('dir /b /a-d /s "%GBG%\%GAM%\%CONS%\%HSCONDIR%\*.bat"') do (
set ROMT=%%~a
set ROM=%%~nxa
SET ROMNAME=%%~na
CALL :XXMK
)
exit /b

:XXMK
for %%a in ("%ROMT%") do set ROMN=%%~dpa
set ROMPATH=%ROMN:~0,-1%
if "%ROMNAME%"=="" goto :EOF
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%HYPS%\%HSCONDIR%\%ROMNAME%.lnk" "%ROMT%" " " "%ROMPATH%" "%ROMNAME%" 1 " "
exit /b

:SPECIAL
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h/s "%GBG%\%GAM%\%CONS%\%HSCONDIR%\*.zip"') do (
set ROMT=%%~a
set ROM=%%~nxa
SET ROMNAME=%%~na
CALL :XXMKS
)
exit /b

:XXMKS
for %%a in ("%ROMT%") do set ROMN=%%~dpa
set ROMPATH=%ROMN:~0,-1%
for %%a in ("%ROMPATH%") do set ROMSP=%%~nxa
for /f "tokens=* delims= " %%a in ('dir /b /a-d /s "%ROMPATH%\*.bat"') do (
SET ROMB=%%~dpnxa
CALL :LINKING
)
exit /b

:LINKING
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%HYPS%\%HSCONDIR%\%ROMSP%.lnk" "%ROMB%" " " "%ROMPATH%" "%ROMSP%" 1 " "