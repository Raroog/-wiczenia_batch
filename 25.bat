@echo off
setlocal

:: Tworzenie nowego użytkownika
echo Tworzenie nowego uzytkownika...
echo Podaj nazwe nowego uzytkownika:
set /p newUser="Nazwa uzytkownika: "
echo Podaj haslo dla nowego uzytkownika:
set /p newPassword="Haslo: "
net user %newUser% %newPassword% /add

:: Nadanie uprawnień do określonych plików (opcjonalnie)
:: Użyj polecenia 'icacls' do ustawienia uprawnień, jeśli to konieczne

:: Zmiana czasu uśpienia komputera
echo Zmiana ustawien uspienia...
echo Podaj czas uśpienia (w sekundach):
set /p sleepTime="Czas uspienia: "
powercfg -change -standby-timeout-ac %sleepTime%

echo Operacja zakonczona.
pause
endlocal
