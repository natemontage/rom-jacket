set SATSKIP=
set SATNUM=
set SATCNT=
SET ABV=
SET drvcnt=
if "%DAMVAR%"=="" set SATSKIP=1
if "%DAMVAR%"=="[DMT]" set SATSKIP=1
if "%SATSKIP%"=="1" goto :EOF
"%DAMVAR%" -unmount_all
"%DAMVAR%" -set_count dt, 0
"%DAMVAR%" -set_count scsi, 0

for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do fsutil.exe fsinfo drivetype %%a:|find "CD-ROM">nul&&set /a drvcnt+=1

:CNTDRV
CALL :DEVCNT
if "%SATNUM%"=="0" goto :SATFIN
"%DAMVAR%" -add scsi
CALL "%GBC%\dtest.bat"
set /A DRVNUM+=1

for %%a in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do ( 
fsutil.exe fsinfo drivetype %%a:|find "CD-ROM">nul&&set SATDRVLTR=%%a
CALL :DRVNUM
CALL :DRVCAL
if "%ABV%" GEQ "1" goto :sub1
)
goto :DRVSET
:sub1
if "%SDRVNUM%" GTR "%DRVNUM%" set /A SATCNT+=-1
)
goto :DRVSET


:DRVCAL
if "%SDRVNUM%"=="" exit /b
if "%SDRVNUM%"=="%DRVNUM%" exit /b
if "%SDRVNUM%" LSS "%DRVNUM%" set /A SATCNT+=1
if "%SDRVNUM%" LSS "%DRVNUM%" set /A ABV+=1
exit /b

:DEVCNT
if "%drvcnt%"=="" SET SATNUM=0
exit /b

:DRVSET
if /I "%SATCNT%"=="" set /A SATNUM=0
if /I "%SATCNT%"=="0" set /A SATNUM=0
if /I "%SATCNT%"=="1" set /A SATNUM=1
if /I "%SATCNT%"=="2" set /A SATNUM=2
if /I "%SATCNT%"=="3" set /A SATNUM=3
exit /b

:DRVNUM
if /I "%SATDRVLTR%"=="C" set SDRVNUM=3
if /I "%SATDRVLTR%"=="D" set SDRVNUM=4
if /I "%SATDRVLTR%"=="E" set SDRVNUM=5
if /I "%SATDRVLTR%"=="F" set SDRVNUM=6
if /I "%SATDRVLTR%"=="G" set SDRVNUM=7
if /I "%SATDRVLTR%"=="H" set SDRVNUM=8
if /I "%SATDRVLTR%"=="I" set SDRVNUM=9
if /I "%SATDRVLTR%"=="J" set SDRVNUM=10
if /I "%SATDRVLTR%"=="K" set SDRVNUM=11
if /I "%SATDRVLTR%"=="L" set SDRVNUM=12
if /I "%SATDRVLTR%"=="M" set SDRVNUM=13
if /I "%SATDRVLTR%"=="N" set SDRVNUM=14
if /I "%SATDRVLTR%"=="O" set SDRVNUM=15
if /I "%SATDRVLTR%"=="P" set SDRVNUM=16
if /I "%SATDRVLTR%"=="Q" set SDRVNUM=17
if /I "%SATDRVLTR%"=="R" set SDRVNUM=18
if /I "%SATDRVLTR%"=="S" set SDRVNUM=19
if /I "%SATDRVLTR%"=="T" set SDRVNUM=20
if /I "%SATDRVLTR%"=="U" set SDRVNUM=21
if /I "%SATDRVLTR%"=="V" set SDRVNUM=22
if /I "%SATDRVLTR%"=="W" set SDRVNUM=23
if /I "%SATDRVLTR%"=="X" set SDRVNUM=24
if /I "%SATDRVLTR%"=="Y" set SDRVNUM=25
if /I "%SATDRVLTR%"=="Z" set SDRVNUM=26
exit /b

:SATFIN