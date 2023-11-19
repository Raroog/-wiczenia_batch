@echo off
setlocal

:: 1. Stworzenie katalogu "Diagnoza i naprawa dysku"
echo Podaj lokalizacje do stworzenia katalogu "Diagnoza i naprawa dysku":
set /p directoryPath=
mkdir "%directoryPath%\Diagnoza i naprawa dysku"

:: 2. Stworzy plik "Diagnoza dysku.txt"
echo Stworzenie pliku "Diagnoza dysku.txt"...
type nul > "%directoryPath%\Diagnoza i naprawa dysku\Diagnoza dysku.txt"

:: 3. Sprawdzi stan wybranego dysku
echo Podaj literę dysku do diagnozy (np. C):
set /p driveLetter=
echo Sprawdzanie dysku %driveLetter%...
chkdsk %driveLetter%: > "%directoryPath%\Diagnoza i naprawa dysku\Diagnoza dysku.txt"

:: 5. Stworzy plik "Naprawa dysku.txt"
echo Stworzenie pliku "Naprawa dysku.txt"...
type nul > "%directoryPath%\Diagnoza i naprawa dysku\Naprawa dysku.txt"

:: 6. Naprawi wcześniej wybrany dysk
echo Naprawa dysku %driveLetter%...
chkdsk %driveLetter%: /f > "%directoryPath%\Diagnoza i naprawa dysku\Naprawa dysku.txt"

:: 7. Zapisze efekt w pliku "Naprawa dysku.txt"
echo Wyniki naprawy zostały zapisane w pliku "Naprawa dysku.txt".

echo Operacje zakonczone.
pause
endlocal
