**UWAGA!!!** \
\
**Внимание!!!** \
\
**KOLEJNOŚĆ ZADAŃ INNA NIŻ W LIŚCIE OD NAUCZYCIELA, SZUKAĆ PO SŁOWACH, NUMERY TO NUMERY SKRYPTÓW** \
\
**1** \
Na dysku Z utworzyć folder o dowolnej nazwie wskazanej przez administratora bezpośrednio z konsoli, a następnie
skopiować pliki .pdf, .doxc, .doc, .xls, .png z folderu "Downloads"(C:\Users\student\Downloads). Po wykonaniu
operacji wyczyścić folder źródłowy. \
**Uwagi:** 
* Skrypt zakłada, że dysk Z: jest dostępny i można na nim tworzyć foldery.
* Skrypt także zakłada, że folder C:\Users\student\Downloads istnieje i zawiera pliki do skopiowania.
* Skrypt usunie wszystkie pliki o podanych rozszerzeniach z folderu Downloads, więc używaj go ostrożnie.


**2** \
Usuń wszystkie pliki z folderu "Pobrane" starsze niż 30 dni, które zawierają w części nazwy literę „a” \
**Uwagi:** 
* Skrypt zakłada, że folder C:\Users\student\Pobrane istnieje.
* Polecenie forfiles jest używane do znalezienia plików starszych niż 30 dni zawierających literę „a” w nazwie, a następnie usunięcia ich.

**3** \
Na pytanie ze skryptu, użytkownik wskazuje ścieżkę do folderu. Następnie informuje, że zostanie wykonana
operacja na plikach danych pakietu Office i wyświetla listę wyboru Skopiuj / Przenieś / Skasuj. Po wybraniu opcji
wykonuje wskazane działania dla plików zaczynających się na wielką literę A. Po wykonaniu operacji wyświetla
podsumowanie i pyta, czy chce się wykonać tą operację dla innego folderu. \
**Uwagi:** 
* Skrypt zakłada, że pliki Office mają rozszerzenia .docx, .xlsx i .pptx.
* Należy dostosować ścieżkę docelową w sekcji kopiowania i przenoszenia według potrzeb.

**4** \
Skrypt wykonuje po kolei:
1.Stworzenie katalogu "Diagnoza i naprawa dysku" w wybranej przez siebie lokalizacji.
2.Stworzy plik "Diagnoza dysku.txt" w katalogu "Diagnoza i naprawa dysku".
3.Sprawdzi stan wybranego przez siebie dysku.
4.Zapisze efekt w pliku "Diagnoza dysku.txt"
5.Stworzy plik "Naprawa dysku.txt" w katalogu "Diagnoza i naprawa dysku".
6.Naprawi wcześniej wybrany dysk.
7.Zapisze efekt w pliku "Naprawa dysku.txt" \
**Uwagi:** 
* Skrypt zakłada, że masz uprawnienia administratora do wykonania chkdsk.
* Polecenie chkdsk może wymagać ponownego uruchomienia komputera, w zależności od stanu dysku.
* Proszę używać tego skryptu z ostrożnością, ponieważ narzędzie chkdsk może wprowadzać zmiany na dysku.

**5** \
Stworzyć katalog o nazwie wskazanej przez administratora we wskazanym miejscu(na wskazanej ścieżce).
Następnie w katalogu tym stworzyć plik .txt z tekstem "Hello everybody" o nazwie "myPlik". W kolejnym kroku
stworzyć kolejny katalog o nazwie wskazanej przez administratora, i po poprawnym wykonaniu polecenia zmienić
nazwę pliku znajdującego się w pierwotnej lokalizacji na "terazMyPlik" oraz dopisać do jego treści "Zabrałem ten
plik". \
**Uwagi:** 
* Upewnij się, że podane ścieżki są dostępne i masz uprawnienia do tworzenia katalogów i plików w tych lokalizacjach.
* Skrypt tworzy plik tekstowy w pierwszym katalogu, a następnie zmienia jego nazwę i dodaje dodatkowy tekst.

