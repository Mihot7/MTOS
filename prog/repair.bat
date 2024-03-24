echo Witamy, w MFR!
echo CZY CHCESZ NAPRAWIĆ SYSTEM?
set /p choose=[y/n]: 
if %choose%==y goto repair
if %choose%==n goto exit

:repair
call repair.cmd

:exit
set prog=1
%shell%