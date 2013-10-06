for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*0.bin"') do set PS2BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*4.bin"') do set PS2BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*7*.bin"') do set PS2BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\spu2*.dll"') do set PS2AUD=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\lilypad*.dll"') do set PS2PAD=%%~a

CALL "%GBC%\SSETEST.bat"

for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=AVX
for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=SSE2
for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=SSE4
for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=SSSE3
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\gsdx32*%SSEV%.dll"') do set PS2GFX=%%~a
pushd "%GBC%\net\%LNCH%\%PS2%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2BIOS] "%PS2BIOS%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2AUD] "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\%PS2AUD%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2PAD] "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\%PS2PAD%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2GFX] "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\%PS2GFX%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "PCSX2_ui.ini" \ \\
if "%GGOFF%"=="1" copy /y "*.ini" "%GBE%\%EMUZ%\%PCSX2%\inis"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PS2%\*.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.iso" "*.img" "*.bin" "*.cdi" "*.nrg" "*.mdf" "*.cue"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
CALL :EACHROM
if "%%~xa" NEQ "" CALL "%GBC%\PS2inject.bat
)
exit /b
:EACHROM
if exist "%ROMD%.bat" CALL :ROME
if not exist "%ROMD%.bat" CALL :ROMD
exit /b

:ROMD
if "%RECONF%"=="1" copy "..\zz.bat" "%CD%\%ROMD%.bat"
"%GBC%\fart.exe" "%ROMD%.bat" [ROMNAME] "%ROMN%"
exit /b

:ROME
if "%RECONF%"=="1" copy "..\zz.bat" "%CD%\%ROME%.bat"
"%GBC%\fart.exe" "%ROME%.bat" [ROMNAME] "%ROMN%"
exit /b