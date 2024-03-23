echo Witamy, w MFR!
echo CZY CHCESZ NAPRAWIĆ SYSTEM?
set /p choose=[y/n]: 
if %choose%==y goto repair
if %choose%==n goto exit

:repair
echo Wpisz nazwe systemowego pakietu który nie działa. (wpisz "shell" jeśli chcesz go naprawić!)
set /p rpkg=NAZWA:
if %rpkg%==shell goto shell
del %rpkg%.bat /q
curl https://raw.githubusercontent.com/Mihot7/MTOS/main/prog/%rpkg%.bat --silent --output %rpkg%.bat
echo Pakiet naprawiony!

:shell
del %shell%.bat /q
curl https://raw.githubusercontent.com/Mihot7/MTOS/main/prog/%shell%.bat --silent --output %shell%.bat

:exit
set prog=1
%shell%