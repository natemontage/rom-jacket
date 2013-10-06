pushd "%GBC%"
:x64rartst
if not exist "%PRGX%\WinRAR\UnRAR.exe" (goto :localrartst)
for %%A in ("%PRGX%\WinRAR\UnRAR.exe") do set UNRAR=%%~A
"%GBC%\fart.exe" "locset.ini" "[RAR]" "%UNRAR%"
goto :x647ztst

:localrartst
if not exist "%GBC%\UnRaR.exe" goto :x86rartst
for %%A in ("%GBC%\unrar.exe") do set UNRAR=%%~A
"%GBC%\fart.exe" "locset.ini" "[RAR]" "%UNRAR%"
goto :x647ztst

:x86rartst
if not exist "%PRGF%\WinRAR\UnRAR.exe" (goto :autogetRAR) 
for %%A in ("%PRGF%\WinRAR\UnRAR.exe") do set UNRAR=%%~A
"%GBC%\fart.exe" "locset.ini" "[RAR]" "%UNRAR%"
goto :x647ztst

:autogetRAR
if exist "%GBC%\UnRAR.exe" goto :x647ztst

if exist "%GBC%\UnRAR.exe" goto :SETRAR
for %%A in ("unrarw32.*") do set RARXE=%%~A
for /f "delims=" %%a in ('dir /b "%RARXE%"') do set RARFILE=%%~nxa
%RARFILE% /S /D"%CD%"
move /Y "%CD%\readme.txt" "%CD%\RAReadme.txt"
move /Y "%CD%\license.txt" "%CD%\RARlic.txt"
:SETRAR
for %%A in ("%GBC%\UnRAR.exe") do set UNRAR=%%~A
"%GBC%\fart.exe" "locset.ini" "[RAR]" "%UNRAR%"
goto :x647ztst

:x647ztst
if not exist "%PRGX%\7-Zip\7z.exe" goto :x867ztst
for %%A in ("%PRGX%\7-Zip\7z.exe") do set SEVENZIP=%%~A
"%GBC%\fart.exe" "locset.ini" "[SVZ]" "%SEVENZIP%"
goto :mb_tst

:x867ztst
if not exist "%PRGF%\7-Zip\7z.exe" goto :autoget7z
for %%A in ("%PRGF%\7-Zip\7z.exe") do set SEVENZIP=%%~A
"%GBC%\fart.exe" "locset.ini" "[SVZ]" "%SEVENZIP%"
goto :mb_tst

:autoget7z
if not exist "%GBC%\7za.exe" goto :get7za
for %%A in ("%GBC%\7za.exe") do set SEVENZIP=%%~A
"%GBC%\fart.exe" "locset.ini" "[SVZ]" "%SEVENZIP%"
goto :mb_tst

:get7za
CALL "%GBC%\7zip.bat"
cscript //B "j_unzip.vbs" "7za.zip" ""
move /Y "%GBC%\license.txt" "%GBC%\7zlicense.txt"
move /Y "%GBC%\readme.txt" "%GBC%\7zreadme.txt"
for %%A in ("%GBC%\7za.exe") do set SEVENZIP=%%~A
"%GBC%\fart.exe" "locset.ini" "[SVZ]" "%SEVENZIP%"
goto :mb_tst

:mb_tst
if exist "%PROGRAMDATA%\%MBRWS%" SET MBR=1

:gb_tst
if exist "%PROGRAMDATA%\%MBRWS%\%PLGN%\%GBRWS%.dll" SET GBR=1

:aria2c
if not exist "%GBC%\aria2c.exe" "%SEVENZIP%" e -y "%GBC%\aria2c.7z" -o"%GBC%" "aria2c.exe"

:resolution
call "%GBC%\defaultres.bat"
"%GBC%\fart.exe" "locset.ini" [REX] %DREZX%
"%GBC%\fart.exe" "locset.ini" [REY] %DREZY%
popd