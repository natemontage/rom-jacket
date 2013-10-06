del /q "%GBC%\crc.ini"
:GETZIPS
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBC%\net\BIOS\*.zip"') do (
set rompath=%%~dpa
set romfile=%%~nxa
set romname=%%~a
set romext=%%~xa
call :crctest
)	
goto :MATCHCRC

:crctest
set romp=%rompath:~0,-1%
for /f "tokens=1,2 delims=:" %%a in ('%GBC%\crc.exe "%romname%"') do echo.%romfile%:%%~b:>>"%GBC%\crc.ini"
exit /b

:MATCHCRC
pushd "%GBC%"
"%GBC%\fart.exe" "crc.ini" :; --remove
popd
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "*.zip"') do (
set BIOSN=%%~nxa
set BIOSNAME=%%~a
call :CRCMATCH
)
exit /b

:CRCMATCH
for /f "tokens=1,2 delims=:" %%a in ('%GBC%\crc.exe "%BIOSNAME%"') do (
SET MESN=%%~a
SET CRCM=%%~b
call :CRCM
)
exit /b

:CRCM
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\net\CRC\Mess.set"') do (
SET MESSBN=%%~a
SET CRCMATCH=%%~b
if "%%~b"=="%CRCM%" call :updtbios
)
exit /b
:updtbios
start "" "%GBC%\Wbusy.exe" "InstallingBios" "Installing %BIOSN%"  /marquee
move /y "%BIOSNAME%" "%GBE%\%EMUZ%\Mess\roms" && rename "%GBE%\%EMUZ%\Mess\roms\%BIOSN%" "%MESSBN%"