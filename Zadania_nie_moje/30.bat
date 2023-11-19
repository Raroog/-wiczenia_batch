@echo off
setlocal

:: Ustaw nazwę pliku, do którego zostaną przekierowane aktywne procesy
set outputFile=lista_procesow.txt

:: Użyj polecenia tasklist do wygenerowania listy procesów i przekieruj ją do pliku
tasklist > "%outputFile%"

:: Informacja o zapisaniu listy procesów
echo Lista aktywnych procesów została zapisana do pliku: %outputFile%

endlocal
