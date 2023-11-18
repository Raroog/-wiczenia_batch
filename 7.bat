@echo off
setlocal

:: Ustalenie lokalizacji pliku raportu
echo Podaj sciezke do zapisania pliku raportSkanu.txt:
set /p reportPath="Sciezka: "
if not exist "%reportPath%" (
    echo Sciezka nie istnieje. Sprobuj ponownie.
    exit /b
)
set "reportFile=%reportPath%\raportSkanu.txt"

:: Funkcja do pobierania informacji o wolnej przestrzeni
:checkDiskSpace
for %%d in (C D Z) do (
    wmic LogicalDisk where "DeviceID='%%d:'" get DeviceID, FreeSpace >> "%reportFile%"
)

:: Główna pętla skryptu
:mainLoop
call :checkDiskSpace
echo Informacje o wolnej przestrzeni zapisane w: %reportFile%
:: Czekaj na następne wykonanie (np. 1 godzina = 3600 sekund)
timeout /t 3600 /nobreak
goto mainLoop

endlocal
