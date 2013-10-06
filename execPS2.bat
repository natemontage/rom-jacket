for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*0.bin"') do set PS2BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*4.bin"') do set PS2BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\BIOS\scph*7*.bin"') do set PS2BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\spu2*.dll"') do set PS2AUD=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\lilypad*.dll"') do set PS2PAD=%%~a
copy /y "%GBE%\%EMUZ%\%PCSX2%\BIOS\%PS2BIOS%" "%GBC%\net\%EXECT%\%PS2%"
echo.mkdir "inis">>"%GBC%\bioscpy.ini"
echo.mkdir "bios">>"%GBC%\bioscpy.ini"
echo.copy /y "%PS2BIOS%.bak" "BIOS\%PS2BIOS%">>"%GBC%\bioscpy.ini"
CALL "%GBC%\SSETEST.bat"

for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=AVX
for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=SSE2
for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=SSE4
for %%A in ("%SSEERS%") do if "%%~A" NEQ "" SET SSEV=SSSE3
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PCSX2%\%PLGN%\gsdx32*%SSEV%.dll"') do set PS2GFX=%%~a
pushd "%GBC%\net\%EXECT%\%PS2%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2BIOS] "%PS2BIOS%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2AUD] "%PS2AUD%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2PAD] "%PS2PAD%"
"%GBC%\fart.exe" "PCSX2_ui.ini" [PS2GFX] "%PS2GFX%"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\PS2exeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%PS2%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
set ROM=%%~a
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
if /I "%%~xa"==".iso" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".img" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".bin" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".cdi" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".nrg" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".mdf" CALL "%GBC%\PS2exeject.bat
if /I "%%~xa"==".cue" CALL "%GBC%\PS2exeject.bat
popd
)
exit /b
:addto
SET /A ADDTO+=1