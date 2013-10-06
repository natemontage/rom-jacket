for %%a in ("%GBC%\net\%BCKD%\%BCKD%.zip") do set BCKDFILE=%%~nxa
"%SEVENZIP%" x -y "%GBC%\net\%BCKD%\%BCKDFILE%" -o"%GBC%\net\%BCKD%"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
copy /Y "%GBC%\net\%BCKD%\%%~a.jpg" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%.jpg"
copy /Y "%GBC%\net\%BCKD%\%%~a1.jpg" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%1.jpg"
copy /Y "%GBC%\net\%BCKD%\%%~a2.jpg" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%2.jpg"
copy /Y "%GBC%\net\%BCKD%\%%~a3.jpg" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%3.jpg"
copy /Y "%GBC%\net\%BCKD%\%%~a4.jpg" "%GBG%\%GAM%\%CONS%\%%~a\%BCKD%4.jpg"
)
copy /Y "%GBC%\net\%BCKD%\Favorites.jpg" "%GBG%\%GAM%\%CONS%\%BCKD%.jpg"