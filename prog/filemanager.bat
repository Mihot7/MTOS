@echo off
cd ..
cd user_files
:main_menu
echo Witaj, w aplikacji file manager!
echo Co chcesz dziś zrobić?
echo 1. Wyświetl folder user_files
echo 2. Usuń plik
echo 3. Przenieś plik
echo 4. Kopiuj plik
echo 5. Utwórz nowy folder
echo 6. Zmień nazwę pliku
echo 7. Info
echo 8. Wyjdź
set /p choose1=[1,2,3,4,5,6,7]:
if %choose1%==1 cls && goto user_dir
if %choose1%==2 cls && goto del_file
if %choose1%==3 cls && goto move_file
if %choose1%==4 cls && goto copy_file
if %choose1%==5 cls && goto create_dir
if %choose1%==6 cls && goto rename_file
if %choose1%==7 cls && goto Info
if %choose1%==8 goto exit
cls
echo Incorect choice!
goto main_menu

:user_dir
dir 
pause
goto main_menu

:del_file
echo Podaj nazwę pliku do usunięcia (z rozszerzeniem) (Jeśli plik znajduje sie w jakimś folderze użyj folder\nazwapliku):
set /p d=Nazwa:
if exist %d% (
    del %d% /q && goto main_menu
) else (
    echo Plik nie istnieje. && goto main_menu
)

:move_file
Echo Podaj nazwę pliku do przeniesienia (z rozszerzeniem) (Jeśli plik znajduje sie w jakimś folderze użyj folder\nazwapliku.rozszerzenie):
set /p mv=Nazwa:
if exist %mv% (
    goto move2
) else (
    echo Plik nie istnieje. && goto main_menu
)

:move2
cls
echo Podaj folder do którego mam przenieść plik:
set /p foldermv=Nazwa:
move %mv% %foldermv%
goto main_menu

:copy_file
Echo Podaj nazwę pliku do skopiowania (z rozszerzeniem) (Jeśli plik znajduje sie w jakimś folderze użyj folder\nazwapliku):
set /p copyf=Nazwa:
if exist %copyf% (
    goto copy2
) else (
    echo Plik nie istnieje. && goto main_menu
)

:copy2
Echo Podaj nazwę folderu do którego ma być skopiowany plik (Jeśli folder znajduje sie w innym, wpisz nazwafolderu\nazwadrugiegofolderu)
set /p folder=Nazwa:
copy %copyf% %folder%
goto main_menu

:create_dir
Echo Podaj nazwe nowego katalogu (Jeśli ma być stworzony wewnątrz innego katalogu wpisz nazwakatalogu1\nazwanowegokatalogu)
set /p newdir=Nazwa:
md %newdir%
goto main_menu

:rename_file
echo Podaj nazwę pliku: (Jeśli plik znajduje sie w jakimś folderze użyj folder\nazwapliku)
set /p nazwa=Nazwa:
echo Podaj nową nazwę pliku: (Jeśli plik znajduje sie w jakimś folderze użyj folder\nazwapliku)
set /p newname=Nazwa:
ren %nazwa% %newname%
goto main_menu

:info
echo MTOS FILE MANAGER v2.0 
echo Made by Mihot7 2024
echo MADE ONLY FOR USE WITH MTOS.
echo I'm not responsible for lost files etc.
pause
cls
goto main_menu

:exit
cd ..
cd prog
set prog=1
%shell%