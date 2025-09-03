echo %3
rem call %1\devenv.exe %2\%3\%3.sln /build %4 /Out %5
call %1\msbuild.exe %2\%3\%3.sln /p:Configuration=%4 /v:n >> %5

