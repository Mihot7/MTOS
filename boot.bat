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

:safe_boot
set shell=2shell
echo UWAGA, SYSTEM USZKODZONY! WCHODZENIE W TRYB AWARYJNY. 
timeout /t 2 /nobreak >nul
echo Pobieranie pliku repair.bat (na wypadek jego uszkodzenia)
del repair.bat /q
curl https://raw.githubusercontent.com/Mihot7/MTOS/main/prog/repair.bat --silent --output repair.bat
timeout /t 2 /nobreak >nul
cd..
call sys.bat
