@echo off
chcp 65001
cd system
call SendKey "{f11}"
set MTOS_Sys_Location=%cd%
cd ..
title MTOS
set /p ver=<"config/ver"
set /p shell=<"config/shell"
set /p color=<"config/color"
color %color%
set prog=0

cls
echo.
echo MTOS %ver% Boot Manager
timeout /t 2 /nobreak >nul
cd system
call PlaySound "sounds\startup.wav"
cd ..
echo Booting MTOS...
timeout /t 5 /nobreak >nul
sys