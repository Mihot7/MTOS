@echo off
chcp 65001
rem Boże, daj mi siły, aby oczyścić ten kod.
echo Booting MTOS...
rem     │     ─   └    ┘    ┌    ┐    ┤    ├    ┼    ┴    ┬
set kernel=sys
set shell=MTOS_SHELL
cd system
call SendKey "{f11}"
set BOOTING=true
set SYSTEM_FOLDER=%cd%
set crash="%SYSTEM_FOLDER%\crash.bat"
set bootfile="%SYSTEM_FOLDER%\boot.bat"
cd ..
title MTOS
echo Loading personal settings...
call "%SYSTEM_FOLDER%\config.bat"

Echo Sprawdzanie połączenia z serwerem aktualizacji...
type "%SYSTEM_FOLDER%\please_dont_delete_me_im_important.txt"
Ping www.github.com -n 1 -w 1000>nul
if errorlevel 1 (echo Brak połączenia z serwerem! && echo error>latestver) else (echo Sprawdzanie najnowszej wersji... && curl https://raw.githubusercontent.com/Mihot7/MTOS/main/config/ver --output latestver --silent)
set /p latestver=<"latestver"
del latestver /q
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
if /I %2==/safe goto safe_boot
if /I %1==/debug set debug=true
if /I %2==/debug set debug=true

:boot
timeout /t 1 /nobreak>nul
cd plugins
echo Loading plugins...
rem daemon free zone xDDDD Chyba, że ktoś serio napisze daemona w batchu. Powodzenia 
for %%G in (*.bat) do call "%%G" && set /a plugins=plugins+1
timeout /t 1 /nobreak>nul
cd ..
cd prog
if exist %shell%.bat (
    goto normal_boot
) else (
    goto safe_boot
)
rem Wiecie co oznacza skrót FNAF?
rem Five nights of fuckery to get this shit working.

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
rem Jaki kuźwa błąd E01???? 
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