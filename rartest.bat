for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.RAR"') do (
set /A VARNUM=0
SET FILN=
SET FILCNT=
SET FILNORM=
SET RARCURL=
SET ARCN=
SET ARCF=
SET ARCE=
set RARA=%%~nxa
set RARN=%%~dpnxa
"%UNRAR%" vb "%%~dpnxa">"%GBC%\tmp.ini"
CALL :ALLPROC
CALL :RARMOVE
)
del /q "%GBC%\rarextr.ini"
del /q "%GBC%\tmp.ini"
exit /b

:RARMOVE
for /f "tokens=1 delims=:" %%a in ('type "%GBC%\rarextr.ini"') do (
set ARCN=%%~a
set ARCF=%%~nxa
set ARCE=%%~xa
call "%GBC%\matcharcextrar.bat"
)
exit /b

:ALLPROC
for /f %%a in ('Find /V /C "@#@$" ^<"%GBC%\tmp.ini"') do set /A FILN=%%a
SET /A FILNORM=%FILN%
SET /A FILCNT=%FILN%
SET /A VARNUM=1

:GLOBAL
if %FILCNT% GEQ 1 CALL :GETME
set /A FILCNT+=-1
if %FILCNT%==-1 exit /b
if %FILCNT%==0 exit /b
goto :GLOBAL

:GETME
if "%FILNORM%" NEQ "%FILCNT%" set /A VARNUM+=1
set urlNthL=%VARNUM%
SET /A urlNthL -= 1
CALL :RARC2_LGrab
CALL :RARSET
exit /b

:RARC2_LGrab
FOR /F "tokens=* delims= " %%A IN ('MORE /E +%urlNthL% "%GBC%\tmp.ini"') DO (
SET RARCURL=%%A
goto :EOF
)

:RARSET
for /f "tokens=* delims= " %%a in ("%RARCURL%") do set ARCN=%%~a
for /f "tokens=* delims= " %%a in ("%RARCURL%") do set ARCF=%%~nxa
for /f "tokens=* delims= " %%a in ("%RARCURL%") do set ARCE=%%~xa
CALL :ARCSET
)
exit /b

:ARCSET
if "%ARCE%"=="" exit /b
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
echo.%ARCN%:>>"%GBC%\rarextr.ini"