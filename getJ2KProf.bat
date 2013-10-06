SET urlNthL=65
SET /A urlNthL -= 1
CALL :J2KPROF2_LGrab
GOTO J2KPROFAUTO

:J2KPROF2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET J2KPROFURL=%%A
goto :EOF
)

:J2KPROFAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%J2KPROF%" "%MIR1%/%J2KPROFURL%" "%MIR2%/%J2KPROFURL%" "%MIR3%/%J2KPROFURL%" "%MIR4%/%J2KPROFURL%" "%MIR5%/%J2KPROFURL%"
for %%A in ("%GBC%\net\%J2KPROF%\*.zip") do set J2KPROFXE=%%~A
for /f "delims=" %%a in ('dir /b "%J2KPROFXE%"') do set J2KPROFFILE=%%~nxa
"%SEVENZIP%" x -y "%GBC%\net\%J2KPROF%\%J2KPROFFILE%" -o"%GBC%\net\%J2KPROF%"
move /Y "%GBC%\net\%J2KPROF%\%J2KPROFFILE%*" "%GBE%\%EMUZ%\%J2KPROF%"
goto :reconfigXpadder
:reconfigXpadder