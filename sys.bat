chcp 65001
if "%prog%"=="1" goto sh
cls
cd system
type logo.txt
echo.
echo Type help for commands.
cd ..
:sh
cd prog
echo.
echo.
%shell%