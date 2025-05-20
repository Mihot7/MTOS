rem Fuck toffikdows
cd ..
cd user_files
set name=United
:options
cls
echo ──────────────────────────────────┐
echo Godzina: %time%
echo ─────────────────────────┬────────┘
echo Notatnik - %name% 
echo ─────────────────────────┘
echo.
echo 1. Otwórz dokument
echo 2. Edytuj %name%
echo 3. Nowy plik
echo 4. Informacje
echo 5. Wyjście

set /p you=">"
if %you%==1 goto 0
if %you%==2 goto 2
if %you%==3 goto 1
if %you%==4 goto help
if %you%==5 goto exit


cls
echo Nie poprawny wybór!
ping localhost -n 2 >nul
goto options

:1
cls
echo ──────────────────────────────────┐
echo Godzina: %time%
echo ─────────────────────────┬────────┘
echo Notatnik - %name% 
echo ─────────────────────────┘
echo. 
echo Nazwij swój plik np. plik.txt
set /p name=">"


goto options

:2
cls
echo ──────────────────────────────────┐
echo Godzina: %time%
echo ─────────────────────────┬────────┘
echo Notatnik - %name% 
echo ─────────────────────────┘
echo. 
echo Aby dodać nową linie kliknij enter. aby skończyć edytować napisz "qa" i wciśnij enter.
echo.
echo Nie używaj tych znaków"   > < |   "  oraz spacji MTOS sie zesra jak ich użyjesz.
echo.
type %name%
set /p content=">"
if /I "%content%"=="qa" goto options
echo %content%>>%name%
cls
echo Linia dodana!
pause
goto 2

:help
cls
echo ──────────────────────────────────┐
echo Godzina: %time%
echo ─────────────────────────┬────────┘
echo Notatnik - %name% 
echo ─────────────────────────┘
echo. 
echo Notatnik v1.0 - MTOS %ver%
echo.
pause
goto options

:0
cls
echo ──────────────────────────────────┐
echo Godzina: %time%
echo ─────────────────────────┬────────┘
echo Notatnik - %name% 
echo ─────────────────────────┘
echo. 
echo Wpisz nazwę pliku.
echo Pamiętaj folder\plik.txt
set /p edit=">"
edit %edit%
goto options

:exit
cd ..
cd prog
set prog=1
%shell%