@echo off
setlocal

:: Pytanie o imię użytkownika
echo Jak masz na imie?
set /p userName="Imie: "

:: Tworzenie folderu z imieniem użytkownika
set "folderPath=%~dp0%userName%"
mkdir "%folderPath%"

:: Utworzenie pliku tekstowego i zapisanie wyniku polecenia ping
set "filePath=%folderPath%\ping_results.txt"
ping google.com > "%filePath%"

:: Pytanie, czy użytkownik chce zobaczyć wynik
echo Czy chcesz zobaczyc wynik polecenia ping? (T/N)
set /p viewResult="Wybor: "
if /I "%viewResult%"=="T" notepad "%filePath%"

:: Pytanie o kopię pliku
echo Czy chcesz zrobic kopie pliku z wynikami? (T/N)
set /p makeCopy="Wybor: "
if /I "%makeCopy%"=="T" (
    copy "%filePath%" "%folderPath%\ping_results1.txt"
    echo Kopia pliku utworzona.
) else (
    echo Do zobaczenia, %userName%!
)

pause
endlocal
