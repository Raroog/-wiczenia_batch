@echo off
setlocal EnableDelayedExpansion

:: Pobranie ścieżki do katalogu od użytkownika
echo Podaj sciezke do katalogu:
set /p folderPath="Sciezka: "
if not exist "!folderPath!" (
    echo Nie znaleziono podanej sciezki. Sprobuj ponownie.
    exit /b
)

:: Pobranie daty od użytkownika
echo Podaj date w formacie RRRR-MM-DD (np. 2023-03-15):
set /p cutoffDate="Data: "

:: Konwersja daty na format, który można porównać
for /F "tokens=1-3 delims=-" %%a in ("!cutoffDate!") do (
    set /A "year=%%a, month=100%%b %% 100, day=100%%c %% 100"
)
set /A cutoffDate=year*10000 + month*100 + day

:: Usuwanie plików starszych niż podana data
for /R "!folderPath!" %%F in (*.*) do (
    for /F "usebackq tokens=1-5 delims=/ " %%a in (`"dir /T:W %%F"`) do (
        set "fileDate=%%c"
        set "fileTime=%%d"
        if "!fileDate!" neq "" (
            set /A "fYear=!fileDate:~-4!, fMonth=100!fileDate:~0,2! %% 100, fDay=100!fileDate:~3,2! %% 100"
            set /A fileDateNum=fYear*10000 + fMonth*100 + fDay
            if !fileDateNum! lss !cutoffDate! (
                echo Usuwam: %%F
                del "%%F"
            )
        )
    )
)

echo Operacja zakonczona.
pause
endlocal
