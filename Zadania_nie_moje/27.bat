@echo off
setlocal

:: Zapytaj użytkownika o ścieżkę do folderu
echo Podaj ścieżkę do folderu, z którego mają być usunięte pliki:
set /p folderPath=

:: Sprawdź, czy ścieżka istnieje
if not exist "%folderPath%" (
    echo Podana ścieżka nie istnieje.
    goto end
)

:: Usuń pliki .pdf starsze niż 25 dni
echo Usuwam pliki .pdf starsze niż 25 dni...
forfiles /p "%folderPath%" /s /m *.pdf /d -25 /c "cmd /c del @path"

echo Operacja zakończona.

:end
pause
endlocal
