@echo off
setlocal

:: Tworzenie nowego użytkownika
set /p username="Wprowadź nazwę nowego użytkownika: "
set /p password="Wprowadź hasło dla nowego użytkownika: "
net user %username% %password% /add
set /p dir="Wprowadź ścieżkę do którego mają być nadane uprawnienia: "
set /p sleep="Po jakim czasie komputer ma się usypiać? (Minuty): "

:: Przydzielanie uprawnień użytkownikowi do określonych folderów (przykładowo)
:: Uwaga: ta komenda jest przykładowa i może wymagać modyfikacji w zależności od wymagań systemu.
icacls "%dir%" /grant %username%:R

:: Zmiana czasu uśpienia komputera
:: Ustaw czas uśpienia na 30 minut (1800 sekund)
:: Dla ustawienia stanu uśpienia (standby)
powercfg /change standby-timeout-ac %sleep%

echo Użytkownik %username% został utworzony i czas uśpienia zmieniony.
pause
endlocal
