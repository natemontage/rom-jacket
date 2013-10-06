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
call :injext
CALL "%GBC%\PS2inject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d') do (
set ROM=%%~a
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".iso" CALL "%GBC%\PS2inject.bat
if /I "%%~xa"==".img" CALL "%GBC%\PS2inject.bat
if /I "%%~xa"==".bin" CALL "%GBC%\PS2inject.bat
if /I "%%~xa"==".cdi" CALL "%GBC%\PS2inject.bat
if /I "%%~xa"==".nrg" CALL "%GBC%\PS2inject.bat
if /I "%%~xa"==".mdf" CALL "%GBC%\PS2inject.bat
if /I "%%~xa"==".cue" CALL "%GBC%\PS2inject.bat
)
:skp