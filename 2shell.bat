:sh
set prog=0
set template=Command2:
set /p "cmd=%template% "

if not exist "%cmd%.bat" (
    echo Invalid command
    goto sh
) ELSE (
    %cmd%
)