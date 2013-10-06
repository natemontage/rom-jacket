pushd "%GBC%\net\%EXECT%\%MSX%"
popd
for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\MSXexeject.bat"
  )
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%MSX%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".dsk" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] dsk
if /I "%%~xa"==".dsk" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".mx1" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mx1	
if /I "%%~xa"==".mx1" "%GBC%\fart.exe" "*.bat" [TYPE] rom1
if /I "%%~xa"==".mx2" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mx2
if /I "%%~xa"==".mx2" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".rom" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".ri" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ri
if /I "%%~xa"==".ri" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".sc" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] sc
if /I "%%~xa"==".sc" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".di1" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] di1
if /I "%%~xa"==".di1" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".di2" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] di2	
if /I "%%~xa"==".di2" "%GBC%\fart.exe" "*.bat" [TYP] diskA	
if /I "%%~xa"==".360" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] 360	
if /I "%%~xa"==".360" "%GBC%\fart.exe" "*.bat" [TYP] diskA	
if /I "%%~xa"==".720" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] 720	
if /I "%%~xa"==".720" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".sf7" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] sf7
if /I "%%~xa"==".sf7" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".cas" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cas
if /I "%%~xa"==".cas" "%GBC%\fart.exe" "*.bat" [TYP] cas
popd
)
exit /b
:addto
SET /A ADDTO+=1