**6** \
SCRYPT ma utworzyć we wskazanej lokalizacji foldery o nazwach: TXT, BAT, ZIP, RAR, DOC, XLS, PIC. Następnie
wykonać operację kopiowanie / przenoszenia plików z folderu ../Download do odpowiednich folderó1)
docelowych. W przypadku kopiowania, ma zadać dodatkowe pytanie, czy po skopiowaniu z powodzeniem
skazować plik źródłowy. \
**Uwagi:** 
* Upewnij się, że podana ścieżka istnieje i masz odpowiednie uprawnienia do tworzenia folderów i manipulacji plikami.
* Skrypt zakłada, że folder Downloads jest zlokalizowany w C:\Users\student\Downloads. Możesz to zmienić według potrzeb.
* Skrypt pyta o usunięcie plików źródłowych tylko w przypadku wyboru operacji kopiowania.

**7** \
Skrypt ma być uruchamiany cyklicznie. Ma pobierać informacje o wolnej przestrzeni dyskowej na dysku C, D i Z, a
następnie zapisywać wynik do pliku raportSkanu.txt we wskazanej lokalizacji \
**Uwagi:** 
* Skrypt zakłada, że dyski C, D i Z są dostępne w systemie.
* W skrypcie ustawiono interwał czasowy na 1 godzinę (3600 sekund) między kolejnymi sprawdzeniami. Możesz to zmienić, edytując wartość w linii timeout /t 3600 /nobreak.
* Upewnij się, że podana ścieżka do zapisu raportu istnieje i masz do niej odpowiednie uprawnienia

**8** \
Skrypt który usuwa pliki starsze niż podana przez użytkownika data w podanym katalogu \
**Uwagi:** 
* Skrypt wykorzystuje datę modyfikacji pliku do określenia, czy plik jest starszy niż podana data.
* Upewnij się, że masz odpowiednie uprawnienia do usuwania plików w określonym katalogu.
* Skrypt usuwa wszystkie pliki starsze niż podana data, więc używaj go ostrożnie.

**9** \
Napisz skrypt, który będzie zmieniał rozszerzenie plików we wskazanym katalogu. Skrypt przyjmuje trzy parametry:
rozsz1, rozsz2 oraz katalog i będzie zmieniał rozszerzenie plikom, które dotąd miały rozszerzenie rozsz1 na rozsz2 w
katalogu katalog. \
**Uwagi:** 
* Skrypt zmienia rozszerzenia wszystkich plików w podanym katalogu (oraz podkatalogach), które mają rozszerzenie określone przez użytkownika.
* Upewnij się, że masz odpowiednie uprawnienia do zmiany plików w określonym katalogu.
* Skrypt nie tworzy kopii bezpieczeństwa plików przed zmianą, więc zaleca się zachowanie ostrożności.

**10** \
Zapytać Użytkownuka jego imię, stworzyć folder i w nazwie użyć imię Użytkownika. Utworzyć w tym folderze plik
tekstowy. Użyć polecenie ping google.com i resultat zapisać w tym pliku. Zapytać Użytkownika, czy chce zobaczyć
resultat pracy polecenia ping w pliku. Jeżeli tak, to otworzyć ten plik w notpadzie. Zapytać Użytkownika czy chce
zrobić kopię pliku, jeżeli tak, to utworzyć kopie tego pliku w tym samym folderze i taką zamą nazwą, ale w końcu
nazwy dopisać 1. Jeżeli nie, to pożegnać się z Użytkownikiem i zamknąć command line. \
**Uwagi:** 
* Skrypt tworzy folder i plik tekstowy w lokalizacji, w której znajduje się skrypt.
* Skrypt otwiera plik w Notatniku, jeśli użytkownik wyrazi taką chęć.
* Skrypt kopiuje plik z wynikami ping, jeśli użytkownik zdecyduje się na to.

