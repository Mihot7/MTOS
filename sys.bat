chcp 65001
if "%prog%"=="1" goto sh
cls
cd system
type logo.txt
call PlaySound "sounds\startup.wav"
cd ..
echo.
echo MTOS %ver% %edition%
if %latestver%==error (echo Brak połączenia z serwerem aktualizacji.) else (if not %latestver%==%ver% Echo Twoja wersja MTOS jest przestarzała. Proszę, zaktualizuj do wersji %latestver%!)
echo.
if %boot%==true goto tip
goto dalej
:tip
rem I tak ciula to da, nikt tego nie czyta!
echo TIP: Pamiętaj aby zainstalować Visual C++ Redistributable!
echo TIP2: Aby, nie mieć po wyjściu nadal statusu na discordzie użyj polecenia "poweroff".
:dalej
echo.
echo Type help for commands.
if %boot%==true echo Cześć, uruchomiłeś program MTOS poraz 1 wpisz polecenie welcome aby uzyskać więcej info. Dzięki za pobranie!
if %build%==alpha echo Alpha build 
if %build%==beta echo Beta build 
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
rem Radek, przepraszam za wszystko, co zrobiłem....
set errorcode=SHELL_NOT_FOUND
%error%