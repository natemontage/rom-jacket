for %%A in ("%TOUHLNK%") do set Shortcut=%%~A
echo set WshShell = WScript.CreateObject("WScript.Shell")>DecodeShortCut.vbs
echo set Lnk = WshShell.CreateShortcut(WScript.Arguments.Unnamed(0))>>DecodeShortCut.vbs
echo wscript.Echo Lnk.TargetPath>>DecodeShortCut.vbs
set vbscript=cscript //nologo DecodeShortCut.vbs
For /f "delims=" %%T in ( ' %vbscript% "%Shortcut%" ' ) do set target=%%T
del DecodeShortCut.vbs
pushd "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%"
"%GBC%\fart.exe" "*.bat" "REM [LNK]" [LNK]
"%GBC%\fart.exe" "*.bat" [LNK] "REG ADD \"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers\" /v \"%target%\" /t REG_SZ /d \"WINXPSP3 RUNASADMIN\" /f"
"%GBC%\fart.exe" "*.bat" "REM [SDK]" [SDK]
"%GBC%\fart.exe" "*.bat" [SDK] "start /wait \"\"  \"^%%GAMNAM%%.lnk\""
popd