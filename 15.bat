@echo off
setlocal EnableDelayedExpansion

:: Pobieranie ścieżki folderu i rozszerzenia od użytkownika
echo Podaj sciezke do folderu, z ktorego maja byc kopiowane pliki:
set /p folderPath="Sciezka: "
echo Podaj rozszerzenie plikow do kopiowania (np. txt):
set /p extension="Rozszerzenie: "

:: Sprawdzenie, czy folder istnieje
if not exist "%folderPath%" (
    echo Folder "%folderPath%" nie istnieje.
    exit /b
)

:: Tworzenie folderu "Wyniki kopiowania"
set "destinationFolder=%folderPath%\Wyniki kopiowania"
mkdir "%destinationFolder%"

:: Kopiowanie plików i zmiana ich nazw na numeryczne indeksy
set /A fileIndex=1
for /R "%folderPath%" %%f in (*.%extension%) do (
    copy "%%f" "%destinationFolder%\!fileIndex!.%extension%"
    set /A fileIndex+=1
)

echo Kopiowanie plikow zakonczone.
pause
endlocal
