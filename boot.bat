@echo off
set shell=MTOS_SHELL
chcp 65001
cd system
call SendKey "{f11}"
set MTOS_Sys_Location=%cd%
cd ..
title MTOS
set /p ver=<"config/ver"
set /p color=<"config/color"
color %color%
set prog=0

cls
echo.
echo Booting MTOS...
timeout /t 5 /nobreak >nul
cd system
call PlaySound "sounds\startup.wav"
cd ..
cd prog
if exist %shell%.bat (
    goto normal_boot
) else (
    goto safe_boot
)

:normal_boot
cd..
sys
Echo ERROR! (E02)
pause
echo shutting down!
timeout /t 5 /nobreak >nul
exit

:safe_boot
set shell=safe_shell
echo UWAGA, SYSTEM USZKODZONY! WCHODZENIE W TRYB AWARYJNY. 
timeout /t 2 /nobreak >nul
echo Pobieranie plików repair.bat oraz repair.cmd (na wypadek ich uszkodzenia)
del repair.bat /q>nul
del repair.cmd /q>nul
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/repair.bat --silent --output repair.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/repair.cmd --silent --output repair.cmd
timeout /t 2 /nobreak >nul
echo Pobieranie pliku help.bat (na wypadek jego uszkodzenia)
del safe_shell.bat /q>nul
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/help.bat --silent --output help.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/2shell.bat --silent --output safe_shell.bat
timeout /t 2 /nobreak >nul
cd..
call sys.bat
Echo ERROR! (E01)
pause
echo shutting down!
timeout /t 5 /nobreak >nul
exit
