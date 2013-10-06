for /d %%g IN (*) DO (
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\APL2Einject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%APL2EDSK%"') do (
"%GBC%\fart.exe" "*.bat" .[EXT] %%~xa
)
:skp