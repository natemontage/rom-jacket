for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media"') do (
SET HYPNAM=%%~a
CALL :HSCONTHEME
)
exit /b
:HSCONTHEME
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\Favorites\Images\Letters\*.png"') do copy /Y %%~a" "%HPN%\Media\%HYPNAM%\Images\Letters"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\Favorites\Images\Special\*.png"') do copy /Y %%~a" "%HPN%\Media\%HYPNAM%\Images\Special"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\Favorites\Images\Other\*.png"') do copy /Y %%~a" "%HPN%\Media\%HYPNAM%\Images\Other"