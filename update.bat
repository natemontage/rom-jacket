start "" "%GBC%\wbusy.exe" "updating" "Updating your installation" /marquee
del /q "%GBC%\download.ini"
del /q "%GBC%\updatelist.ini"
start /min /w "" "%GBC%\wget.exe" -t 2 -N -w 1 "http://dl.dropbox.com/u/413403/updatelist.ini" -P "%GBC%"

:client
for /f "tokens=1,2 delims=#" %%a in ('type "%GBC%\updatelist.ini"') do (
SET UPDTM=%%~b
SET UPDF=%%~nxa
SET UPDY=%%~a
call :UFRE
)

if not exist "%GBC%\download.ini" goto :NOUPDATES
for /f "tokens=* delims= " %%a in ('type "%GBC%\download.ini"') do (
SET TRANSF=%%~nxa
SET TRANSG=%%~a
call :TRANSGET
)
goto :COMPLETE

:TRANSGET
for %%a in ("%TRANSG:\=/%") do set URIP=%%~a
for %%a in ("%%TRANSG:%TRANSF%=%%") do call set TRANSP=%%~a
start /min /w "" "%GBC%\wget.exe" -t 2 -N -w 1 "%MIR7%/SOURCE/%URIP%" -P "%GBC%\%TRANSP%"
exit /b

:UFRE
SET NEWPTH=
set NEWPTZ=
if "%UPDF%"=="%UPDY%" goto :PTHOV
for %%a in ("%%UPDY:%UPDF%=%%") do call SET NEWPTMP=%%~a
for %%a in ("%NEWPTMP:~0,-1%") do set NEWPTH=%%~a
for %%a in ("%NEWPTH%\") do set NEWPTZ=%%~a
REM for %%a in ("%NEWPTH:~0,-1%") do set UPDP=%%~a

:PTHOV
set WRIT=
if not exist "%GBC%\%NEWPTZ%%UPDF%" goto :GETFILE
if "%WRIT%"=="1" exit /b
for %%a in ("%GBC%\%NEWPTZ%%UPDF%") do if "%%~ta" NEQ "%UPDTM%" goto :GETFILE
exit /b

:GETFILE
set WRIT=1
echo.%NEWPTH%\%UPDF%>>"%GBC%\download.ini"
exit /b

:NOUPDATES
"%GBC%\wbox.exe" "noupdates" "There are no updates at this time" "Okay" /TM=1
:COMPLETE
start "" "%GBC%\wbusy.exe" "updating" "Complete" /Stop /timeout:3
