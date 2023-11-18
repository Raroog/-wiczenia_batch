@echo off
setlocal

:: Pobieranie informacji od użytkownika
echo Wprowadz swoj status (student/admin/inny):
set /p status="Status: "
echo Wprowadz imie:
set /p firstName="Imie: "
echo Wprowadz nazwisko:
set /p lastName="Nazwisko: "

:: Wyświetlenie podsumowania
echo.
echo Podsumowanie:
echo Status: %status%
echo Imie: %firstName%
echo Nazwisko: %lastName%
echo.
echo Czy chcesz dodac tego uzytkownika do systemu? (T/N)
set /p addUser="Wybor: "

:: Dodawanie użytkownika
if /I "%addUser%"=="T" (
    set /p userPassword="Podaj haslo dla nowego uzytkownika: "
    net user %firstName%%lastName% %userPassword% /add
    if "%status%"=="admin" (
        net localgroup administrators %firstName%%lastName% /add
    )
    echo Uzytkownik %firstName% %lastName% dodany.
) else (
    echo Dodawanie uzytkownika anulowane.
)

pause
endlocal
