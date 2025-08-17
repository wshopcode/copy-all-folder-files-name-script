@echo off

REM Get current date and time to generate a unique filename


for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set "dt=%%I"


set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"


set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"



REM Create a unique filename with timestamp
set "filename=names_%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%.txt"



REM Generate the list of files and output to the unique filename
dir /a /b /-p /o:gen > "%filename%"



REM Message indicating completion
echo File list generated: %filename%
