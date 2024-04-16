@echo off
goto start
----------------------
.bat-file for automatization assembly proccess
----------------------
:start
if "%1" equ "" goto error
nasm -f bin %1.asm -o %1.com
goto end
:error
echo Are you going to compile something?
:end
