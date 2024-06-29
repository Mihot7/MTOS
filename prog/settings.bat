cd ..
cd config
:menu
if %cdprog%==true cd .. && cd prog
cls
echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo MTOS SETTINGS     │
echo ──────────────────┘
echo 1. color
echo 2. Plugin config
echo 3. exit
set /p choose=[1,2,3]:
if %choose%==1 goto color
if %choose%==2 goto config
if %choose%==3 goto exit
echo invalid choose
pause
goto menu

:color
Echo Wybierz kolor! (Użyj systemu kolorów cmd, np. 0a. Aby uzyskać więcej informacji wprowadz "?".)
set /p color=KOLOR:
del color
copy clean color
echo %color%>"color"
color %color%
echo Motyw zastosowany!
pause
cd ..
cd prog
set prog=1
%shell%

:config
echo Wybiesz plugin którego ustawienia chcesz zmienić.
cd ..
cd plugins
for %%a in (*.bat) do @echo %%~na
set /p choose=Wpisz_nazwe:
set config=true
call %choose%.bat
set cdprog=true
goto menu

:exit
set prog=1
%shell%