echo Witaj w repo!
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