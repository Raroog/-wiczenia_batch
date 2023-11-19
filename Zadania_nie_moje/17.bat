@echo off
setlocal

:: Zapytaj użytkownika o ścieżkę do katalogu
echo Proszę podać ścieżkę do katalogu, z którego mają być usunięte pliki .txt starsze niż 3 dni:
set /p directoryPath="Ścieżka: "

:: Sprawdź, czy katalog istnieje
if not exist "%directoryPath%" (
    echo Podany katalog nie istnieje.
    goto end
)

:: Usuń pliki .txt starsze niż 3 dni
echo Usuwam pliki .txt starsze niż 3 dni z %directoryPath%...
forfiles /p "%directoryPath%" /s /m *.txt /d -3 /c "cmd /c del @path"

echo Operacja zakończona.
:end
pause
endlocal
