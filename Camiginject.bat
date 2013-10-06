SET CAMIGHDD=
SET CAMIGDSK=
SET CAMIGDSK1=
SET CAMIGDSK2=
SET CAMIGDSK3=
SET CAMIGDSK4=
SET CAMIGDSK5=
SET CAMIGDSK6=
SET CAMIGDSK7=
SET CAMIGDSK8=
SET CAMIGDSK9=
SET CAMIGDSK10=
SET CAMIGDSK11=
SET CAMIGDSK12=
SET CAMIGDSK13=
SET CAMIGDSK14=
SET CAMIGDSK15=

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_1*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_2*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 3*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk3*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_3*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 4*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk4*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_4*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 5*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk5*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_5*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 6*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_6*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk6*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK6=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK6=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 7*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK7=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_7*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK7=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk7*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK7=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK7=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 8*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK8=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk8*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK8=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_8*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK8=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK8=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 9*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK9=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk9*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK9=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_9*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK9=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK9=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 10*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK10=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk10*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK10=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_10*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK10=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK10=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 11*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK11=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_11*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK11=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk11*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK11=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK11=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 12*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK12=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_12*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK12=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk12*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK12=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK12=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 13*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK13=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk13*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK13=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_13*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK13=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK13=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 14*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK14=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk14*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK14=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_14*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK14=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK14=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk 15*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK15=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk15*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK15=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_15*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK15=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK15=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk A*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_A*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*DiskA*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK1=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk B*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_B*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*DiskB*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK2=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk C*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*DiskC*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_C*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK3=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk D*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*DiskD*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_D*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK4=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk E*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*DiskE*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*Disk_E*"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK5=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*.hdf"') do SET CAMIGHDD=%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%"') do (
if /I "%%~xa"==".adf" SET CAMIGDSK=%%~a
if /I "%%~xa"==".ipf" SET CAMIGDSK=%%~a
CALL :disking
)
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%\*(AGA)*.adf"') do (
set NWROM=%%~a
if "%%~a" neq "" call :reamp
)
goto :injecCAMIGs
:reamp
"%GBC%\inifile.exe" "Config.fs-uae" [config] amiga_model = A1200/20
"%GBC%\inifile.exe" "Config.fs-uae" [config] chip_memory = 4096
echo.accuracy = 1>>"Config.fs-uae"
echo.ntsc_mode = 1>>"Config.fs-uae"
echo.fast_memory = 4096>>"Config.fs-uae"
echo.slow_memory = 1792>>"Config.fs-uae"
echo.zorro_iii_memory = 1048576>>"Config.fs-uae"
pushd "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%"
"%GBC%\fart.exe" "Config.fs-uae" [KICKSTARTPTH] "%GBE%\%EMUZ%\%FSUAE%\%AMIG1200%"
popd
exit /b


:disking
if /I "%CAMIGDSK%"=="%CAMIGDSK2%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="%CAMIGDSK3%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="%CAMIGDSK4%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="%CAMIGDSK5%" SET CAMIGDSK=
if /I "%CAMIGDSK%"=="" exit /b
exit /b

:injecCAMIGs
pushd "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%"
"%GBC%\fart.exe" "Config.fs-uae" [KICKSTARTPTH] "%GBE%\%EMUZ%\%FSUAE%\%AMIG500%"
if "%CAMIGHDD%"=="" "%GBC%\fart.exe" "Config.fs-uae" [HDD] --remove
if "%CAMIGDSK2%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK2] --remove
if "%CAMIGDSK3%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK3] --remove
if "%CAMIGDSK4%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK4] --remove
if "%CAMIGDSK5%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK5] --remove
if "%CAMIGDSK6%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK6] --remove
if "%CAMIGDSK7%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK7] --remove
if "%CAMIGDSK8%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK8] --remove
if "%CAMIGDSK9%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK9] --remove
if "%CAMIGDSK10%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK10] --remove
if "%CAMIGDSK11%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK11] --remove
if "%CAMIGDSK12%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK12] --remove
if "%CAMIGDSK13%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK13] --remove
if "%CAMIGDSK14%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK14] --remove
if "%CAMIGDSK15%"=="" "%GBC%\fart.exe" "Config.fs-uae" [DSK15] --remove
if "%CAMIGDSK%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK1] "%CAMIGDSK%"
if "%CAMIGDSK1%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK1] "%CAMIGDSK1%"
if "%CAMIGDSK2%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK2] "%CAMIGDSK2%"
if "%CAMIGDSK3%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK3] "%CAMIGDSK3%"
if "%CAMIGDSK4%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK4] "%CAMIGDSK4%"
if "%CAMIGDSK5%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK5] "%CAMIGDSK5%"
if "%CAMIGDSK6%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK6] "%CAMIGDSK6%"
if "%CAMIGDSK7%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK7] "%CAMIGDSK7%"
if "%CAMIGDSK8%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK8] "%CAMIGDSK8%"
if "%CAMIGDSK9%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK9] "%CAMIGDSK9%"
if "%CAMIGDSK10%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK10] "%CAMIGDSK10%"
if "%CAMIGDSK11%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK11] "%CAMIGDSK11%"
if "%CAMIGDSK12%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK12] "%CAMIGDSK12%"
if "%CAMIGDSK13%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK13] "%CAMIGDSK13%"
if "%CAMIGDSK14%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK14] "%CAMIGDSK14%"
if "%CAMIGDSK15%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [DSK15] "%CAMIGDSK15%"
if "%CAMIGHDD%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [HDD] "%CAMIGHDD%"
popd
goto :CAMIGend

:CAMIGend
pushd "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%"
"%GBC%\fart.exe" "Config.fs-uae" [ROMPTH] "%GBG%\%GAM%\%CONS%\%CAMIG%\%CSTM%"
"%GBC%\fart.exe" "Config.fs-uae" \ \\
popd
exit /b