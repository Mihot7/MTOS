@echo off
echo Booting MTOS...
rem     │     ─   └    ┘    ┌    ┐    ┤    ├    ┼    ┴    ┬
set kernel=sys
set shell=MTOS_SHELL
chcp 65001
cd system
call SendKey "{f11}"
set BOOTING=true
set SYSTEM_FOLDER=%cd%
set crash="%SYSTEM_FOLDER%\crash.bat"
set bootfile="%SYSTEM_FOLDER%\boot.bat"
cd ..
title MTOS
set plugins=0
set config=false
set cdprog=false
set /p ver=<"config/ver"
set /p color=<"config/color"
set /p boot=<"config/boot"
set /p build=<"config/build"
set /p builder=<"config/builder"
set /p edition=<"config/edition"
color %color%
set prog=0
cd user_files
set userfolder=%cd%
cd ..
cd "%SYSTEM_FOLDER%\discord_status"
call discord.bat
cd ..
cd ..
set discord="%SYSTEM_FOLDER%\discord_status\discord.bat"
echo.
set booting==false
if [%1]==[] goto boot
if /I %1==/safe goto safe_boot

:boot
timeout /t 1 /nobreak>nul
cd plugins
echo Loading plugins...
for %%G in (*.bat) do call "%%G" && set /a plugins=plugins+1
timeout /t 1 /nobreak>nul
cd ..
cd prog
if exist %shell%.bat (
    goto normal_boot
) else (
    goto safe_boot
)

:normal_boot
cd..
%kernel%
set errorcode=KERNEL_ERROR
%crash%

:safe_boot
cd prog
set shell=safe_shell
echo UWAGA, SYSTEM USZKODZONY! WCHODZENIE W TRYB AWARYJNY. 
Echo Sprawdzanie połączenia internetowego...
Ping www.google.com -n 1 -w 1000>nul
if errorlevel 1 (echo Brak połączenia internetowego! && goto choosenet1) else (echo Jesteś połączony z internetem! && goto net_boot)

:choosenet1
echo Wybierz czy:
echo 1. Chcesz zbootować system bez internetu. (może zakończyć sie błędem E01)
echo 2. Spróbuj ponownie sprawdzić połączenie
echo 3. Wyłącz system.
set /p choose=[1,2,3]: 
if %choose%==1 goto no_net_boot
if %choose%==2 goto safe_boot
if %choose%==3 goto shutdown
echo Nie prawidłowy wybór!
pause
cls
goto choosenet1

:net_boot
if %build%==alpha echo Wykryto wersje alpha która, nie posiada serwerów z plikami. && goto crash
if %build%==beta echo Wykryto wersje beta która, nie posiada serwerów z plikami. && goto crash
if %build%==unofficial echo Wersja nieoficjalna. Kontynuacja nie dozwolona. && goto crash
timeout /t 2 /nobreak >nul
echo Pobieranie plików 2shell, help.bat oraz repair.bat (na wypadek ich uszkodzenia)
del repair.bat /q>nul
del safe_shell.bat /q>nul
del help.bat /q>nul
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/repair.bat --silent --output repair.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/help.bat --silent --output help.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/2shell.bat --silent --output safe_shell.bat
timeout /t 2 /nobreak >nul
cd..
%kernel%
set errorcode=KERNEL_ERROR
%error%

:no_net_boot
%kernel%
set errorcode=KERNEL_ERROR
%error%

:shutdown
echo shutting down!
timeout /t 5 /nobreak >nul
exit

:crash
set errorcode=BUILD_ID_IS_NOT_SUPPORTED_BY_SERVER
%crash%