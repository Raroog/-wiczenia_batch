@echo off

:: Ścieżka do folderu, który chcesz skopiować - USTAW TUTAJ swoją ścieżkę
set /p sourcePath1="Ścieżka do folderu numer 1: "


:: Ścieżka do folderu, który chcesz skopiować - USTAW TUTAJ swoją ścieżkę
set /p sourcePath2="Ścieżka do folderu numer 2: "

:: Ścieżka do folderu Backup
set "backupPath=C:\Backup\"

:: Sprawdź, czy ścieżka źródłowa istnieje
if not exist "%sourcePath1%" (
    echo Folder źródłowy nie istnieje.
    goto end
)

:: Sprawdź, czy ścieżka źródłowa istnieje
if not exist "%sourcePath2%" (
    echo Folder źródłowy nie istnieje.
    goto end
)

:: Utwórz folder Backup, jeśli nie istnieje
if not exist "%backupPath%" (
    mkdir "%backupPath%"
)

:: Skopiuj foldery do folderu Backup
xcopy "%sourcePath1%" "%backupPath%Folder 1" /E /I /Y

:: Skopiuj foldery do folderu Backup
xcopy "%sourcePath2%" "%backupPath%Folder 2" /E /I /Y

:: Usuń oryginalne foldery
::rd /s /q "%sourcePath1%"
::rd /s /q "%sourcePath2%"

:: Otwórz folder Backup
start "" "%backupPath%"

:end
echo Operacja zakończona.
pause