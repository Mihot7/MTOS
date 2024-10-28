echo ───────────────────────────┐
echo Godzina: %time%
echo ───────────────────────┬───┘
echo MIHOT FILE REPAIR      │
echo ───────────────────────┘

if %build%==alpha echo Wykryto wersje alpha która, nie posiada serwerów z plikami. && goto exit
if %build%==beta echo WWykryto wersje beta która, nie posiada serwerów z plikami. && goto exit
if %build%==unofficial echo Wersja nieoficjalna. Kontynuacja nie dozwolona. && goto exit
echo CZY CHCESZ NAPRAWIĆ SYSTEM?
set /p choose=[y/n]: 
if %choose%==y goto net_check
if %choose%==n goto exit

:net_check
Echo Sprawdzanie połączenia internetowego...
Ping www.google.com -n 1 -w 1000
cls
if errorlevel 1 (goto no_net_exit) else (echo Jesteś połączony z internetem! && goto repair)
if %edition%==lite goto lite

:repair
echo Naprawianie systemu... Zostanie pobrane ok. 200KB danych!
echo UŻYWANIE SERVERA: MTOS-REPAIR-SERVER/main/%ver%/
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/2shell.bat --silent --output 2shell.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/clear.bat --silent --output clear.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/clock.bat --silent --output clock.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/discord.bat --silent --output discord.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/help.bat --silent --output help.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/info.bat --silent --output info.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/kalkulator.bat --silent --output kalkulator.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/mihot31.bat --silent --output mihot31.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/MTOS_SHELL.bat --silent --output MTOS_SHELL.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/music.bat --silent --output music.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/mycitynew.bat --silent --output mycitynew.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/mycityold.bat --silent --output mycityold.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/mycityremastered.bat --silent --output mycityremastered.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/poweroff.bat --silent --output poweroff.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/reboot.bat --silent --output reboot.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/repair.bat --silent --output repair.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/repo.bat --silent --output repo.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/settings.bat --silent --output settings.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/uninstaller.bat --silent --output uninstaller.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/Virustest.bat --silent --output Virustest.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/convert.bat --silent --output convert.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/downloader.bat --silent --output downloader.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/filemanager.bat --silent --output filemanager.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/legacyinstaller.bat --silent --output legacyinstaller.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/txtview.bat --silent --output txtview.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/welcome.bat --silent --output welcome.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/errormania.bat --silent --output errormania.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/notepad.bat --silent --output notepad.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/edition_lite.bat --silent --output edition_lite.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/LITE.cmd --silent --output LITE.cmd
echo System NAPRAWIONY!
echo Exit or reboot?
set /p choose=[reboot/exit]: 
if %choose%==reboot reboot
if %choose%==exit goto exit

:lite
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/help.bat --silent --output help.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/info.bat --silent --output info.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/2shell.bat --silent --output 2shell.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/clear.bat --silent --output clear.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/clock.bat --silent --output clock.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/kalkulator.bat --silent --output kalkulator.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/poweroff.bat --silent --output poweroff.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/reboot.bat --silent --output reboot.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/repair.bat --silent --output repair.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/repo.bat --silent --output repo.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/settings.bat --silent --output settings.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/uninstaller.bat --silent --output uninstaller.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/%ver%/MTOS_SHELL.bat --silent --output MTOS_SHELL.bat

:exit
set prog=1
%shell%

:no_net_exit
echo Brak połączenia z internetem
set prog=1
%shell%
