chcp 65001
if "%prog%"=="1" goto sh
cls
cd system
type logo.txt
call PlaySound "sounds\startup.wav"
cd ..
echo.
echo Type help for commands.
if %boot%==true echo Cześć, uruchomiłeś program MTOS poraz 1 wpisz polecenie welcome aby uzyskać więcej info. Dzięki za pobranie!
if %build%==alpha echo Alpha build %ver%
if %build%==beta echo Beta build %ver%
if %build%==unofficial echo Unofficial build by: %builder%.
cd config
echo false>boot
cd ..

cd prog
if exist %shell%.bat (
    goto sh
) else (
    goto error
)


:sh
echo.
echo.
%shell%

:error
set errorcode=SHELL_FAIL
%error%