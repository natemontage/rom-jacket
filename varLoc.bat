%GBD%
cd "%GBC%"

SET url1thL=1
SET /A url1thL -= 1
CALL :ARCT1_LGrab
GOTO :ARCT1AUTO

:ARCT1_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url1thL% "%GBC%\ARCH.ini"') DO (
SET ARCT=%%A
goto :EOF
)

:ARCT1AUTO
if "%ARCT%"=="64" set ARPOP=64
if "%ARCT%"=="64" set PRGX=%PROGRAMFILES(X86)%
if "%ARCT%"=="32" set ARPOP=32
if "%ARCT%"=="32" set PRGX=%PROGRAMFILES%
for %%A in ("%PROGRAMFILES%") do set PRGF=%%~A

SET url1thL=1
SET /A url1thL -= 1
CALL :VSET1_LGrab
GOTO :VSET1AUTO

:VSET1_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url1thL% "locset.ini"') DO (
SET VEETT=%%A
goto :EOF
)

:VSET1AUTO
for %%A in ("%VEETT%") do set GBE=%%~A

SET url2thL=2
SET /A url2thL -= 1
CALL :VSET2_LGrab
GOTO :VSET2AUTO

:VSET2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url2thL% "locset.ini"') DO (
SET VBETT=%%A
goto :EOF
)	

:VSET2AUTO
for %%A in ("%VBETT%") do set GBG=%%~A

SET url3thL=3
SET /A url3thL -= 1
CALL :VSET3_LGrab
GOTO :VSET3AUTO

:VSET3_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url3thL% "locset.ini"') DO (
SET VXETT=%%A
goto :EOF
)

:VSET3AUTO
for %%A in ("%VXETT%") do set XPADDER=%%~A

SET url4thL=4
SET /A url4thL -= 1
CALL :VSET4_LGrab
GOTO :VSET4AUTO

:VSET4_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url4thL% "locset.ini"') DO (
SET VDETT=%%A
goto :EOF
)

:VSET4AUTO
for %%A in ("%VDETT%") do set DAMVAR=%%~A

SET url5thL=5
SET /A url5thL -= 1
CALL :VSET5_LGrab
GOTO :VSET5AUTO

:VSET5_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url5thL% "locset.ini"') DO (
SET VJETT=%%A
goto :EOF
)

:VSET5AUTO
for %%A in ("%VJETT%") do set JOY2KEY=%%~A

SET url6thL=6
SET /A url6thL -= 1
CALL :VSET6_LGrab
GOTO :VSET6AUTO
:VSET6_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url6thL% "locset.ini"') DO (
SET VZETT=%%A
goto :EOF
)
:VSET6AUTO
for %%A in ("%VZETT%") do set SEVENZIP=%%~A

SET url7thL=7
SET /A url7thL -= 1
CALL :VSET7_LGrab
GOTO :VSET7AUTO
:VSET7_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url7thL% "locset.ini"') DO (
SET VRETT=%%A
goto :EOF
)
:VSET7AUTO
for %%A in ("%VRETT%") do set UNRAR=%%~A

SET url8thL=8
SET /A url8thL -= 1
CALL :VSET8_LGrab
GOTO :VSET8AUTO
:VSET8_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url8thL%  "locset.ini"') DO (
SET VMETT=%%A
goto :EOF
)
:VSET8AUTO
set GBM=%VMETT%
SET url9thL=9
SET /A url9thL -= 1
CALL :VSET9_LGrab
GOTO :VSET9AUTO

:VSET9_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url9thL%  "locset.ini"') DO (
SET VIETT=%%A
goto :EOF
)
:VSET9AUTO
for %%A in ("%VIETT%") do set EIN=%%~A
SET EINST=are
)
for %%A in ("%GBG:~0,2%") do set GAMDIR=%%~A
for %%A in ("%GBE:~0,2%") do set EMUDIR=%%~A

SET url10thL=10
SET /A url10thL -= 1
CALL :BSET10_LGrab
GOTO :BSET10AUTO

:BSET10_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url10thL%  "locset.ini"') DO (
SET BIETT=%%A
goto :EOF
)

:BSET10AUTO
for %%A in ("%BIETT%") do set MBR=%%~A

SET url11thL=11
SET /A url11thL -= 1
CALL :GSET11_LGrab
GOTO :GSET11AUTO

:GSET11_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url11thL%  "locset.ini"') DO (
SET GIETT=%%A
goto :EOF
)
:GSET11AUTO
for %%A in ("%GIETT%") do set GBR=%%~A

