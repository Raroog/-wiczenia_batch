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

:: Usuwanie plików .pdf starszych niż 25 dni
forfiles /p "%folderPath%" /m *.pdf /d -25 /c "cmd /c del @path"

echo Usuwanie plikow starszych niz 25 dni zakonczone.
pause
endlocal
