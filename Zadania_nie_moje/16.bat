@echo off
setlocal enabledelayedexpansion

REM Zapytaj użytkownika o źródłowy katalog
set /p "SourceFolder=Podaj ścieżkę do źródłowego katalogu: "

REM Sprawdź, czy podano rozszerzenie
set /p "Extension=Podaj rozszerzenie plików do skopiowania (np. txt): "

REM Sprawdź, czy folder źródłowy istnieje
if not exist "%SourceFolder%" (
    echo Podany folder nie istnieje.
    exit /b
)

REM Ustawienia
set "DestinationFolder=C:\Wyniki kopiowania"

REM Utwórz folder wynikowy, jeśli nie istnieje
if not exist "%DestinationFolder%" mkdir "%DestinationFolder%"

REM Inicjalizuj indeks
set "Index=1"
REM Kopiuj i zmieniaj nazwy plików
for /r "%SourceFolder%" %%i in (*.%Extension%) do (
    set "NewName=!Index!"
    set /a "Index+=1"
    copy "%%i" "%DestinationFolder%\!NewName!.%extension%"
)

echo Zakończono kopiowanie i zmianę nazw plików.
pause
endlocal