for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\bioscrc.ini"') do 
set BIOSNA=%%~a
set BIOSNUM=%%~b
call :CRCCHK
)
exit /b

:CRCCHK
for /f "Tokens=1,2 delims=:" %%a in in ('type "%GBC%\bioscrc.ini"') do 
set BIOSNAM=%%~a
set BIOSCRC=%%~b
if "%%~b"=="%BIOSCRC%" call :NUMCHK
)
exit /b

:NUMCHK
if "%BIOSNAM%"=="%BIOSNA%" exit /b
echo.%BIOSNAM%>>"%GBC%\biosdup.ini"
exit /b