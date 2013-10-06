for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%EXECT%\%ACELE%\electrem.cfg" "%%~g"
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\ACELEinject.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" "%GBC%\net\%EXECT%\%CSTCONS%" "%CEMU%\%EMEXE%.exe"
popd
)
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".uef" "%GBC%\fart.exe" "*.bat" [EXT] uef
if /I "%%~xa"==".ssd" "%GBC%\fart.exe" "*.bat" [EXT] ssd
)
exit /b
:addto
SET /A ADDTO+=1