:sh
set program=MTOS_SHELL
call %discord%
set prog=0
set template=Command:
set /p "cmd=%template% "

if not exist "%cmd%.bat" (
    echo Invalid command
    goto sh
) ELSE (
    set program=%cmd%
    call %discord%
    %cmd%
    set cmd=""
)