@echo off
setlocal

:: Ustawienie lokalizacji folderów testowych i folderu Backup
set "folder1=C:\TestFolder1"
set "folder2=C:\TestFolder2"
set "backupFolder=C:\Backup"

:: Tworzenie folderów testowych i wypełnianie ich zawartością
mkdir "%folder1%"
mkdir "%folder2%"
echo Przykladowy tekst > "%folder1%\plik.txt"
echo Przykladowy tekst > "%folder2%\plik.txt"
copy "ścieżka_do_obrazka.jpg" "%folder1%"
copy "ścieżka_do_obrazka.jpg" "%folder2%"

:: Tworzenie folderu Backup i kopiowanie folderów testowych
mkdir "%backupFolder%"
xcopy /E /I "%folder1%" "%backupFolder%\TestFolder1\"
xcopy /E /I "%folder2%" "%backupFolder%\TestFolder2\"

:: Usuwanie folderów testowych
rd /S /Q "%folder1%"
rd /S /Q "%folder2%"

:: Otwieranie folderu Backup
start "" "%backupFolder%"

echo Operacja zakonczona.
pause
endlocal
