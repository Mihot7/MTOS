echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo LITE Edition      │
echo ──────────────────┘
if %edition%==lite goto exit

:menu
Echo Czy chcesz zamienić swój system na LITE EDITION (Nie ma powrotu.) (Usunie to dane użytkownika.)
set /p choose=[y/n]: 
if %choose%==y goto lite
if %choose%==n goto exit
echo invalid choose
goto menu 

:lite
echo Zmienianie edycji...
Ping www.google.com -n 1 -w 1000>nul
if errorlevel 1 (echo Brak połączenia internetowego! && goto exit) else (echo Jesteś połączony z internetem! && goto next)

:next
call lite.cmd



:exit
if %edition%==lite echo Już jesteś w edycji LITE.
set prog=1
%shell%