**11** \
Pomysł na mój skrypt jest bardzo prosty.
Generator haseł. Często zdarza się, że osoby w wieku 40 i więcej lat nie mogą wymyślić silnego i bezpiecznego
hasła do swoich kont.
Mój skrypt jest dobrym rozwiązaniem tego problemu (czy to możliwe w BASH CMD Windows \
**Uwagi:** 
* Skrypt generuje hasło z losowych znaków, włączając małe i duże litery, cyfry oraz znaki specjalne.
* Skrypt ten nie jest idealny i nie powinien być używany do tworzenia haseł do bardzo ważnych kont lub danych.
* Długość i skład zestawu znaków można modyfikować w skrypcie.
  
**12** \
Moim zdaniem administrator systemów komputerowych pownnienen umieć korzystać z podstawowych komend
takich jak DELETE , COPY i TYPE.
Skrypt tworzy plik w lokalizacji A: o nazwie stary.txt zawierający wiadomość "Hello world", a następnie tworzy
nowy plik w lokalizacji B i kopiuje do niego zawartość tekstową z pliku A. \
**Uwagi:** 
* Upewnij się, że dyski A: i B: są dostępne i masz odpowiednie uprawnienia do tworzenia i kopiowania plików w tych lokalizacjach.
* Jeśli plik nowy.txt już istnieje w lokalizacji B, skrypt nadpisze go bez ostrzeżenia.
  
**13** \
Utwórz plik wsadowy, aby wyświetlić zawartość wszystkich plików .txt danego folderu. Nazwa katalogu jest
wprowadzana w wierszu polecenia podczas uruchamiania pliku wsadowego. \
**Uwagi:** 
* Skrypt wyświetli zawartość każdego pliku .txt w podanym folderze.
* Upewnij się, że podana ścieżka jest prawidłowa i masz odpowiednie uprawnienia do czytania plików w tym folderze.
  
**14** \
Plik wsadowy będzie musiał zmieniać nazwy wszystkich plików, znajdujących się w foldzerze, które zaczynają się na
przykład na literę "Z" za pomocą FOR. \
**Uwagi:** 
* Skrypt zmienia nazwy plików w określonym folderze, które zaczynają się na literę "Z".
* Nazwy plików są zmieniane poprzez dodanie prefiksu "NowaNazwa" do ich istniejących nazw.
* Upewnij się, że masz odpowiednie uprawnienia do zmiany plików w określonym folderze.

**15** \
Plik wsadowy ma kopiować wszystkie pliki o wybranym przez użytkownika rozszerzeniu ze wszystkich podfolderów
wskazanej lokalizacji do folderu o nazwie "Wyniki kopiowania". Dodatkowo, zmienia nazwy wszystkich
skopiowanych plików na cyfrę, będącą aktualnym indeksem kopiowanego pliku. \
**Uwagi:** 
* Skrypt kopiuje pliki z podanym rozszerzeniem ze wszystkich podfolderów do folderu "Wyniki kopiowania" i zmienia ich nazwy na kolejne numery.
* Upewnij się, że masz odpowiednie uprawnienia do kopiowania plików w określonym folderze.
  
**16** \
Napisz plik wsadowy ktory usunie wszystkie pliki .txt z wybranej sciezki, ktore sa starsze niz 3 dni. \
**Uwagi:** 
* Skrypt usuwa wszystkie pliki .txt w określonym folderze, które są starsze niż 3 dni.
* Upewnij się, że masz odpowiednie uprawnienia do usuwania plików w określonym folderze.
* Proszę używać tego skryptu z ostrożnością, ponieważ usuwanie plików jest operacją nieodwracalną.
  
**17** \
Manipulowanie użytkownikami zdefiniowanymi w systemie. Listowanie, dodawania, Zmiana haseł, Nadawanie i
cofanie uprawnień administracyjnych \
**Uwagi:** 
* Skrypt umożliwia wykonywanie podstawowych operacji zarządzania użytkownikami w systemie Windows.
* Upewnij się, że używasz tego skryptu z odpowiednimi uprawnieniami i ostrożnością, szczególnie przy nadawaniu i odbieraniu uprawnień administracyjnych.
  
**18** \
Jako Administrator Systemów, chce mieć pewność podczas instalacji pliku, że zostanie dokonana czysta instalacja
danego programu.
Utwórz testowe foldery w przynajmniej dwóch lokalizacjach na dysku i wypełnij je zawartością (na przykład, umieść
tam obrazek i plik tekstowy).
Napisz skrypt, który skopiuje te foldery do folderu "Backup". Następnie, skrypt ma usunąć te foldery z całą
zawartością z ich oryginalnych lokalizacji (ścieżka ma być wpisana w skrypcie w widocznym miejscu, żeby
użytkownik mógł później łatwo zmienić podaną ścieżkę). Na zakończenie, skrypt ma otworzyć folder "Backup". \
**Uwagi:** 
* Przed uruchomieniem skryptu, zmień "ścieżka_do_obrazka.jpg" na ścieżkę do istniejącego obrazka, który chcesz skopiować.
* Upewnij się, że ścieżki folderów testowych i backup są poprawne i istnieją w systemie, w którym ma być uruchomiony skrypt.
* Skrypt usuwa foldery testowe po ich skopiowaniu, więc upewnij się, że nie zawierają one ważnych danych przed uruchomieniem skryptu.
  
**19** \
Stworzenie skryptu który umożliwi modyfikowanie skryptu zawierającego menu wyboru z listą często
uruchamianych programów . \
**Uwagi:** 
* Aby dodać nowy program do listy, dodaj kolejną linię w formacie if "%choice%"=="numer" start nazwa_programu.
* Upewnij się, że ścieżki do programów są poprawne, jeśli są to programy innego typu niż wbudowane aplikacje Windows.
* Skrypt umożliwia łatwą edycję, co pozwala na szybkie dostosowanie listy programów.
  
**20** \
   Skrypt wyświetlający menu z listą wyboru kilku charakterystycznych adresów w sieci WAN (np. gogle: 8.8.8.8 etc)
Badający czy jest z nich odpowiedź i na życzenie zapisujący wynik do pliku \
**Uwagi:** 
* Po wybraniu adresu, skrypt użyje polecenia ping do sprawdzenia połączenia z tym adresem.
* Użytkownik będzie miał opcję zapisania wyniku polecenia ping do pliku tekstowego.
* Plik wynikowy będzie miał nazwę w formacie ping_result_adresIP.txt.
  
**21** \
Napisz skrypt, który potrafi określić, czy wpisany ciąg znaków jest liczbą i czy jest większa od 10. Program powinien
obliczyć i wyświetlić w konsoli poprawne zdanie
(("liczba" jest większa od 10) lub ("liczba" jest mniejsza od 10)) \
**Uwagi:** 
* Skrypt prosi użytkownika o wpisanie liczby, a następnie sprawdza, czy wprowadzony ciąg znaków jest liczbą.
* Jeśli wprowadzona wartość jest liczbą, skrypt porównuje ją z 10 i wyświetla odpowiednią informację.
* Jeśli wprowadzona wartość nie jest liczbą, skrypt informuje o tym użytkownika i prosi o ponowne wprowadzenie danych.
  
**22** \
Skrypt, który pobiera od użytkownika podane dane. (status: student, admin, inny; Imię, Nazwisko) wyświetla
podsumowanie zebranych informacji i pyta czy chce się dodać tego użytkownika do systemu. Jeśli tak – dodaje
nowego użytkownika z odpowiednimi uprawnieniami i hasłem. \
**Uwagi:** 
* Skrypt wymaga uprawnień administratora do dodawania użytkowników i przydzielania uprawnień.
* Skrypt dodaje użytkownika do systemu Windows, ustawiając podane hasło.
* W przypadku dodawania użytkownika jako "admin", skrypt dodaje go również do grupy administratorów systemu.
  
**23** \
Przydatnym plikiem wsadowym, który może być użyteczny w pracy administratora to skrypt,
który umożliiwia przeszukiwnaie dysków lub folderów. Użytkowmnik na samy początku zostanie poproszony o
podanie dysku bądź folderu do przeszukania.Następnie musi podać rozszezrzenie pliku którego poszukuje. Na
koniec użytkownik podaje miejsce (folder), gdzie plik ma zostać skopiowany. \
**Uwagi:** 
* Skrypt pozwala na wybór ścieżki do przeszukania, rodzaju plików do wyszukania oraz miejsca docelowego dla skopiowanych plików.
* Upewnij się, że masz odpowiednie uprawnienia do kopiowania plików w wybranej lokalizacji.
* Skrypt nie wykonuje sprawdzenia duplikatów; jeśli plik o tej samej nazwie istnieje w miejscu docelowym, zostanie nadpisany.
  
**24** \
Skrypt ma wykonać kilka operacji matematycznych, na wartościach stałych lub pobranych z klawiatury \
**Uwagi:** 
* Skrypt umożliwia wykonanie podstawowych operacji matematycznych: dodawanie, odejmowanie, mnożenie i dzielenie.
* Skrypt prosi o wprowadzenie dwóch liczb i wyświetla wynik wybranej operacji.
* W przypadku dzielenia skrypt sprawdza, czy dzielnik nie jest równy zero, aby uniknąć błędu dzielenia przez zero.
  
**25** \
Tworzy użytkownika z dostępem do niektórych plików i zmienia czas uśpienia komputera. \
**Uwagi:** 
* Skrypt tworzy nowego użytkownika w systemie z podanym hasłem.
* Skrypt zmienia ustawienia mocy, aby ustawić czas uśpienia systemu. Pamiętaj, że czas uśpienia jest ustawiany w sekundach.
* Opcjonalnie, możesz użyć polecenia icacls do ustawienia uprawnień dostępu do określonych plików dla nowego użytkownika. Ta część została pominięta w skrypcie ze względu na jej złożoność i zależność od konkretnych wymagań.
  
**26** \
Utwórz skrypt, który usuwa pliki z rozszerzeniem .pdf ze wskazanego folderu, które są starsze niż 25 dni. \
**Uwagi:** 
* Skrypt usuwa wszystkie pliki .pdf w określonym folderze, które są starsze niż 25 dni.
* Upewnij się, że masz odpowiednie uprawnienia do usuwania plików w określonym folderze.
* Proszę używać tego skryptu z ostrożnością, ponieważ usuwanie plików jest operacją nieodwracalną.
  
**27** \
Skrypt ma za zadanie obliczyć ilość plików i katalogów w zależności od ich uprawnień dla wybranego urzytkownika.
Opdowiedź powinna być wypisana w formie "tabelki", gdzie każdy rodzaj uprawnień ma podaną ilość zarówno
pliów jak i katalogów. \
**Uwagi:** 
* Skrypt ten wykorzystuje polecenie icacls do wyświetlenia uprawnień dla plików i katalogów, ale nie zlicza ich w sposób automatyczny.
* Wyniki wymagają ręcznej analizy do stworzenia tabelki z ilością plików i katalogów.
* Ograniczenia narzędzi wiersza poleceń Windows mogą nie pozwolić na pełne zautomatyzowanie tego zadania.
  
**28** \
 Skrypt otwierający w przeglądarce wskazaną przez operatora stronę internetową \
**Uwagi:** 
* Skrypt prosi użytkownika o wpisanie pełnego adresu URL strony internetowej.
* Skrypt otworzy stronę w domyślnej przeglądarce systemu Windows.
* Upewnij się, że wprowadzony adres URL jest poprawny.
  
**29** \
 Przekierowanie listy aktywnych procesów do pliku tekstowego \
**Uwagi:**
* Skrypt prosi o nazwę pliku, do którego zostanie zapisana lista procesów.
* Plik z listą procesów zostanie zapisany w lokalizacji, w której znajduje się skrypt, chyba że podana zostanie pełna ścieżka do pliku.
* Lista zawierać będzie informacje o wszystkich procesach aktualnie uruchomionych w systemie.
  
**30** \
 Użytkownik wprowadza listę liczb, na wyjściu mamy malejąco wysortowaną listę \
**Uwagi:**
* Skrypt prosi użytkownika o wprowadzenie liczb, a następnie sortuje je w kolejności malejącej.
* Liczby są najpierw zapisywane do pliku tymczasowego, a następnie sortowane za pomocą polecenia sort.
* Wynik sortowania jest wyświetlany w konsoli.
  
**31** \
wyszukiwanie powtarzających się plików po nazwie, lub wielkości
Skrypt do sortowania plików alfabetycznie, po dacie utworzenia, oraz wielkości
usuwanie plików w dużych ilościach i zmiana nazwy plików \
**Uwagi:**
* Skrypt wykorzystuje polecenie dir z systemu Windows do sortowania plików.
* Opcje /b i /o w poleceniu dir służą do wyświetlenia wyników w formie prostej listy (/b) i określenia metody sortowania (/o).
* Sortowanie według daty utworzenia może nie działać zawsze tak, jak oczekiwano, ponieważ dir sortuje pliki według daty ostatniej modyfikacji.
