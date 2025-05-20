cd ..
cd user_files
echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo MTOS DOWNLOADER   │
echo ──────────────────┘
:menu
echo Witaj w narzędziu pobierania systemu MTOS.
echo 1. Pobierz
echo 2. Pokaż folder user files
echo 3. INFO
echo 4. Wyjdź
set /p choose=[1,2,3,4]:
if %choose%==1 goto net_check
if %choose%==2 goto userdir
if %choose%==3 goto info
if %choose%==4 goto exit
echo invalid choose
cls 
goto menu

:net_check
Echo Sprawdzanie połączenia internetowego...
Ping www.google.com -n 1 -w 1000
cls
if errorlevel 1 (echo Brak połączenia internetowego! && goto exit) else (echo Jesteś połączony z internetem! && goto download)


:download
echo Wprowadź adres URL pliku który chcesz pobrać: (Aktualnie wspierane formaty plików: .txt .mp3 .wav (.cmd .bat z dodatkiem dostępnym w repo.))
rem A zgadnij, kiedy ten dodatek się pojawi?
rem Prawdopodobnie nigdy, jedyne testy user-runnera były rok temu, i zawsze kończyły się źle!
set /p url=URL: 
cls
goto name

:name
echo Jak nazwać podany plik? (Pamiętaj o rozszerzeniu!)
set /p name=Nazwa:
if exist %name% (
    goto confirm
) else (
    Echo Pobieranie... && goto download2
)

:confirm
echo Plik %name% istnieje. Czy chcesz go nadpisać?
set /p choose2=[y/n]: 
if %choose2%==y del %name% && goto download2
if %choose2%==n goto name
echo invalid choose
cls
goto confirm


:download2
curl %url% --silent --output %name%
echo Pobrano %name%!
pause
goto menu

:userdir
dir
pause 
goto menu

:INFO
echo MTOS Downloader v1.0
echo Made by Mihot7
echo MTOS 2019-2025
echo Thanks for downloading.
pause
goto menu

:exit
cd ..
cd prog
set prog=1
%shell%
