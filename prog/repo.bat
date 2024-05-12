echo Witaj w repo!
Echo Sprawdzanie połączenia internetowego...
Ping www.google.com -n 1 -w 1000
cls
if errorlevel 1 (echo Brak połączenia internetowego! && goto exit) else (echo Jesteś połączony z internetem! && goto repo)

:repo
echo Podaj nazwe programu który chcesz zainstalować! (Jeśli program sie nie zainstaluje to znaczy że, nie INSTNIEJE)
set /p pkg=Nazwa:
if exist %pkg%.bat (
    echo PAKIET INSTNIEJE! && goto exit
) else (
    goto install
)

:install
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPO/main/%pkg%.bat --silent --output %pkg%.bat
Echo Pakiet: %pkg% ZAINSTALOWANY! (?)
goto exit

:exit
set prog=1
%shell%