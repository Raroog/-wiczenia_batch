@echo off
setlocal EnableDelayedExpansion

:: Ustawienie długości hasła
set /p length="Podaj dlugosc hasla (np. 12): "

:: Ustawienie zestawów znaków
set "lowercase=abcdefghijklmnopqrstuvwxyz"
set "uppercase=ABCDEFGHIJKLMNOPQRSTUVWXYZ"
set "numbers=0123456789"
set "special=!@#$%^&*()-_=+[]{};:,.<>/?"
set "charset=%lowercase%%uppercase%%numbers%%special%"

:: Generowanie hasła
set "password="
for /L %%i in (1,1,%length%) do (
    set /A "index=!random! %% 72"
    set "password=!password!!charset:~!index!,1!"
)

echo Wygenerowane haslo: !password!
endlocal
pause
