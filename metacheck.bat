SET BDWN=BACKDROPS NEEDED
SET IDWN=ICONS NEEDED
SET VDWN=0 VIDEOS in cache
SET WDWN=BANNERS NEEDED
if exist "%GBC%\net\%BCKD%\%BCKD%.zip" SET BDWN= BACKDROPS DOWNLOADED
if exist "%GBC%\net\%FLDR%\%FLDR%.zip" SET IDWN= ICONS DOWNLOADED
if exist "%GBC%\net\%BANN%\%BANN%.zip" SET WDWN= BANNERS DOWNLOADED
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\%VIDE%\*.mp4"') do SET VIDEXST=%%~a
set VIDNUM=
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\%VIDE%\*.mp4"') do SET /A VIDNUM+=1
if exist "%GBC%\net\%VIDE%\%VIDEXST%" SET VDWN= %VIDNUM% VIDEOS DOWNLOADED	