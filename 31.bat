@echo off
setlocal

:: Pobieranie ścieżki folderu od użytkownika
echo Podaj sciezke do folderu do sortowania:
set /p folderPath="Sciezka: "

:: Wybór metody sortowania
echo Wybierz metode sortowania:
echo 1 - Alfabetycznie
echo 2 - Po dacie utworzenia
echo 3 - Wedlug wielkosci
set /p sortMethod="Metoda: "

:: Wykonanie sortowania
cd /d "%folderPath%"
if "%sortMethod%"=="1" (
    echo Sortowanie alfabetycznie:
    dir /b /o:n
) else if "%sortMethod%"=="2" (
    echo Sortowanie po dacie utworzenia:
    dir /b /o:d
) else if "%sortMethod%"=="3" (
    echo Sortowanie wedlug wielkosci:
    dir /b /o:s
) else (
    echo Nieprawidlowy wybor.
)

pause
endlocal