SET url12thL=12
SET /A url12thL -= 1
CALL :XBMSET12_LGrab
GOTO :XBMSET12AUTO

:XBMSET12_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url12thL%  "locset.ini"') DO (
SET XIETT=%%A
goto :EOF
)

:XBMSET12AUTO
for %%A in ("%XIETT%") do set XBM=%%~A

SET url13thL=13
SET /A url13thL -= 1
CALL :ADVSET13_LGrab
GOTO :ADVSET13AUTO

:ADVSET13_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url13thL%  "locset.ini"') DO (
SET ADVIETT=%%A
goto :EOF
)

:ADVSET13AUTO
for %%A in ("%ADVIETT%") do set ADV=%%~A

SET url14thL=14
SET /A url14thL -= 1
CALL :RCBSET14_LGrab
GOTO :RCBSET14AUTO

:RCBSET14_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url14thL%  "locset.ini"') DO (
SET RCBIETT=%%A
goto :EOF
)

:RCBSET14AUTO
for %%A in ("%RCBIETT%") do set RCB=%%~A

SET url15thL=15
SET /A url15thL -= 1
CALL :HYPSET15_LGrab
GOTO :HYPSET15AUTO

:HYPSET15_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url15thL%  "locset.ini"') DO (
SET HYPIETT=%%A
goto :EOF
)

:HYPSET15AUTO
for %%A in ("%HYPIETT%") do set HYP=%%~A
if "%HYP%" NEQ "[HPN]" for %%A in ("%HYP%") do set HPN=%%~dpnA

SET url25thL=25
SET /A url15thL -= 1
CALL :XPLSET25_LGrab
GOTO :XPLSET25AUTO

:XPLSET15_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url25thL%  "locset.ini"') DO (
SET XPLIETT=%%A
goto :EOF
)

:XPLSET25AUTO
for %%A in ("%XPLIETT%") do set XPL=%%~A
if "%XPL%" NEQ "[XPP]" for %%A in ("%XPL%") do set XPP=%%~dpnxA


SET url24thL=24
SET /A url24thL -= 1
CALL :CBRSET24_LGrab
GOTO :CBRSET24AUTO

:CBRSET24_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url24thL%  "locset.ini"') DO (
SET CBRIETT=%%A
goto :EOF
)

:CBRSET24AUTO
for %%A in ("%CBRIETT%") do set LOG=%%~A

SET url16thL=16
SET /A url16thL -= 1
CALL :GEXSET16_LGrab
GOTO :GEXSET16AUTO

:GEXSET16_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url16thL%  "locset.ini"') DO (
SET GEXIETT=%%A
goto :EOF
)

:GEXSET16AUTO
for %%A in ("%GEXIETT%") do set GEX=%%~A

SET url24thL=24
SET /A url24thL -= 1
CALL :CBRSET24_LGrab
GOTO :CBRSET24AUTO

:CBRSET24_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url24thL%  "locset.ini"') DO (
SET CBRIETT=%%A
goto :EOF
)

:CBRSET24AUTO
for %%A in ("%CBRIETT%") do set CBR=%%~A

SET url20thL=20
SET /A url20thL -= 1
CALL :XFGSET20_LGrab
GOTO :XFGSET20AUTO

:XFGSET20_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url20thL%  "locset.ini"') DO (
SET XFGIETT=%%A
goto :EOF
)

:XFGSET20AUTO
for %%A in ("%XFGIETT%") do set XFG=%%~A

:DXVERSION
if "%WINVER%"=="XP" set DXV=9
if "%WINVER%"=="VISTA" set DXV=10
if "%WINVER%"=="7" set DXV=11

:RESOLUTION
call "%GBC%\defaultres.bat"
%GBD%
cd "%GBC%"
:RESX
SET url22thL=22
SET /A url22thL -= 1
CALL :RESX3_LGrab
GOTO :RESX3AUTO

:RESX3_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url22thL% "locset.ini"') DO (
SET RESXSETT=%%A
goto :EOF
)

:RESX3AUTO
for %%A in ("%RESXSETT%") do set DREZX=%%~A

:RESY
SET url23thL=23
SET /A url23thL -= 1
CALL :RESY3_LGrab
GOTO :RESY3AUTO

:RESY3_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%url23thL% "locset.ini"') DO (
SET RESYSETT=%%A
goto :EOF
)

:RESY3AUTO
for %%A in ("%RESYSETT%") do set DREZY=%%~A
exit /b