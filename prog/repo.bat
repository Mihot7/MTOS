echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo MTOS REPO         │
echo ──────────────────┘
echo Witaj w repo!
Echo Sprawdzanie połączenia internetowego...
Ping www.google.com -n 1 -w 1000>nul
if errorlevel 1 (echo Brak połączenia internetowego! && goto exit) else (echo Jesteś połączony z internetem! && goto repo)

:repo
echo Podaj nazwe programu który chcesz zainstalować! 
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPO/main/list.txt --silent --output list.txt
echo.
type list.txt
echo.
del list.txt /q
set /p pkg=Nazwa:
if exist %pkg%.bat (
    echo PAKIET JUŻ ZAINSTALOWANY! && goto exit
) else (
    goto install
)

:install
curl https://raw.githubusercontent.com/Mihot7/MTOS-REPO/main/%pkg%.bat --silent --output %pkg%.bat
set /p check=<"%pkg%.bat"
If /I "%check%"=="404: Not found" GoTo error
echo Zainstalowano %pkg%!
goto exit

:exit
set prog=1
%shell%

:error
echo Pakiet: %pkg% nie znajduje sie na repo.
del %pkg%.bat /q
goto exit