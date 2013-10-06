"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%SEGDC%\%NULLDC%.cfg" [ROM] "%DCROM%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%SEGDC%\%NULLDC%.cfg" [ROMPTH] "[ROMPTH]"
if /i "%CFGFTMX%"==".bat" "%GBC%\fart.exe" "%CFGFTMP%" "[DSP]displayswitch /extend" "ATTRIB -R \"%NULLDC%.cfg"\"