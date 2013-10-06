for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.zip"') do (
SET /A VARNUM=12
SET FILN=
SET FILCNT=
SET FILNORM
SET ZIPCURL=
SET ARCN=
SET ARCF=
SET ARCE=
set ZIPA=%%~nxa
set ZIPN=%%~dpnxa
"%SEVENZIP%" l -slt "%%~dpnxa">"%GBC%\tmp.ini"
CALL :ALLPROC
CALL :ZIPMOVE
)
del /q "%GBC%\zipextr.ini"
del /q "%GBC%\tmp.ini"
exit /b

:ZIPMOVE
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\zipextr.ini"') do (
set ARCN=%%~a
set ARCF=%%~nxa
set ARCE=%%~xa
call "%GBC%\matcharcext.bat"
)
exit /b


:ALLPROC
CALL :NAMEME
SET /A FILNORM=(%FILN%-9)/15
SET /A FILCNT=(%FILN%-9)/15
EXIT /B

:GLOBAL
SET /A VARNUM+=15
if /i %FILCNT% GEQ 1 CALL :GETME
set /A FILCNT+=-1
if /i %FILCNT% LEQ 0 exit /b
goto :GLOBAL

:NAMEME
for /f %%a in ('Find /V /C "@#@$" ^< "%GBC%\tmp.ini"') do set /A FILN=%%a
exit /b

:GETME
if /i "%FILNORM%" NEQ "%FILCNT%" set /A VARNUM+=15

set urlNthL=%VARNUM%
SET /A urlNthL -= 1
CALL :ZIPC2_LGrab
call :ZIPSET
exit /b

:ZIPC2_LGrab
FOR /F "tokens=2 delims==" %%a IN ('MORE /E +%urlNthL% "%GBC%\tmp.ini"') DO (
SET ZIPCURL=%%~a
goto :EOF
)

:ZIPSET
for /f "tokens=* delims= " %%a in ("%ZIPCURL%") do set ARCN=%%~a
for /f "tokens=* delims= " %%a in ("%ZIPCURL%") do set ARCF=%%~nxa
for /f "tokens=* delims= " %%a in ("%ZIPCURL%") do set ARCE=%%~xa
CALL :ARCSET
exit /b

:ARCSET
if /i "%ARCE%"=="" exit /b
if /i "%ARCE%"==".txt" exit /b
if /i "%ARCE%"==".xml" exit /b
if /i "%ARCE%"==".ini" exit /b
if /i "%ARCE%"==".cfg" exit /b
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
echo.%ARCN%:>>"%GBC%\zipextr.ini"