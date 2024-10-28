echo.
type "%SYSTEM_FOLDER%\logo.txt"
echo.
echo.
ECHO VERSION: %ver%
ECHO BUILD TYPE: %build%
if %build%==unofficial echo UNOFFICIAL BUILD BY: %builder%
echo SHELL: %shell%
echo EDITION: %edition%
echo KERNEL: %kernel% -- %ver%@28.10.2024
echo PLUGINS LOADED: %plugins%
echo ---------- Open source projects used ----------
echo Discord status: 
echo https://github.com/Pizzabelly/EasyRP
set prog=1
%shell%