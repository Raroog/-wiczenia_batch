@echo off
setlocal

:: Zapytaj użytkownika o ścieżkę do katalogu
echo Proszę podać ścieżkę do folderu, w którym zmieniane będą nazwy plików:
set /p directoryPath="Ścieżka: "

:: Sprawdź, czy katalog istnieje
if not exist "%directoryPath%" (
    echo Katalog nie istnieje.
    goto end
)

:: Zmień nazwy plików zaczynających się na "Z"
echo Zmienianie nazw plików...
for /R "%directoryPath%" %%f in (Z*) do (
    set "fileName=%%~nxf"
    setlocal EnableDelayedExpansion
    ren "%%f" "NowaNazwa_!fileName!"
    endlocal
)

echo Operacja zakończona.
:end
pause
endlocal
