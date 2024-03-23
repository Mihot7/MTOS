:start
echo Witaj w uninstaller! (Version 2.0)
echo Podaj nazwe pakietu który chcesz usunąć! UWAGA: ABY ZACHOWAĆ STABILNOŚĆ SYSTEMU NIE USUWAJ PAKIETÓW SYSTEMOWYCH. 
set /p rmpkg=Pkg_name:
if exist %rmpkg%.bat (
    goto uninstall
) else (
    echo invalid choose && goto exit
)

:uninstall
del %rmpkg%.bat /q
echo PAKIET ODINSTALOWANY POMYŚLNIE!
pause
goto exit

:exit
set prog=1
%shell%