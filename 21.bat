@echo off
setlocal

:inputLoop
cls
echo Wpisz liczbe:
set /p number="Liczba: "

:: Sprawdzenie, czy wprowadzona wartość jest liczbą
set /a testNumber=%number% 2>nul
if "%errorlevel%"=="1" (
    echo To nie jest liczba. Sprobuj ponownie.
    pause
    goto inputLoop
)

:: Porównanie liczby z 10
if %number% gtr 10 (
    echo %number% jest wieksza od 10.
) else (
    echo %number% jest mniejsza od 10.
)

pause
endlocal
