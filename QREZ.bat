pushd "%GBC%"
del "%GBC%\rez.ini"
CALL "%GBC%\getrez.bat"
cscript "%GBC%\getres.vbs"
set urlNthL=1
SET /A urlNthL -= 1
CALL :RESX2_LGrab
GOTO :RESXAUTO
:RESX2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\res.ini"') DO (
SET RESX=%%A
goto :EOF
)
:RESXAUTO
set urlNthL=2
SET /A urlNthL -= 1
CALL :RESY2_LGrab
GOTO :SETRES
:RESY2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\res.ini"') DO (
SET RESY=%%A
goto :EOF
)
:SETRES
popd