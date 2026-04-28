#set document(title: "Research Design and Pilot Study Report")
#set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm))
#set text(font: "New Computer Modern", size: 11pt, lang: "pl")
#set heading(numbering: "1.1.")
#set par(justify: true)

#show heading: set text(lang: "en")

#context [
  #set text(font: "Inter")
  
  #align(center)[
    #v(4cm)
    #text(size: 22pt, weight: "bold", lang: "en")[Research Design and Pilot Study Report]
    
    #v(4cm)
    #text(size: 16pt, style: "italic")[
      Modele LLM jako uniwersalne agenty adaptujące się do systemów złożonych na przykładzie gier planszowych
    ]
  
    #v(1cm)
    #text(size: 15pt)[Supervisor: dr inż. Krzysztof Manuszewski]
    #v(1cm)
    #context [
      #set text(size: 13pt)
      #grid(
        columns: (1fr, 1fr),
        gutter: 0.75cm,
        [Krzysztof Nasuta 193328], [Bartłomiej Krawisz 193319],
        [Filip Dawidowski 193433], [Stanisław Nieradko 193044],
      )
    ]
  ]
  
  #pagebreak()
]

#outline(title: "Table of Contents", indent: auto)
#pagebreak()

= Research project

== Title
*Modele LLM jako uniwersalne agenty adaptujące się do systemów złożonych na przykładzie gier planszowych*

== Supervisor
dr inż. Krzysztof Manuszewski

== Goals and short description
Celem pracy jest opracowanie agenta wykorzystującego duże modele językowe (LLM), zdolnego do prowadzenia rozgrywki w gry planszowe wyłącznie na podstawie analizy ich instrukcji.

Projekt powinien pozwalać na symulację zachowania żywego gracza w złożonych, dynamicznych systemach decyzyjnych. Rozwiązanie musi umożliwiać skuteczną interakcję na linii agent-środowisko poprzez czytelną reprezentację bieżącego stanu gry, rejestrowanie ruchów przeciwników oraz komunikowanie własnych posunięć. Projekt zakłada podejście iteracyjne, z początkowym ograniczeniem testów do gier o prostszej mechanice (np. niewymagających analizy przestrzennego położenia komponentów na planszy).

Hipotezą badawczą jest weryfikacja możliwości skutecznego adaptowania się agenta LLM do reguł gry oraz podejmowania trafnych decyzji na podstawie znajomości samej instrukcji tekstowej.

= Research design

== Research goal
Głównym celem badań jest ocena zdolności dużych modeli językowych (LLM) do pełnienia roli autonomicznych agentów w złożonym środowisku asymetrycznej gry karcianej (Marvel Champions), gdzie agent podejmuje decyzje i wchodzi w interakcję z systemem za pośrednictwem ustandaryzowanego interfejsu (Model Context Protocol - MCP).

== Research gap
Analiza literatury z pierwszej części projektu wykazała, że większość dotychczasowych badań nad agentami LLM skupia się na stosunkowo prostych wariantach gier (Dylemat Więźnia, Kamień-Papier-Nożyce) lub grach o doskonałej informacji z precyzyjną, numeryczną reprezentacją. Brakuje badań empirycznych sprawdzających zachowanie modeli w rozbudowanych, narracyjno-logicznych grach planszowych/karcianych, a w szczególności wykorzystania standardu integracyjnego MCP jako narzędzia do zapewnienia bezpiecznego i powtarzalnego interfejsu agent-środowisko.

== Research questions
+ W jakim stopniu model LLM potrafi poprawnie interpretować aktualny stan gry Marvel Champions przekazywany wyłącznie za pomocą narzędzi Model Context Protocol (MCP)?
+ Z jaką skutecznością agent LLM generuje legalne i logiczne ruchy opierając się na wiedzy czerpanej wyłącznie z instrukcji tekstowej do gry?
+ W jaki sposób należy sformułować i przekazać agentowi zasady gry, aby zminimalizować błędy w zrozumieniu mechanik i zapewnić optymalne wykorzystanie kontekstu?

== Research hypotheses
+ Model LLM będzie w stanie poprawnie zinterpretować zdigitalizowany stan gry Marvel Champions na podstawie udostępnionych przez serwer MCP narzędzi z dokładnością wystarczającą do rozegrania ciągłej tury.
+ Dzięki odpowiedniemu dostarczeniu zasad i narzędzi, agent LLM potrafi w większości przypadków zgłosić ruch zgodny z regułami gry (tzw. legal move).
+ Optymalizacja formatu instrukcji (np. zwięzły tekst lub ekstrakcja reguł w formacie ustrukturyzowanym) znacząco poprawi jakość i poprawność ruchów agenta w porównaniu z surowym plikiem PDF zawierającym elementy graficzne.

