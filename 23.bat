@echo off
setlocal

:: Pobieranie ścieżki do przeszukania od użytkownika
echo Podaj dysk lub sciezke folderu do przeszukania:
set /p searchPath="Sciezka: "

:: Pobieranie rozszerzenia pliku do wyszukania
echo Podaj rozszerzenie pliku do wyszukania (np. txt):
set /p extension="Rozszerzenie: "

:: Pobieranie ścieżki, gdzie pliki mają być skopiowane
echo Podaj folder docelowy, gdzie maja zostac skopiowane pliki:
set /p destination="Folder docelowy: "
if not exist "%destination%" (
    mkdir "%destination%"
)

:: Wyszukiwanie i kopiowanie plików
echo Wyszukiwanie i kopiowanie plikow...
for /R "%searchPath%" %%f in (*.%extension%) do (
    copy "%%f" "%destination%\%%~nxf"
)

echo Operacja zakonczona.
pause
endlocal
