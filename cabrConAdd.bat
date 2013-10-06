pushd "%GBC%\net\%CABR%"
"%GBC%\fart.exe" "%CONSCAB%.cfg" [EMUL] "%CONSCAB%"
"%GBC%\fart.exe" "%CONSCAB%.cfg" [BATCH] "%BATCHL%.exe"
"%GBC%\fart.exe" "%CONSCAB%.cfg" [BATCHPATH] "%GBE%\%EMUZ%\%BATCHL%
popd
type "%GBC%\net\%CABR%\%CONSCAB%.cfg">>"%GBC%\net\%CABR%\config.xml"