== Research subjects and sample
Przedmiotem badań są agenty opierający swoje działanie na modelach językowych (LLM). W początkowej fazie badane będą komercyjne modele chmurowe o dużej wydajności i potwierdzonych zdolnościach do obsługi narzędzi (np. Claude Sonnet 4.6, GPT-5.2), aby ustanowić mocny punkt odniesienia. W dalszych etapach, do próby badawczej dołączone zostaną mniejsze modele uruchamiane lokalnie, w celu weryfikacji, na ile rozwiązanie to da się wdrożyć w środowisku o ograniczonych zasobach sprzętowych. Oprócz samych modeli, "próbę" stanowić będzie wyselekcjonowany zestaw konkretnych scenariuszy testowych (zapisanych stanów gry w Marvel Champions), na których agenty będą ewaluowani pod kątem spójności decyzji. Dobór modeli i scenariuszy będzie miał charakter celowy (purposive sampling): do badania włączane będą te modele, które spełniają kryterium stabilnej obsługi narzędzi, oraz te scenariusze, które reprezentują kluczowe klasy decyzji występujących w rozgrywce.

== Operationalization - variables
- *Zmienna niezależna:* Sposób dostarczenia zasad gry do kontekstu agenta (np. pełny tekst z PDF, zasady ustrukturyzowane) oraz zastosowany model LLM.
- *Zmienna zależna:* Wskaźnik poprawności akcji, rozumiany jako odsetek legalnych zagrań zaproponowanych przez model w stosunku do wszystkich wygenerowanych akcji. Legalność zapytań jest weryfikowana przez silnik gry i zapisywana w logach sesji.
- *Zmienne zakłócające:* Opóźnienia API, halucynacje modeli wynikające z przeładowania kontekstu, niejednoznaczności w interpretacji "legalnego ruchu". Istotnym czynnikiem jest również fakt, że platforma DragnCards natywnie odrzuca ruchy "niemożliwe" (całkowicie niezgodne z podstawową fizyką gry), co z jednej strony wymusza na modelu korektę, a z drugiej wpływa na to jak liczymy poprawność zagrań.
- *Zmienne ukryte:* Stopień znajomości reguł gry Marvel Champions przez model wynikający z jego danych treningowych.

== Research methods
Badanie opiera się na metodzie *eksperymentu symulacyjnego* oraz badaniu o charakterze *eksploracyjnym*. Skonstruowany zostanie wirtualny środowisko testowe integrujące silnik gry karcianej (środowisko DragnCards) z autorskim Proof of Concept w postaci serwera Model Context Protocol. Faza eksploracyjna będzie polegała na empirycznym badaniu, jakie akcje i zapytania sieciowe (requesty) generuje środowisko podczas rzeczywistej rozgrywki z udziałem człowieka, w celu wyekstrahowania minimalnego zbioru do interfejsu narzędziowego. Następnie w zautomatyzowanej fazie eksperymentalnej testowane będą różne warianty przekazywania reguł w powtarzalnych symulacjach.

== Research tools
- *Środowisko gry:* Platforma DragnCards pozwalająca na wirtualną rozgrywkę karcianą, uruchomiona lokalnie na komputerach, w postaci zkonteneryzowanej aplikacji. Dodatkowo wykorzystanie zostany oficjalny plugin "Marvel Champions".
- *Oprogramowanie autorskie:* Aplikacja MCP (`DragncardsAI`), stanowiąca w pełni funkcjonalny serwer udostępniający modelom językowym narzędzia do interakcji ze stołem.
- *Narzędzia analityczne:* Zestaw skryptów do rejestrowania i analizy realnych zapytań (requestów) wysyłanych przez przeglądarkę podczas ludzkiej gry na platformie DragnCards, co pozwoli zmapować niezbędne akcje.

#figure(
 image("assets/dragoncards.png"),
 caption: [
  WebUI gry DragnCards z przykładową rozgrywką jednego z modeli LLM.
 ],
)

