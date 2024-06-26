echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo MTOS CONVERTER    │
echo ──────────────────┘
cd ..
cd user_files

:menu
Echo Wybierz plik do przekonwertowania: (Obsługiwany format .mp3) (Użycie innego pliku niż .mp3 może spowodować uszkodzenia danych.)
echo Wprowadź nazwę pliku bez rozszerzenia!
for %%a in (*.mp3) do @echo %%~na
set /p mp3=Nazwa:
if exist %mp3%.mp3 (
    goto convert
) else (
    goto exit
)

:convert
echo Please wait...
ren %mp3%.mp3 %mp3%.wav
echo Done! Możesz teraz odtwarzać ten plik w MihotMUSIC!
pause
cd..
cd prog
set prog=1
%shell%

:exit
echo Nazwa pliku nie podana lub podany plik nie istnieje.
cd..
cd prog
set prog=1
%shell%
