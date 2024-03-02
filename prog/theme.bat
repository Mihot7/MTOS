cd ..
cd config
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