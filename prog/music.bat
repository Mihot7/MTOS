cd ..
cd system
chcp 65001
:poczatek
cls
echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo Mihot Music       │
echo ──────────────────┘
echo.
echo 1) Odtwórz plik
echo 2) Zatrzymaj muzyke
echo 3) Info
echo 4) KONIEC
echo.
set /p opcja=wybierz:
if %opcja%==1 goto play
if %opcja%==2 goto stop
if %opcja%==3 goto Info
if %opcja%==4 goto exit
if %opcja%==kupa goto kupa
goto zly_wybor

:zly_wybor
echo OPCJA NIE ZNANA.. WYBIERZ PONOWNIE!
pause
goto poczatek

:play
cls
rem     │     ─   └    ┘    ┌    ┐    ┤    ├    ┼    ┴    ┬
echo MIHOT MUSIC       │
echo ──────────────────┘
echo.
echo.
echo.
echo Wybierz plik którego chcesz odsłuchać:
cd ..
cd user_files
echo.
for %%a in (*.wav) do @echo %%~na
echo.
cd ..
cd system
echo Nie widzisz swojego pliku? Pamiętaj, przekonwertuj go zapomocą polecenia convert!
set /p x=Nazwa: 
echo.
cls
type playing.txt
start silent.bat PlaySound.bat "%userfolder%\%x%.wav"
pause
goto poczatek

:stop
cls
taskkill /f /im wscript.exe
cls
type stop.txt
pause
goto poczatek

:info
cls
echo Mihot MUSIC v2.1
echo 2021-2024 Mihot7 i NotAdidel
echo Using NotAdidel's PlaySound lib.
echo Original version made by NotAdidel for Mihot 5.0
pause
goto poczatek

:exit
cd ..
cd prog
set prog=1
%shell%

:kupa
echo Jestem w twojej szafie.
pause
set errorcode=SPRAWDŹ_SWOJA_SZAFE
%crash%