== Expected results
Spodziewane jest określenie optymalnego sposobu dostarczania zasad gry do modelu językowego oraz precyzyjne zawężenie zbioru narzędzi (ruchów) dostępnych dla agenta, bazując na analizie realnych zapytań sieciowych platformy DragnCards. Rezultatem ilościowym będzie wskaźnik poprawności zagrań dla różnych konfiguracji wiedzy i narzędzi.

== Validity threats
- *Trafność konstruktu (Construct validity):* Zagrożeniem jest niejednoznaczne rozumienie "legalnego ruchu" (np. technicznie poprawne wysłanie zapytania API vs. sensowne zagranie zgodne z instrukcją). Aby zminimalizować to zagrożenie, skrypty ewaluacyjne będą precyzyjnie kategoryzować akcje, weryfikując nie tylko składnię, ale również zgodność z prawidłowymi regułami stanu gry.
- *Trafność wewnętrzna (Internal validity):* Zagrożeniem typu *instrumentation* mogą być ukryte błędy w środowisku testowym (serwer MCP) wpływające na postrzeganą poprawność akcji modelu. Ogranicza się to poprzez gruntowne przetestowanie Proof of Concept w fazie pilotażu. Dodatkowo istnieje zagrożenie związane z efektem *testing* (modele mogą opierać się na historii konwersacji), w związku z czym na początku każdej symulacji stan i pamięć kontekstowa będą ściśle resetowane.
- *Trafność zewnętrzna (External validity):* Wyniki dla gry Marvel Champions mogą nie być łatwo uogólnialne na inne rodzaje gier. Zminimalizowano to zagrożenie poprzez abstrakcyjne i generyczne zaprojektowanie protokołu MCP, które ma oddawać standardowe zachowanie interfejsu dla wielu systemów agentowych.
- *Trafność wniosków statystycznych (Conclusion validity):* Niewystarczająca próba testowa może doprowadzić do błędnych wniosków. Aby temu zapobiec, ewaluacja będzie oparta o powtarzalne, w pełni zautomatyzowane rygorystyczne sesje symulacyjne i testowanie statystyczne na odpowiednio dużej liczbie zapytań (rzędu setek na każdy model).

== Research plan
Eksperyment podzielono na następujące etapy:
+ *Rozwój infrastruktury i pilotaż (PoC):* Uruchomienie "na ślepo" serwera MCP `DragncardsAI` z minimalnym zestawem narzędzi, ocena działania bazowego. *(Krzysztof Nasuta, Bartłomiej Krawisz)*
+ *Badania platformy i analiza ruchu:* Rozegranie realnych rozgrywek przez badaczy na platformie DragnCards w celu przechwycenia i zbadania rzeczywistych requestów (np. w logach przeglądarki), co pozwoli zdefiniować minimalny i optymalny zbiór narzędzi (ruchów). *(Filip Dawidowski, Stanisław Nieradko)*
+ *Implementacja środowiska agentowego:* Przygotowanie finalnego środowiska uruchomieniowego wielu agentów opartych o duże modele językowe, odpowiadającego za utrzymywanie ciągłości rozgrywki, przekazywanie kontekstu i ocenę zachowania. *(Cały zespół)*
+ *Opracowanie formatu instrukcji:* Ewaluacja różnych sposobów dostarczenia zasad gry do modelu (ponieważ oryginalny PDF z obrazkami i nieregularnym formatowaniem może być problematyczny). *(Cały zespół)*
+ *Eksperymenty właściwe:* Przeprowadzenie zautomatyzowanych prób, gdzie model grając przez udoskonalony serwer MCP i posiadając instrukcje, realizuje zadane scenariusze. *(Krzysztof Nasuta, Stanisław Nieradko)*
+ *Ewaluacja:* Analiza logów interakcji agenta (wywołań narzędzi i odpowiedzi) oraz wskaźników poprawności zagrań. *(Bartłomiej Krawisz, Filip Dawidowski)*

== Publication goals
Nie przewiduje się publikacji wyników w recenzowanych czasopismach naukowych ani materiałach konferencyjnych. Aktualny projekt ma formę Proof of Concept (PoC) i służy przede wszystkim jako praktyczna realizacja przedmiotu badawczego. Jego nadrzędnym celem jest stworzenie stabilnego fundamentu technologicznego oraz wyciągnięcie wniosków badawczych, które w niedalekiej przyszłości zostaną wykorzystane przez członków zespołu do realizacji autorskich prac magisterskich z obszaru integracji LLM w złożonych środowiskach informatycznych.

= Pilot study

