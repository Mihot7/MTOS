echo ───────────────────────────┐
echo Godzina: %time%
echo ──────────────────┬────────┘
echo TXT VIEVER        │
echo ──────────────────┘
cd ..
cd user_files
Echo Wybierz plik do wyswietlenia:
dir
echo Pamiętaj! Folder\plik
set /p choose1=Nazwa:
if exist %choose1% (
    type %choose1%
) else (
    echo Plik nie istnieje. && goto exit
)

:exit
cd..
cd prog
set prog=1
%shell%