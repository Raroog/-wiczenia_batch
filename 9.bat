@echo off
setlocal

:: Pobranie parametrów od użytkownika
echo Podaj rozszerzenie plikow do zmiany (np. txt):
set /p oldExt="Stare rozszerzenie (bez kropki): "
echo Podaj nowe rozszerzenie plikow (np. docx):
set /p newExt="Nowe rozszerzenie (bez kropki): "
echo Podaj sciezke do katalogu:
set /p folderPath="Sciezka: "

:: Sprawdzenie, czy katalog istnieje
if not exist "%folderPath%" (
    echo Nie znaleziono podanej sciezki. Sprobuj ponownie.
    exit /b
)

:: Zmiana rozszerzeń plików
for /R "%folderPath%" %%F in (*.%oldExt%) do (
    ren "%%F" "%%~nF.%newExt%"
)

echo Operacja zakonczona.
pause
endlocal
