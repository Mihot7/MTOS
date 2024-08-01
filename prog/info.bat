echo -- OS info --
echo MTOS version: %ver%
echo Build type: %build%
if %build%==unofficial echo Unofficial build maker: %builder%
echo Shell: %shell%
echo Edition: %edition%
echo Plugins loaded: %plugins%
set prog=1
%shell%