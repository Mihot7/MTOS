cd ..
cd config
:menu
cls
echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo MTOS SETTINGS     │
echo ──────────────────┘
echo 1. color
echo 2. EXIT
set /p choose=[1]
if %choose%==1 goto color
if %choose%==1 set prog=1 && %shell%
echo invalid choose
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