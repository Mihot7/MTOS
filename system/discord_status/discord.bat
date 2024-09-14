type "%SYSTEM_FOLDER%\discord_status\part_1.txt">"%SYSTEM_FOLDER%\discord_status\config.ini"
echo.>>"%SYSTEM_FOLDER%\discord_status\config.ini"
echo State=In: %program%>>"%SYSTEM_FOLDER%\discord_status\config.ini"
echo Details=Running version: %ver%!>>"%SYSTEM_FOLDER%\discord_status\config.ini"
type "%SYSTEM_FOLDER%\discord_status\part_2.txt">>"%SYSTEM_FOLDER%\discord_status\config.ini"
if %BOOTING%==true start /min enable.vbs
if %errorlevel%==-1073741515 echo Please install C++ runtime from MicroSoft && pause
exit /b