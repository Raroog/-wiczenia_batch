@echo off
setlocal

:: Sprawdzenie, czy podano ścieżkę do folderu jako argument
if "%~1"=="" (
    echo Prosze podac sciezke do folderu jako argument.
    exit /b
)

:: Ustawienie ścieżki folderu
set "folderPath=%~1"

:: Sprawdzenie, czy folder istnieje
if not exist "%folderPath%" (
    echo Folder "%folderPath%" nie istnieje.
    exit /b
)

:: Wyświetlenie zawartości plików .txt
echo Wyświetlanie zawartości plików .txt w folderze: %folderPath%
for %%f in ("%folderPath%\*.txt") do (
    echo.
    echo Zawartość pliku: %%f
    type "%%f"
    echo.
)

endlocal
pause
