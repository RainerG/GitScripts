@echo off
chcp 437

rem set vspath="C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\bin"
rem set vspath="C:\LegacyApp\Microsoft Visual Studio\Common7\IDE"
rem set vspath="%DEVENV%"
    set vspath="%MSBUILD%"
set cspath=%cd%\..\..
set log=d:\tmp\CompileAll.log
set cnf=Release

del %log%

call CompileSLN %vspath% %cspath% Backup %cnf% %log%
call CompileSLN %vspath% %cspath% BikeTourInfo %cnf% %log%


:EXT
type %log%
echo =
echo ============================================ Summary ==============================================
echo =
findstr /C:"Error(s)" %log%

pause
