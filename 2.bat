@echo off
setlocal

:: Ustawienie folderu Pobrane
set "downloadsFolder=C:\Users\student\Pobrane"

:: Ustawienie liczby dni (30 dni)
set "daysOld=30"

:: Znalezienie i usunięcie plików spełniających kryteria
forfiles /p "%downloadsFolder%" /s /m *a* /d -%daysOld% /c "cmd /c del @path"

echo Operacja zakonczona.
pause
