cls
cd ..
cd system
if exist "%userfolder%\title.wav" (
    start PlaySound.bat "%userfolder%\title.wav"
) else (
    echo Plik title.wav został usunięty przez użytkownika.
)
type logo.txt
cd ..
cd prog
echo.
echo.
echo Muzyka: Wife forever - bbpanzu (instrumental)
echo.
echo Witaj, %username% w MTOS!
echo MTOS jest to projekt początkowo znany pod nazwą MatOS SP1 a potem Mihot/MihotOS.
echo Projekt jest tworzony od 2019 roku.
echo.
echo Po co to?
echo. 
echo Mihot (teraz MTOS) został stworzony w zamyśle zrobienia dużego zbioru programów 
echo batchowych, w jednym DOS'o-podobnym środowisku.
echo.
echo.
echo Jak moge wykorzystać projekt MTOS?
echo.
echo Projekt MTOS możesz dowolnie edytować. Miło by było jakbyś oznaczył jego orginalnych twórców.
echo.
echo.
echo Twórcy
echo.
echo Mihot7 - Główny developer, NotAdidel - biblioteki dzwięku, wysyłania klawiszy itd., 
echo Toffix - Gry z serii MyCity, PseudoStudios - OldMihotOS Core.
echo.
echo. Dzięki za pobranie!
pause
taskkill /f /im wscript.exe
set prog=1
%shell%