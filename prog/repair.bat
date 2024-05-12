echo Witamy, w MFR!
if %build%==alpha echo WERSJA ALPHA NIE WSPIERA POLECENIA REPAIR && goto exit
if %build%==beta echo WERSJA BETA NIE WSPIERA POLECENIA REPAIR && goto exit
if %build%==unofficial echo Wersja nieoficjalna. Kontynuacja nie wskazana.
echo CZY CHCESZ NAPRAWIĆ SYSTEM?
set /p choose=[y/n]: 
if %choose%==y goto net_check
if %choose%==n goto exit

:net_check
Echo Sprawdzanie połączenia internetowego...
Ping www.google.com -n 1 -w 1000
cls
if errorlevel 1 (goto no_net_exit) else (echo Jesteś połączony z internetem! && goto repair)

:repair
call repair.cmd

:exit
set prog=1
%shell%

:no_net_exit
echo Brak połączenia z internetem
set prog=1
%shell%