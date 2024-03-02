set cel=%cd%
echo Witaj w instalatorze! (Version 1.0b)
echo Podaj scieszke folderu "<nazwa_programu>_setup" (albo drag'n'drop)
set /p installerdir=DIR:
cd %installerdir%
call installer.bat
echo POMYŚLNIE? ZAINSTALOWANO: %pkgname%!
pause
cd %cel%
set prog=1
%shell%