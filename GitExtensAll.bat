@echo off

rem Variablen
set pth=%cd%
set txt_file=%pth%\FileList.txt

cd ..
del /S *out.txt
cd %pth%

@echo on

cd ..

for /f "delims=" %%a in ('type "%txt_file%" ^| findstr /i "[^\\]$"') do start /Realtime GitExtensions %%a
