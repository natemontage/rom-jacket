SET BTMP=
SET BKTMP=
SET TTMP=
SET FTMP=
SET STMP=
SET BCKDRP=
SET BART=
SET SNAP=
SET TRAIL=

:HYPMETA
if "%HYPOVR%"=="1" goto :MBPATHS
if not exist "%HPN%\Media" goto :MBPATHS

:HYPPATH
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%HPN%\Media\%CONSCAB%\Images\Backgrounds\%CABROM%*.png"') do SET BTMP=%%~nxa
if exist "%BTMP%" set BCKDRP=%BTMP%
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%HPN%\Media\%CONSCAB%\Images\%ARTNUM%\%CABROM%*.png"') do SET FTMP=%%~nxa
if exist "%FTMP%" set BART=%FTMP%
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%HPN%\Media\%CONSCAB%\Video\%CABROM%*.*"') do SET TTMP=%%~dpnxa
if exist "%TTMP%" set TRAIL=%TTMP%
pushd "%GBC%\net\%CABR%"
if "%BCKDRP%" NEQ "" "%GBC%\fart.exe" "%CABROM%.tmp" [FANART] "%BCKDRP%"
if "%BART%" NEQ "" "%GBC%\fart.exe" "%CABROM%.tmp" [FOLDER] "%BART%"
if "%TRAIL%" NEQ "" "%GBC%\fart.exe" "%CABROM%.tmp" [TRAILER] "%TRAIL%"
popd

:MBPATHS
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CABRPTH%\%CABROM%\Backdrop.*"') do SET BKTMP=%CABRPTH%\%CABROM%\%%~nxa
if exist "%BKTMP%" set BCKDRP=%BKTMP%
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CABRPTH%\%CABROM%\Folder.*"') do SET FTMP=%CABRPTH%\%CABROM%\%%~nxa
if exist "%FTMP%" set BART=%FTMP%
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CABRPTH%\%CABROM%\.snaps\*.*"') do SET SNAP=%CABRPTH%\%CABROM%\.snaps\%%~nxa
if exist "%STMP%" set SNAP=%STMP%
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CABRPTH%\%CABROM%\backdrops\*.*"') do SET TTMP=%CABRPTH%\%CABROM%\backdrops\%%~nxa
if exist "%TTMP%" set TRAIL=%TTMP%
pushd "%GBC%\net\%CABR%"
if "%BCKDRP%"=="" CALL :fanartremove 
if "%BART%"=="" CALL :folderremove
if "%SNAP%"=="" CALL :snapsremove 
if "%TRAIL%"=="" CALL :trailremove
CALL :trailadd
popd
exit /b

:trailremove
"%GBC%\fart.exe" "*.tmp" [TRAILERS] --remove
exit /b
)
:fanartremove
"%GBC%\fart.exe" "*.tmp" [FANART] --remove
exit /b
)
:folderremove
"*.tmp" [FOLDER] --remove
exit /b
)
:snapsremove
"%GBC%\fart.exe" "*.tmp" [SNAP] --remove
exit /b
)

:trailadd
CHCP 850
"%GBC%\fart.exe" "*.tmp" [ROM] "%CABROM%"
"%GBC%\fart.exe" "*.tmp" [ROMPTH] "%CABRPTH%\%CABROM%\%CABBAT%"
"%GBC%\fart.exe" "*.tmp" [EMUL] "%CONSCAB%"
"%GBC%\fart.exe" "*.tmp" [FOLDER] "%BART%"
"%GBC%\fart.exe" "*.tmp" [FANART] "%BCKDRP%"
"%GBC%\fart.exe" "*.tmp" [SNAP] "%SNAP%"
"%GBC%\fart.exe" "*.tmp" [TRAILER] "%TRAIL%"
type "%GBC%\net\%CABR%\%CABROM%.tmp">>"%GBC%\net\%CABR%\config.xml"
rename "%GBC%\net\%CABR%\%CABROM%.tmp" "%CABROM%.set"
CHCP 1252
:GAMFIN