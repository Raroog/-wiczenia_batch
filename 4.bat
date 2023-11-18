@echo off
setlocal

:: Ustalanie lokalizacji katalogu
echo Podaj sciezke, gdzie ma zostac utworzony katalog "Diagnoza i naprawa dysku":
set /p diagPath="Sciezka: "
mkdir "%diagPath%\Diagnoza i naprawa dysku"

:: Tworzenie plików diagnozy i naprawy
set "diagFile=%diagPath%\Diagnoza i naprawa dysku\Diagnoza dysku.txt"
set "repairFile=%diagPath%\Diagnoza i naprawa dysku\Naprawa dysku.txt"
echo Diagnoza dysku > "%diagFile%"
echo Naprawa dysku > "%repairFile%"

:: Wybór dysku do diagnozy i naprawy
echo Wybierz dysk do diagnozy i naprawy (np. C:):
set /p disk="Dysk: "

:: Diagnoza dysku
echo Sprawdzanie dysku %disk%...
chkdsk %disk% > "%diagFile%"

:: Naprawa dysku
echo Naprawianie dysku %disk%...
echo y | chkdsk %disk% /f > "%repairFile%"

echo Operacja zakonczona.
pause
endlocal
