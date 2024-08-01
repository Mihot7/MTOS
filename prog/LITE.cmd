cd ..
cd config
echo Lite>edition
cd ..
cd prog
echo Deleting programs...
del *.bat
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
echo Deleting some more files...
cd ..
cd system
del logo.txt /q
del playing.txt /q
del stop.txt /q
del VBS_MSG.BAT /q
del PlaySound.bat /q
del speak.bat /q
del Silent.bat /q
del PlaySound1.txt /q
del PlaySound2.txt /q
rd sounds /s /q
echo Deleting user_files
cd ..
rd user_files /s /q
echo Installing speed kernel...
del sys.bat /q
del boot.bat /q
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/speed.bat --silent --output sys.bat
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPAIR-SERVER/main/LITE_BOOT_V1.bat --silent --output boot.bat
echo.
echo Done.
pause
cd prog
reboot

