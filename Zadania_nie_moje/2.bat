@echo off

:: Ustaw ścieżkę do folderu Pobrane
set "downloadsPath=C:\Users\%username%\Downloads"

:: Znajdź i usuń pliki starsze niż 30 dni zawierające literę "a" w nazwie
forfiles /p "%downloadsPath%" /s /m *a*.* /d -30 /c "cmd /c del @path"

echo Usunięto pliki starsze niż 30 dni zawierające literę 'a' z folderu Pobrane.
pause