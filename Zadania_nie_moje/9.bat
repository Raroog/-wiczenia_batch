@echo off
setlocal

:: Sprawdź, czy podano wszystkie trzy parametry
if "%~3"=="" (
    echo Nie podano wystarczającej liczby parametrów.
    echo Użycie: nazwa_skryptu.bat rozsz1 rozsz2 katalog
    goto :EOF
)

:: Przypisz parametry do zmiennych dla lepszej czytelności
set "oldExtension=%~1"
set "newExtension=%~2"
set "directory=%~3"

:: Sprawdź, czy katalog istnieje
if not exist "%directory%\*" (
    echo Podany katalog nie istnieje.
    goto :EOF
)

:: Zmień rozszerzenie plików
echo Zmiana rozszerzenia plików z .%oldExtension% na .%newExtension% w katalogu %directory%
for %%f in ("%directory%\*.%oldExtension%") do (
    ren "%%f" "%%~nf.%newExtension%"
)

echo Operacja zakończona.
endlocal
