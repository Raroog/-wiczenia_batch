@echo off
setlocal

:: Zapytaj użytkownika o jego imię
echo Jak masz na imię?
set /p UserName=

:: Stwórz folder z imieniem użytkownika
set "folderName=%UserName%_Folder"
mkdir "%folderName%"

:: Utwórz plik tekstowy w tym folderze i zapisz wynik polecenia ping
set "fileName=ping_result.txt"
ping google.com > "%folderName%\%fileName%"

:: Zapytaj użytkownika, czy chce zobaczyć wyniki polecenia ping
echo Czy chcesz zobaczyć wyniki polecenia ping? (T/N)
set /p UserChoice=
if /i "%UserChoice%"=="T" notepad "%folderName%\%fileName%"

:: Zapytaj użytkownika, czy chce utworzyć kopię pliku
echo Czy chcesz zrobić kopię pliku z wynikami? (T/N)
set /p UserChoice=
if /i "%UserChoice%"=="T" (
    copy "%folderName%\%fileName%" "%folderName%\%fileName%1"
    echo Kopia pliku została utworzona.
) else (
    echo Do zobaczenia, %UserName%!
)

:: Zakończenie skryptu
echo Wciśnij dowolny klawisz, aby zamknąć...
pause >nul
endlocal