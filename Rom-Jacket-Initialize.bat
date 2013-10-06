cd RomJacket
xxmklink.exe "UNINSTALL-Rom-Jacket.lnk" "%CD%\Uninstaller.bat" " " "%CD%" Rom-Jacket-Uninstall 7 "%CD%\Jacket.ico"
move /Y "Rom-Jacket-Initialize.lnk" ..\
cmd /c start /min "" START.bat && exit



