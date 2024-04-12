goto start
----------------------
.bat-file for automatization assembly proccess
Key "-l" makes .lst-file which contains machine codes in front of each string
----------------------
:start
@echo off
if "%1" equ "" goto error
nasm -f bin %1.asm -l %1.lst -o %1.com
goto end
:error
echo Are you going to compile something?
:end