== Research subjects
W badaniu pilotażowym wykorzystano dwa modele językowe: Gemma 4 31B oraz GPT-5.4, zintegrowane ze standardem Model Context Protocol w celu sprawdzenia zdolności do elementarnej interakcji z platformą DragnCards. Przedmiotem obserwacji było przede wszystkim zachowanie narzędziowe modeli (tool use) w nieznanym środowisku oraz ich zdolność do wykonania prostych operacji na stanie gry.

Każdy z modeli uruchomiono dwukrotnie: raz w wariancie bez dostarczonej instrukcji gry, a raz z tekstową wersją instrukcji odczytaną z pliku PDF. Taki dobór przypadków pozwolił wstępnie porównać, czy już na etapie pilotażu samo udostępnienie reguł w formie tekstowej wpływa na sposób korzystania z narzędzi i jakość podstawowej interakcji z otoczeniem.

== Study execution
Badanie pilotażowe zostało przeprowadzone w drugiej połowie kwietnia 2026 roku przez członków zespołu badawczego. Polegało ono na uruchomieniu autorskiego Proof of Concept serwera `DragncardsAI` i podpięciu pod niego agentów opartych na wybranych modelach językowych. Jako warstwę interakcji z serwerem MCP wykorzystano narzędzie OpenCode, które pośredniczyło w wywołaniach narzędzi i rejestrowało przebieg sesji. Pilotaż zrealizowano w dwóch wariantach eksperymentalnych: bez dostarczenia modelowi jakiejkolwiek instrukcji gry oraz z tekstową wersją instrukcji Marvel Champions odczytaną z pliku PDF. Badanie miało na celu weryfikację samej łączności, możliwości manipulacji obiektami przez API oraz wstępną obserwację, czy obecność instrukcji wpływa na sposób działania modeli w środowisku.

== Results
Wyniki pilotażu wyraźnie różniły się w zależności od zastosowanego modelu oraz obecności instrukcji gry w kontekście.

- W przypadku GPT-5.4 z dostarczoną instrukcją tekstową model był w stanie przeprowadzić pełną rozgrywkę, co zostało potwierdzone na podstawie logów akcji rejestrowanych podczas sesji.
- GPT-5.4 uruchomiony bez instrukcji również był zdolny do przeprowadzenia rozgrywki, jednak proces ten przebiegał znacznie wolniej, wiązał się z dużą liczbą błędów i skutkował nieefektywnym wykorzystaniem tokenów.
- Gemma 4 31B z instrukcją była w stanie rozpocząć rozgrywkę, lecz nie ukończyła jej poprawnie. W praktyce model działał zbyt wolno i popełniał zbyt wiele błędów, aby możliwe było utrzymanie ciągłości partii. W pewnym momencie agent ogłosił zwycięstwo, pomimo faktu braku wykonania jakichkolwiek akcji.
- W wariancie bez instrukcji Gemma 4 31B nie była w stanie skutecznie rozpocząć rozgrywki.

Uzyskane wyniki potwierdzają dwie istotne obserwacje. Po pierwsze, warstwa integracyjna MCP wraz z narzędziem OpenCode działała stabilnie i umożliwiała wiarygodne śledzenie przebiegu interakcji w logach. Po drugie, już na etapie pilotażu widoczny był bardzo silny wpływ sposobu dostarczenia wiedzy o zasadach na zdolność modelu do utrzymania sensownej i efektywnej rozgrywki.

== Conclusions
Pilotaż potwierdził poprawność działania warstwy komunikacyjnej oraz użyteczność narzędzia OpenCode jako pośrednika w interakcji z serwerem MCP. Opracowane narzędzia autorskie okazały się wystarczająco stabilne, aby przeprowadzić porównawcze uruchomienia różnych modeli i wiarygodnie analizować ich zachowanie na podstawie logów akcji.

Najważniejszym wnioskiem z badania jest silny wpływ dostarczenia instrukcji gry na skuteczność działania agenta. W przypadku GPT-5.4 obecność tekstowej instrukcji pozwoliła na przeprowadzenie pełnej rozgrywki, podczas gdy wariant bez instrukcji, mimo częściowej skuteczności, był wyraźnie mniej efektywny i generował znacznie więcej błędów. Wynik ten wskazuje, że sama zdolność modelu do korzystania z narzędzi nie jest wystarczająca do sprawnego działania w złożonym środowisku decyzyjnym bez odpowiednio przygotowanej warstwy wiedzy.

