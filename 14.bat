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

:: Zmiana nazw plików zaczynających się na "Z"
pushd "%folderPath%"
for %%f in (Z*) do (
    set "oldName=%%f"
    set "newName=NowaNazwa%%f"
    call ren "!oldName!" "!newName!"
)
popd

echo Zmiana nazw plików zakończona.
pause
endlocal
