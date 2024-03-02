:poczatek
cls
echo XxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxX
echo X Kalkulator X
echo XxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxX
echo X Wybierz porzadane dzialanie: X
echo X X
echo X 1) Dodawanie X
echo X 2) Odejmowanie X
echo X 3) Mnozenie X
echo X 4) Dzielenie X
echo X 5) Wyjscie X
echo XxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxX
echo.
echo.
set /p opcja=Przejdz do:
if %opcja%==1 goto opcja1
if %opcja%==2 goto opcja2
if %opcja%==3 goto opcja3
if %opcja%==4 goto opcja4
if %opcja%==5 goto opcja6
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

:opcja6
set prog=1
%shell%