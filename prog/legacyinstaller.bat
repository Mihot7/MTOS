set cel=%cd%
echo Witaj w legacy instalatorze! (Version 2.0)
echo 1. Legacy mode
echo 2. User dir mode
set /p choose=[1,2]:
if %choose%==1 goto legacy
if %choose%==2 goto user

:legacy
echo Podaj scieszke folderu "<nazwa_programu>_setup" (albo drag'n'drop)
set /p installerdir=DIR:
cd %installerdir%
call installer.bat
pause
cd %cel%
del help.txt
set prog=1
%shell%

:user
cd ..
cd user_dir
echo Podaj scieszke folderu "<nazwa_programu>_setup" 
set /p installerdir=DIR:
cd %installerdir%
call installer.bat
pause
cd %cel%
del help.txt
set prog=1
%shell%