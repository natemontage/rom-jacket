SET /A VARNUM=12
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.zip"') do (
set ZIPN=%%~dpnxa
"%SEVENZIP%" l -slt "%%~dpnxa">"%GBC%\tmp.ini"
CALL :ALLPROC
)
del /q "%GBC%\tmp.ini"
exit /b

:ALLPROC
CALL :NAMEME
SET /A FILNORM=(%FILN%-9)/15
SET /A FILCNT=(%FILN%-9)/15

:GLOBAL
SET VARNUM+=15
if %FILCNT% GEQ 1 CALL :PROC
set /A FILCNT+=-1
if %FILCNT%==-1 goto exit /b
if %FILCNT%==0 goto exit /b
goto :GLOBAL

:PROC
CALL :GETME
exit /b

:NAMEME
for /f %%a in ('Find /V /C "@#@$" ^< "%GBC%\tmp.ini"') do set /A FILN=%%a
exit /b

:GETME
if "%FILNORM%" NEQ "%FILCNT%" set /A VARNUM+=15

set urlNthL=%VARNUM%
SET /A urlNthL -= 1
CALL :ZIPC2_LGrab
call :ZIPSET
exit /b

:ZIPC2_LGrab
FOR /F "tokens=2 delims==" %%A IN ('MORE /E +%urlNthL% "%GBC%\tmp.ini"') DO (
SET ZIPCURL=%%A
goto :EOF
)

:ZIPSET
for /f "tokens=* delims= " %%a in ("%ZIPCURL%") do (
set ARCN=%%~nxa
set ARCE=%%~xa
CALL :ARCSET
)
exit /b

:ARCSET
if "%ARCE%"=="" exit /b
if /i "%ARCE%"==".txt" exit /b
if /i "%ARCE%"==".jpg" exit /b
if /i "%ARCE%"==".png" exit /b
if /i "%ARCE%"==".html" exit /b
if /i "%ARCE%"==".htm" exit /b
if /i "%ARCE%"==".tbn" exit /b
if /i "%ARCE%"==".nfo" exit /b
if /i "%ARCE%"==".zip" exit /b
if /i "%ARCE%"==".rar" exit /b
if /i "%ARCE%"==".7z" exit /b
if /i "%ARCE%"==".iso" exit /b
if /i "%ARCE%"==".img" exit /b
if /i "%ARCE%"==".cdi" exit /b
if /i "%ARCE%"==".bin" exit /b
if /i "%ARCE%"==".rom" exit /b
if /i "%ARCE%"==".cue" exit /b
if /i "%ARCE%"==".ccd" exit /b
if /i "%ARCE%"==".gdi" exit /b
if /i "%ARCE%"==".nrg" exit /b
if /i "%ARCE%"==".md5" exit /b
if /i "%ARCE%"==".mdf" exit /b
if /i "%ARCE%"==".mds" exit /b

CALL "%GBC%\matcharcext.bat"