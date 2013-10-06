SET ZIPSKIP=
SET CDIN=
SET ARCINS=
SET /A VARNUM=12
set ZIPN=%FULLNM%

"%SEVENZIP%" l -slt "%ZIPN%">"%GBC%\tmp.ini"
CALL :ALLPROC
del /q "%GBC%\tmp.ini"
if "%REXTN%"=="" SET REXTN=%ARCE%
if "%REALN%"=="" SET REALN=%ARCN%
exit /b

:ALLPROC
CALL :NAMEME
SET /A FILNORM=(%FILN%-9)/15
SET /A FILCNT=(%FILN%-9)/15

:GLOBAL
if %FILCNT% GEQ 1 CALL :GETME
SET /A VARNUM+=15
set /A FILCNT+=-1
if %FILCNT% LEQ 0 exit /b
goto :GLOBAL

:NAMEME
for /f %%a in ('Find /V /C "@#@$" ^< "%GBC%\tmp.ini"') do set /A FILN=%%a
exit /b

:GETME
if "%FILNORM%" NEQ "%FILCNT%" set /A VARNUM+=15

set urlNthL=%VARNUM%
SET /A urlNthL -= 1
SET /A urlXthL=%urlNthL%+1
CALL :ZIPC2_LGrab
call :ZIPSET
exit /b

:ZIPC2_LGrab
FOR /F "tokens=2 delims==" %%A IN ('MORE /E +%urlNthL% "%GBC%\tmp.ini"') DO (
SET ZIPCURL=%%A
CALL :ZIPC3_LGrab
goto :EOF
)
EXIT /B

:ZIPC3_LGrab
FOR /F "tokens=2 delims==" %%A IN ('MORE /E +%urlXthL% "%GBC%\tmp.ini"') DO (
SET FLDRCHK=%%A
goto :EOF
)
exit /b

:ZIPSET
if "%FLDRCHK%"==" +" exit /b
for /f "tokens=* delims= " %%a in ("%ZIPCURL%") do set ARCN=%%~a
for /f "tokens=* delims= " %%a in ("%ZIPCURL%") do set ARCF=%%~nxa
for /f "tokens=* delims= " %%a in ("%ZIPCURL%") do set ARCE=%%~xa
CALL :ARCSET
exit /b

:SKIPZIP
SET SKIPZIP=1
exit /b

:CDIN
SET CDIN=1
exit /b

:ARCSET
if "%ARCE%"=="" GOTO :SKIPZIP
if /i "%ARCE%"==".bat" GOTO :SKIPZIP
if /i "%ARCE%"==".ini" GOTO :SKIPZIP
if /i "%ARCE%"==".settings" GOTO :SKIPZIP
if /i "%ARCE%"==".config" GOTO :SKIPZIP
if /i "%ARCE%"==".conf" GOTO :SKIPZIP
if /i "%ARCE%"==".cfg" GOTO :SKIPZIP
if /i "%ARCE%"==".txt" GOTO :SKIPZIP
if /i "%ARCE%"==".jpg" GOTO :SKIPZIP
if /i "%ARCE%"==".png" GOTO :SKIPZIP
if /i "%ARCE%"==".html" GOTO :SKIPZIP
if /i "%ARCE%"==".htm" GOTO :SKIPZIP
if /i "%ARCE%"==".tbn" GOTO :SKIPZIP
if /i "%ARCE%"==".nfo" GOTO :SKIPZIP
if /i "%ARCE%"==".zip" set ARCINS=1
if /i "%ARCE%"==".zip" GOTO :SKIPZIP
if /i "%ARCE%"==".rar" set ARCINS=1
if /i "%ARCE%"==".rar" GOTO :SKIPZIP
if /i "%ARCE%"==".7z" set ARCINS=1
if /i "%ARCE%"==".7z" GOTO :SKIPZIP
if /i "%ARCE%"==".iso" GOTO :CDIN
if /i "%ARCE%"==".img" GOTO :CDIN
if /i "%ARCE%"==".cdi" GOTO :CDIN
if /i "%ARCE%"==".bin" GOTO :CDIN
if /i "%ARCE%"==".rom" GOTO :CDIN
if /i "%ARCE%"==".cue" GOTO :CDIN
if /i "%ARCE%"==".ccd" GOTO :CDIN
if /i "%ARCE%"==".gdi" GOTO :CDIN
if /i "%ARCE%"==".nrg" GOTO :CDIN
if /i "%ARCE%"==".md5" GOTO :CDIN
if /i "%ARCE%"==".mdf" GOTO :CDIN
if /i "%ARCE%"==".mds" GOTO :CDIN
if /i "%INZIP%"=="1" SET OUTZIP=1
if /i "%OUTZIP%"=="1" SET INZIP=
if exist "%GBE%\%MESS%" goto :MESSCHK
if exist "%GBE%\MESS64" goto :MESSCHK
if exist "%GBE%\UME" goto :MESSCHK

:REX
if "%MTYP%" NEQ "" SET REXTN=%ARCE%
if "%MTYP%" NEQ "" SET REALN=%ARCF%
exit /b

:MESSCHK
CALL "%GBC%\messchk.bat"
goto :REX