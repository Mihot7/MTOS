if %ver%==2.0 echo Not supported && %shell%
if %ver%==2.1 echo Not supported && %shell%
if %ver%==2.2 echo Not supported && %shell%
if %ver%==3.0 echo Not supported && %shell%
if %ver%==4.0 echo Not supported && %shell%
cd ..
cd plugins
echo Reloader version 2.0 by Lubie_cie
echo Reloading plugins...
for %%G in (*.bat) do call "%%G"
timeout /t 2 /nobreak>nul
cd ..
cd prog
%shell%
