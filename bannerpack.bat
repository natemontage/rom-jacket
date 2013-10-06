for %%a in ("%GBC%\net\%BANN%\%BANN%.zip") do set BANNFILE=%%~nxa
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANNFILE%" -o"%GBC%\net\%BANN%"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
copy /Y "%GBC%\net\%BANN%\%%~a.png" "%GBG%\%GAM%\%CONS%\%%~a\%BANN%.png"
)
copy /Y "%GBC%\net\%BANN%\Favorites.png" "%GBG%\%GAM%\%CONS%\%%~a\%BANN%.png"