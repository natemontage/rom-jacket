pushd "%GBC%"
del "%GBC%\rez.ini"
CALL "%GBC%\getrez.bat"
cscript "%GBC%\getres.vbs"
set urlNthL=1
SET /A urlNthL -= 1
CALL :DEFRESX2_LGrab
GOTO :DEFRESXAUTO
:DEFRESX2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\res.ini"') DO (
SET DREZX=%%A
goto :EOF
)
:DEFRESXAUTO
set urlNthL=2
SET /A urlNthL -= 1
CALL :DEFRESY2_LGrab
GOTO :SETRES
:DEFRESY2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\res.ini"') DO (
SET DREZY=%%A
goto :EOF
)
:SETRES
"%GBC%\fart.exe" "locset.ini" "[REX]" "%DREZX%"
"%GBC%\fart.exe" "locset.ini" "[REY]" "%DREZY%"
popd