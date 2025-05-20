echo.
type "%SYSTEM_FOLDER%\logo.txt"
echo.
echo.
ECHO VERSION: %ver%
ECHO BUILD TYPE: %build%
rem Nikt nie czyta SDK, więc, wszystkie buildy będą "officialne" i robione przezemnie XDDD
rem chyba tylko skidy będą te rzeczy zmieniać, lecz poprostu zmienią mój nick na swój...
if %build%==unofficial echo UNOFFICIAL BUILD BY: %builder%
echo SHELL: %shell%
echo EDITION: %edition%
echo SUPPORT: LTS
echo KERNEL: %kernel% -- %ver%@20.05.2025
echo PLUGINS LOADED: %plugins%
echo ---------- Open source projects used ----------
echo Discord status: 
echo https://github.com/Pizzabelly/EasyRP
set prog=1
%shell%