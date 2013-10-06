pushd "%GBC%\net\%EXECT%\%ATMS%"
"%GBC%\fart.exe" "*.ini" [EMUL] "[EMUPTH]"
popd
copy /y "%GBE%\%EMUZ%\%DMUL%\roms\awbios.zip" "%GBC%\net\%EXECT%\%ATMS%"
echo.mkdir "roms">>"%GBC%\bioscpy.ini"
echo.mkdir "nvram">>"%GBC%\bioscpy.ini"
echo.mkdir "memsaves">>"%GBC%\bioscpy.ini"
echo.mkdir "scache">>"%GBC%\bioscpy.ini"
echo.mkdir "snap">>"%GBC%\bioscpy.ini"
echo.mkdir "sstates">>"%GBC%\bioscpy.ini"
echo.copy /y "awbios.zip.bak" "roms\awbios.zip">>"%GBC%\bioscpy.ini"
"%SEVENZIP%" e -y "%GBC%\net\EmuEx.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%CEMU%\%CSTCONS%.exe"
for /d %%g IN ("%CSTM%") DO (
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\ATMSexeject.bat"
  )
  exit /b
  
:injext
pushd "%GBC%\net\%EXECT%\%ATMS%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1