@echo off

rem Variablen
set pth=%cd%
set txt_file=%pth%\FileList.txt

cd ..
del /S *out.txt
cd %pth%

@echo on

cd ..

rem for /f "delims=" %%a in ('type "%txt_file%" ^| findstr /i "[^\\]$"') do move /y "%src_dir%\%%a" "%dest_dir%"  
for /f "delims=" %%a in ('type "%txt_file%" ^| findstr /i "[^\\]$"') do start /Realtime %pth%\%1 %%a
