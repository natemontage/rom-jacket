ATTRIB +H "%GBG%\%ROMJ%\SORTED ARCHIVES"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :hidemeta
popd
)
exit /b

:hidemeta
for /f "tokens=* delims= " %%a in ('dir /b /a "*.settings"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.config"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.conf"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.cfg"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.ini"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.jpg"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.png"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.xml"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.tbn"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.nfo"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.pdf"') do if "%%~xa"==".pdf" move /y "%%~a" ".Man"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.mp4"') do if "%%~xa"==".mp4" move /y "%%~a" "backdrops"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.exe"') do if "%%~xa"==".exe" SET EXEFLAG=1