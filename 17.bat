@echo off
setlocal

:menu
cls
echo 1. Listuj uzytkownikow
echo 2. Dodaj nowego uzytkownika
echo 3. Zmien haslo uzytkownika
echo 4. Nadaj uprawnienia administracyjne
echo 5. Cofnij uprawnienia administracyjne
echo 6. Wyjscie
echo.
set /p choice="Wybierz opcje: "

if "%choice%"=="1" goto listUsers
if "%choice%"=="2" goto addUser
if "%choice%"=="3" goto changePassword
if "%choice%"=="4" goto grantAdmin
if "%choice%"=="5" goto revokeAdmin
if "%choice%"=="6" goto endScript
goto menu

:listUsers
net user
pause
goto menu

:addUser
set /p userName="Podaj nazwe nowego uzytkownika: "
set /p password="Podaj haslo: "
net user %userName% %password% /add
pause
goto menu

:changePassword
set /p userName="Podaj nazwe uzytkownika: "
set /p password="Podaj nowe haslo: "
net user %userName% %password%
pause
goto menu

:grantAdmin
set /p userName="Podaj nazwe uzytkownika: "
net localgroup administrators %userName% /add
pause
goto menu

:revokeAdmin
set /p userName="Podaj nazwe uzytkownika: "
net localgroup administrators %userName% /delete
pause
goto menu

:endScript
endlocal
