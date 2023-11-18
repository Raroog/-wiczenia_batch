@echo off
setlocal

:: Ustalenie ścieżek dla lokalizacji A i B
set "locationA=A:\stary.txt"
set "locationB=B:\nowy.txt"

:: Tworzenie pliku w lokalizacji A
echo Hello world > "%locationA%"

:: Sprawdzenie, czy plik został poprawnie utworzony
if not exist "%locationA%" (
    echo Nie mozna utworzyc pliku w lokalizacji A.
    exit /b
)

:: Tworzenie nowego pliku w lokalizacji B i kopiowanie zawartości
if not exist "%locationB%" (
    copy "%locationA%" "%locationB%"
) else (
    echo Plik w lokalizacji B juz istnieje. Nadpisanie.
    copy /Y "%locationA%" "%locationB%"
)

echo Operacja zakonczona.
pause
endlocal
