Echo lite edition has been discontinued and is unsupported. If you want to continue then please think about it!
echo Continue? (Y/N)
set /p choose=CHOOSE: 
if %choose%==y call lite.cmd
if %choose%==n %shell%
echo invalid choose
%shell%