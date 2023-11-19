@echo off
setlocal enabledelayedexpansion

REM Zapytaj użytkownika o ciąg znaków
set /p "Input=Podaj ciąg znaków: "

REM Sprawdź, czy wprowadzony ciąg znaków to liczba
set "IsNumber=true"
for /f "delims=0123456789" %%a in ("!Input!") do (
    if not "%%a"=="" set "IsNumber=false"
)

REM Sprawdź, czy wprowadzona liczba jest większa, mniejsza lub równa 10
set "ComparisonResult=unknown"
if !IsNumber! equ true (
    set /a "Input=%Input%"
    if !Input! lss 10 (
        set "ComparisonResult=Liczba mniejsza od 10"
    ) else if !Input! gtr 10 (
        set "ComparisonResult=Liczba większa od 10"
    ) else (
        set "ComparisonResult=Liczba równa 10"
    )
) else (
    set "ComparisonResult=To nie liczba!"
)

REM Wyświetl wynik
echo Wynik porównania: !ComparisonResult!
pause
endlocal
