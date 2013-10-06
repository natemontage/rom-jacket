pushd "%~dp0"

> j_unzip.vbs ECHO '
>> j_unzip.vbs ECHO ' Dim ArgObj, var1, var2
>> j_unzip.vbs ECHO Set ArgObj = WScript.Arguments
>> j_unzip.vbs ECHO If (Wscript.Arguments.Count ^> 0) Then
>> j_unzip.vbs ECHO. var1 = ArgObj(0)
>> j_unzip.vbs ECHO Else
>> j_unzip.vbs ECHO. var1 = ""
>> j_unzip.vbs ECHO End if
>> j_unzip.vbs ECHO If var1 = "" then
>> j_unzip.vbs ECHO. strFileZIP = "7za.zip"
>> j_unzip.vbs ECHO Else
>> j_unzip.vbs ECHO. strFileZIP = var1
>> j_unzip.vbs ECHO End if
>> j_unzip.vbs ECHO 'The location of the zip file.
>> j_unzip.vbs ECHO REM Set WshShell = CreateObject("Wscript.Shell")
>> j_unzip.vbs ECHO REM CurDir = WshShell.ExpandEnvironmentStrings("%%cd%%")
>> j_unzip.vbs ECHO Dim sCurPath
>> j_unzip.vbs ECHO sCurPath = CreateObject("Scripting.FileSystemObject").GetAbsolutePathName(".")
>> j_unzip.vbs ECHO strZipFile = sCurPath ^& "\" ^& strFileZIP
>> j_unzip.vbs ECHO 'The folder the contents should be extracted to.
>> j_unzip.vbs ECHO outFolder = sCurPath ^& "\"
>> j_unzip.vbs ECHO Set objShell = CreateObject( "Shell.Application" )
>> j_unzip.vbs ECHO Set objSource = objShell.NameSpace(strZipFile).Items()
>> j_unzip.vbs ECHO Set objTarget = objShell.NameSpace(outFolder)
>> j_unzip.vbs ECHO intOptions = 256
>> j_unzip.vbs ECHO objTarget.CopyHere objSource, intOptions
>> j_unzip.vbs ECHO REM Dim MyVar

popd