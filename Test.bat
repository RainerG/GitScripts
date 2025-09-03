@echo off

rem Variablen
set pth=%cd%
set txt_file=%pth%\FileList.txt

@echo on

rem for /f "delims=" %%a in ('type "%txt_file%" ^| findstr /i "[^\\]$"') do move /y "%src_dir%\%%a" "%dest_dir%"  
for /f "delims=" %%a in ('type "%txt_file%" ^| findstr /i "[^\\]$"') do %pth%\GitClone.sh %%a

pause