pushd "%GBC%\net\%EXECT%\%NDS%"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%CEMU%\%EMEXE%.exe"
copy /y "%GBE%\%EMUZ%\%NOGBA%\firmware.bin" "%GBC%\net\%EXECT%\%NDS%"
if exist "%GBE%\%EMUZ%\%NOGBA%\firmware.bin" "%GBC%\inifile.exe" "%NOGBA%.ini" [.] Reset/Startup Entrypoint == GBA BIOS (Nintendo logo)
echo. copy /y "firmware.bin.bak" "firmware.bin">>"%GBC%\prefxe.ini"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\NDSexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NDS%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".ds" set NDSROM=%%~a
if /I "%%~xa"==".ds" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ds
if /I "%%~xa"==".nds" set NDSROM=%%~a
if /I "%%~xa"==".nds" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nds
if /I "%%~xa"==".nd5" set NDSROM=%%~a
if /I "%%~xa"==".nd5" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nd5
popd
)
exit /b
:addto
SET /A ADDTO+=1