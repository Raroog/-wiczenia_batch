@echo off
setlocal

:: Zapytaj o ścieżkę do przeszukania
echo Podaj sciezke do przeszukania:
set /p searchPath=

:: Sprawdź, czy ścieżka istnieje
if not exist "%searchPath%" (
    echo Sciezka %searchPath% nie istnieje.
    goto end
)

:: Zapytaj o rozszerzenie pliku
echo Podaj rozszerzenie pliku do wyszukania (np. txt):
set /p fileExtension=

:: Zapytaj o folder docelowy
echo Podaj folder docelowy, gdzie maja byc skopiowane pliki:
set /p targetFolder=

:: Sprawdź, czy folder docelowy istnieje, jeśli nie, utwórz go
if not exist "%targetFolder%" (
    mkdir "%targetFolder%"
)

:: Szukaj i kopiuj pliki
echo Szukam i kopiuje pliki...
for /r "%searchPath%" %%f in (*.%fileExtension%) do (
    copy "%%f" "%targetFolder%"
)

echo Operacja zakonczona.
:end
pause
endlocal
