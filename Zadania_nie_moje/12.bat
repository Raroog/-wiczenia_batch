@echo off
setlocal enabledelayedexpansion

REM Ustawienia
set /p Length=Podaj długość hasła: 

REM Lista dostępnych znaków
set "Chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#%^*()"

REM Inicjalizacja hasła
set "Password="

REM Generowanie hasła
for /L %%i in (1,1,%Length%) do (
    set /a "RandomNum=!random! %% 71"
    for %%j in (!RandomNum!) do set "Char=!Chars:~%%j,1!"
    set "Password=!Password!!Char!"
)

echo Wygenerowane hasło: %Password%

endlocal
pause
