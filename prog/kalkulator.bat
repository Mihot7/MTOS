@echo off
:poczatek
echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo Kalkulator        │
echo ──────────────────┘
echo 1. Dodawanie 
echo 2. Odejmowanie 
echo 3. Mnozenie 
echo 4. Dzielenie 
echo 5. Wyjscie 
echo.
set /p opcja=Przejdz do:
if %opcja%==1 goto opcja1
if %opcja%==2 goto opcja2
if %opcja%==3 goto opcja3
if %opcja%==4 goto opcja4
if %opcja%==5 set prog=1 && %shell%
goto zly_wybor
:zly_wybor
echo Error
pause
goto poczatek
:opcja1
cls
echo Wybrano Dodawanie!
echo.
echo.
echo.
set /p zmienna1="Prosze podac pierwsza liczbe:"
echo.
set /p zmienna2="Prosze podac druga liczbe:"
set /a wynik=%zmienna1% + %zmienna2%
echo.
echo %zmienna1% + %zmienna2% = %wynik%
echo.
echo Wynik: %wynik%
pause
goto poczatek
:opcja2
cls
echo Wybrano Odejmowanie!
echo.
echo.
echo.
set /p zmienna1="Prosze podac pierwsza liczbe:"
echo.
set /p zmienna2="Prosze podac druga liczbe:"
set /a wynik=%zmienna1% - %zmienna2%
echo.
echo %zmienna1% - %zmienna2% = %wynik%
echo.
echo Wynik: %wynik%
pause
goto poczatek
:opcja3
cls
echo Wybrano Mnozenie!
echo.
echo.
echo.
set /p zmienna1="Prosze podac pierwsza liczbe:"
echo.
set /p zmienna2="Prosze podac druga liczbe:"
set /a wynik=%zmienna1% * %zmienna2%
echo.
echo %zmienna1% x %zmienna2% = %wynik%
echo.
echo Wynik: %wynik%
pause
goto poczatek
:opcja4
cls
echo Wybrano Dzielenie!
echo.
echo.
echo.
set /p zmienna1="Prosze podac pierwsza liczbe:"
echo.
set /p zmienna2="Prosze podac druga liczbe:"
set /a wynik=%zmienna1% / %zmienna2%
echo.
echo %zmienna1% : %zmienna2% = %wynik%
echo.
echo Wynik: %wynik%
pause
goto poczatek