Wyniki uzyskane dla modelu Gemma 4 31B pokazują z kolei, że nie każdy model posiada wystarczające kompetencje operacyjne, aby utrzymać ciągłość rozgrywki nawet przy dostarczonej instrukcji. Sugeruje to, że w dalszych etapach badań konieczna będzie nie tylko optymalizacja formy przekazywania zasad, ale także ostrożny dobór modeli pod względem niezawodności, szybkości działania i jakości wywołań narzędziowych.

= Conclusions

== Design
Badanie zaprojektowano tak, by płynnie przejść od testów integracyjnych (Proof of Concept) do systematycznej weryfikacji kompetencji agenta LLM. Przeprowadzony pilotaż potwierdził, że komunikacja po MCP, realizowana z wykorzystaniem narzędzia OpenCode, jest wystarczająco stabilna do prowadzenia kontrolowanych eksperymentów i analizy logów akcji. Jednocześnie już na tym etapie ujawniło się, że poprawność "mechaniczna" i ciągłość rozgrywki zależą nie tylko od samego interfejsu narzędziowego, ale również od jakości dostarczonych instrukcji oraz od właściwości konkretnego modelu.

== Pilot study
Rozegrany pilotaż wykazał wyraźne różnice pomiędzy modelami oraz wariantami uruchomienia z instrukcją i bez niej. Najlepszy rezultat osiągnął GPT-5.4 z tekstową instrukcją odczytaną z PDF, który był w stanie przeprowadzić pełną rozgrywkę, co potwierdzono w logach akcji. Ten sam model, uruchomiony bez instrukcji, również potrafił kontynuować grę, lecz robił to znacznie wolniej, z większą liczbą błędów i przy nieefektywnym wykorzystaniu tokenów. Z kolei Gemma 4 31B z instrukcją była w stanie jedynie rozpocząć rozgrywkę, natomiast bez instrukcji nie osiągnęła nawet tego poziomu operacyjności.

Kluczowymi wnioskami na przyszłość są:
+ *Dostarczenie zasad:* Obecność instrukcji wyraźnie poprawiła zdolność modeli do prowadzenia rozgrywki, dlatego dalsze prace powinny skupić się na opracowaniu możliwie najbardziej użytecznego formatu reguł. Sam tekst odczytany z PDF okazał się pomocny, lecz nie musi być formatem optymalnym, ponieważ zawiera artefakty ekstrakcji i może wprowadzać szum informacyjny.
+ *Dobór modeli:* Wyniki pokazały, że sama dostępność modelu z obsługą narzędzi nie gwarantuje wystarczającej jakości działania. W dalszych etapach konieczny będzie świadomy dobór modeli pod względem niezawodności, szybkości działania, kosztu tokenowego oraz jakości wywołań narzędziowych.
+ *Zawężenie przestrzeni akcji:* Konieczne jest rozegranie realnej rozgrywki przez badaczy na platformie DragnCards w celu przeanalizowania rzeczywistych requestów sieciowych generowanych przez klienta. Taka inżynieria odwrotna pozwoli efektywnie zawęzić zbiór ruchów (narzędzi), które zostaną udostępnione agentowi, minimalizując ryzyko "zmyślania" akcji i zmniejszając obciążenie poznawcze modelu.

= Literature (from SLR)
#cite(label("-_optimizing_2024"), form: none)
#cite(label("lore_strategic_2024"), form: none)
#cite(label("ma_adaptive_2024"), form: none)
#cite(label("horibe_evolvability_2025"), form: none)
#cite(label("hadfi_personality-aware_2025"), form: none)
#cite(label("poje_effect_2024"), form: none)
#cite(label("stepin_b3emo_2026"), form: none)
#cite(label("yoon_strategic_2025"), form: none)
#cite(label("de_curto_llm-driven_2025"), form: none)
#cite(label("wang_intelligent_2025"), form: none)
#cite(label("hintze_promoting_2026"), form: none)
#cite(label("macmillan-scott_irrationality_2025"), form: none)
#cite(label("fujii_predictive_2025"), form: none)
#cite(label("mouri_zadeh_khaki_evaluating_2026"), form: none)
#cite(label("lu_llms_2024"), form: none)
#cite(label("vidler_playing_2025"), form: none)
#cite(label("mao_alympics_2023"), form: none)
#cite(label("lore_strategic_2023"), form: none)
#cite(label("de_zarza_emergent_2023"), form: none)
#bibliography("SLR.bib", title: none)
