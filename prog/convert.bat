cd ..
cd user_files
Echo Wybierz plik do przekonwertowania: (Obsługiwany format .mp3) (Użycie innego pliku niż .mp3 może spowodować uszkodzenia danych.)
echo Wprowadź nazwę pliku bez rozszerzenia!
for %%a in (*.mp3) do @echo %%~na
set /p mp3=Nazwa:
echo Please wait...
ren %mp3%.mp3 %mp3%.wav
echo Done! Możesz teraz odtwarzać ten plik w MihotMUSIC!
pause
cd..
cd prog
set prog=1
%shell%
