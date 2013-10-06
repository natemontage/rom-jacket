
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\xgs.rom"') do SET APL2GSBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\*APPLE2GS*.rom2"') do set APL2GSBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\ROM 03"') do SET APL2GSBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\*ROM 01"') do SET APL2GSBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%KEGS%\*Rom03gd*"') do SET APL2GSBIOS=%%~a


for /d %%g IN (*) DO (
copy /Y "%GBC%\net\%LNCH%\%APL2GS%\config.kegs" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\APL2GSinject.bat"
popd
)
exit /b
:injext
"%GBC%\fart.exe" "config.kegs" [BIOS] "%APL2GSBIOS%"
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%APL2GSDSK%"') do (
"%GBC%\fart.exe" "*.bat" ".[EXT]" "%%~xa"
)
:skp