@echo off
setlocal EnableDelayedExpansion

:mainMenu
cls
echo Wybierz operacje matematyczna:
echo 1 - Dodawanie
echo 2 - Odejmowanie
echo 3 - Mnozenie
echo 4 - Dzielenie
echo 5 - Wyjscie
set /p choice="Wybor: "

if "%choice%"=="1" goto add
if "%choice%"=="2" goto subtract
if "%choice%"=="3" goto multiply
if "%choice%"=="4" goto divide
if "%choice%"=="5" goto endScript
goto mainMenu

:add
call :getNumbers
set /a result=!num1! + !num2!
echo Wynik: !num1! + !num2! = !result!
pause
goto mainMenu

:subtract
call :getNumbers
set /a result=!num1! - !num2!
echo Wynik: !num1! - !num2! = !result!
pause
goto mainMenu

:multiply
call :getNumbers
set /a result=!num1! * !num2!
echo Wynik: !num1! * !num2! = !result!
pause
goto mainMenu

:divide
call :getNumbers
if "!num2!"=="0" (
    echo Nie mozna dzielic przez zero.
) else (
    set /a result=!num1! / !num2!
    echo Wynik: !num1! / !num2! = !result!
)
pause
goto mainMenu

:getNumbers
echo Podaj pierwsza liczbe:
set /p num1="Liczba 1: "
echo Podaj druga liczbe:
set /p num2="Liczba 2: "
goto :eof

:endScript
endlocal
