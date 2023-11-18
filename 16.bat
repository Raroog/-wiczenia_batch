@echo off
setlocal

:: Pobieranie ścieżki folderu od użytkownika
echo Podaj sciezke do folderu:
set /p folderPath="Sciezka: "

:: Sprawdzenie, czy folder istnieje
if not exist "%folderPath%" (
    echo Folder "%folderPath%" nie istnieje.
    exit /b
)

:: Usuwanie plików .txt starszych niż 3 dni
forfiles /p "%folderPath%" /m *.txt /d -3 /c "cmd /c del @path"

echo Usuwanie plikow starszych niz 3 dni zakonczone.
pause
endlocal
