chcp 65001
if "%prog%"=="1" goto sh
cls
cd system
type logo.txt
cd ..
echo.
echo Type help for commands.
if %boot%==true echo Hello, It seems like you run MTOS for the 1st time! Use Welcome command to see what MTOS is and what you can do with it!
if %build%==alpha echo Alpha build %ver%
if %build%==beta echo Beta build %ver%
if %build%==unofficial echo Unofficial build by: <insert your name here>.
cd config
echo false>boot
cd ..

:sh
cd prog
echo.
echo.
%shell%