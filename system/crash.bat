cls
color 97
Echo MTOS - CRASH
echo.
type "%SYSTEM_FOLDER%\error.txt"
echo.
echo.
echo KOD BŁĘDU: %errorcode%
echo.
echo Cześć! MTOS napotkał problem na, który jest za głupi aby, sobie z nim poradzić. :/
echo Kody błędu znajdziesz na githubie.
echo Jest duża szansa że, po reboot'cie nadal będziesz widział ten ekran :(
echo Spróbuj sie ze mną skontaktować na discord lub github.
if %debug%==true (goto info) else (goto exit)

:info
ECHO.
Echo DEBUG INFO:
set
echo ------END OF DEBUG INFO.------
goto exit

:exit
Echo Naciśnij coś aby, wyjść z MTOS!
pause>nul
exit