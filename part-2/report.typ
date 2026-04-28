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

Projekt powinien pozwalać na symulację zachowania żywego gracza w złożonych, dynamicznych systemach decyzyjnych. Rozwiązanie musi umożliwiać skuteczną interakcję na linii agent–środowisko poprzez czytelną reprezentację bieżącego stanu gry, rejestrowanie ruchów przeciwników oraz komunikowanie własnych posunięć. Projekt zakłada podejście iteracyjne, z początkowym ograniczeniem testów do gier o prostszej mechanice (np. niewymagających analizy przestrzennego położenia komponentów na planszy).

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
Przedmiotem badań są agenty opierający swoje działanie na modelach językowych (LLM). W początkowej fazie badane będą komercyjne modele chmurowe o dużej wydajności i potwierdzonych zdolnościach do obsługi narzędzi (np. Claude Sonnet 4.6, GPT-5.2), aby ustanowić mocny punkt odniesienia. W dalszych etapach, do próby badawczej dołączone zostaną mniejsze modele uruchamiane lokalnie, w celu weryfikacji, na ile rozwiązanie to da się wdrożyć w środowisku o ograniczonych zasobach sprzętowych. Oprócz samych modeli, "próbę" stanowić będzie wyselekcjonowany zestaw konkretnych scenariuszy testowych (zapisanych stanów gry w Marvel Champions), na których agenty będą ewaluowani pod kątem spójności decyzji.

== Operationalization – variables
- *Zmienna niezależna:* Sposób dostarczenia zasad gry do kontekstu agenta (np. pełny tekst z PDF, zasady ustrukturyzowane) oraz zastosowany model LLM.
- *Zmienna zależna:* Wskaźnik poprawności akcji, rozumiany jako odsetek legalnych zagrań zaproponowanych przez model w stosunku do wszystkich wygenerowanych akcji.
- *Zmienne zakłócające:* Opóźnienia API, halucynacje modeli wynikające z przeładowania kontekstu, niejednoznaczności w interpretacji "legalnego ruchu". Istotnym czynnikiem jest również fakt, że platforma DragnCards natywnie odrzuca ruchy "niemożliwe" (całkowicie niezgodne z podstawową fizyką gry), co z jednej strony wymusza na modelu korektę, a z drugiej wpływa na to jak liczymy poprawność zagrań.
- *Zmienne ukryte:* Stopień znajomości reguł gry Marvel Champions przez model wynikający z jego danych treningowych.

== Research methods
Badanie opiera się na metodzie *eksperymentu symulacyjnego* oraz badaniu o charakterze *eksploracyjnym*. Skonstruowany zostanie wirtualny tor testowy integrujący silnik gry karcianej (środowisko DragnCards) ze środowiskiem testowym poprzez autorski Proof of Concept w postaci serwera Model Context Protocol. Faza eksploracyjna będzie polegała na empirycznym badaniu, jakie akcje i zapytania sieciowe (requesty) generuje środowisko podczas rzeczywistej rozgrywki z udziałem człowieka, w celu wyekstrahowania minimalnego zbioru do interfejsu narzędziowego. Następnie w zautomatyzowanej fazie eksperymentalnej testowane będą różne warianty przekazywania reguł w powtarzalnych symulacjach.

== Research tools
- *Środowisko gry:* Platforma DragnCards pozwalająca na wirtualną rozgrywkę karcianą.
- *Oprogramowanie autorskie:* Aplikacja MCP (`DragncardsAI`), stanowiąca w pełni funkcjonalny serwer udostępniający modelom językowym narzędzia do interakcji ze stołem.
- *Narzędzia analityczne:* Zestaw skryptów do rejestrowania i analizy realnych zapytań (requestów) wysyłanych przez przeglądarkę podczas ludzkiej gry na platformie DragnCards, co pozwoli zmapować niezbędne akcje.

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
+ *Opracowanie formatu instrukcji:* Ewaluacja różnych sposobów dostarczenia zasad gry do modelu (ponieważ oryginalny PDF z obrazkami i nieregularnym formatowaniem może być problematyczny). *(Cały zespół)*
+ *Eksperymenty właściwe:* Przeprowadzenie zautomatyzowanych prób, gdzie model grając przez udoskonalony serwer MCP i posiadając instrukcje, realizuje zadane scenariusze. *(Krzysztof Nasuta, Stanisław Nieradko)*
+ *Ewaluacja:* Analiza logów z rozumowania (chain-of-thought) agentów oraz wskaźników poprawności zagrań. *(Bartłomiej Krawisz, Filip Dawidowski)*

== Publication goals
Nie przewiduje się publikacji wyników w recenzowanych czasopismach naukowych ani materiałach konferencyjnych. Aktualny projekt ma formę Proof of Concept (PoC) i służy przede wszystkim jako praktyczna realizacja przedmiotu badawczego. Jego nadrzędnym celem jest stworzenie stabilnego fundamentu technologicznego oraz wyciągnięcie wniosków badawczych, które w niedalekiej przyszłości zostaną wykorzystane przez członków zespołu do realizacji autorskich prac magisterskich z obszaru integracji LLM w złożonych środowiskach informatycznych.

= Pilot study

== Research subjects
W badaniu pilotażowym wykorzystano model LLM poprzez integrację ze standardem Model Context Protocol w celu sprawdzenia zdolności do elementarnej interakcji z platformą DragnCards. Przedmiotem obserwacji było samo zachowanie narzędziowe (tool use) w nieznanym środowisku. Głównym kryterium kwalifikacji do pilotażu była wybitna zdolność testowanych modeli do wywoływania narzędzi, stąd wykorzystano wiodący model chmurowy (np. Claude Sonnet 4.6 a także GPT-5.2).

== Study execution
Badanie pilotażowe zostało przeprowadzone na początku marca 2026 roku przez członków zespołu inżynieryjnego. Polegało ono na uruchomieniu autorskiego Proof of Concept serwera `DragncardsAI` i podpięciu pod niego agenta. Kluczowym elementem pilotażu było uruchomienie agenta całkowicie "na ślepo" – modelowi celowo nie dostarczono żadnej instrukcji ani reguł gry Marvel Champions. Badanie miało na celu weryfikację samej łączności i możliwości manipulacji obiektami przez API metodą prób i błędów.

== Results
Mimo braku wiedzy o zasadach, model metodą prób i błędów próbował nawiązać interakcję z grą. Udało mu się z sukcesem wywołać odpowiednie narzędzia i umieścić na planszy podane przez użytkownika karty. Pokazuje to, że mechanika Model Context Protocol działa prawidłowo od strony technicznej – agent potrafi modyfikować stan środowiska, o ile wie, jakiego narzędzia użyć, nawet nie rozumiejąc strategicznego kontekstu tego ruchu. Jakościowa ocena wyników wskazuje, że połączenie integracyjne działa stabilnie i precyzyjnie reaguje na zapytania.

== Conclusions
Pilotaż potwierdził poprawność działania warstwy komunikacyjnej, jednocześnie eksponując kolejne wyzwania badawcze. Opracowane narzędzia autorskie okazały się trafne i w pełni operacyjne. Brak znajomości reguł przez agenta w pilotażu wyraźnie pokazał jednak potrzebę opracowania w przyszłości efektywnej metody dostarczania wiedzy o grze.

= Conclusions

== Design
Badanie zaprojektowano tak, by płynnie przejść od testów integracyjnych (Proof of Concept) do systematycznej weryfikacji kompetencji agenta LLM. Kluczowym wnioskiem z fazy przygotowawczej jest to, że o ile komunikacja po MCP jest niezawodna, o tyle poprawność "mechaniczna" zagrań zależy od dwóch czynników, które zostaną przebadane w głównej fazie: jakości dostarczonych instrukcji oraz kształtu API (dostępnych narzędzi).

== Pilot study
Rozegrany pilotaż, choć realizowany "na ślepo", udowodnił zdolność agenta do manipulacji elementami gry. Sukces w podstawowym wykładaniu kart na stół otwiera drogę do dalszych prac. 
Kluczowymi wnioskami na przyszłość są:
+ *Dostarczenie zasad:* Wymagane jest wymyślenie sposobu na efektywne dostarczenie dokładnych zasad gry. Podanie oryginalnego pliku PDF z instrukcją może nie być odpowiednim podejściem – zawiera on sporo obrazków oraz nietypowy układ tekstu, co stanowi szum informacyjny dla modelu.
+ *Zawężenie przestrzeni akcji:* Konieczne jest rozegranie realnej rozgrywki (przez badaczy) na platformie DragnCards w celu przeanalizowania rzeczywistych requestów sieciowych, jakie są generowane przez klienta. Taka inżynieria odwrotna pozwoli efektywnie zawęzić zbiór ruchów (narzędzi), które zostaną udostępnione agentowi, minimalizując ryzyko "zmyślania" akcji i zmniejszając obciążenie poznawcze modelu.
+ *Zróżnicowanie środowiska agentów:* Bazując na poprawnym fundamencie zbudowanym dla modeli chmurowych, w przyszłości spróbujemy przenieść nasze rozwiązanie i weryfikować kompetencje agenta na modelu hostowanym w pełni lokalnie.

= Literature (from SLR)
#box(width: 0pt, height: 0pt, clip: true)[
  @-_optimizing_2024
  @lore_strategic_2024
  @ma_adaptive_2024
  @horibe_evolvability_2025
  @hadfi_personality-aware_2025
  @poje_effect_2024
  @stepin_b3emo_2026
  @yoon_strategic_2025
  @de_curto_llm-driven_2025
  @wang_intelligent_2025
  @hintze_promoting_2026
  @macmillan-scott_irrationality_2025
  @fujii_predictive_2025
  @mouri_zadeh_khaki_evaluating_2026
  @lu_llms_2024
  @vidler_playing_2025
  @mao_alympics_2023
  @lore_strategic_2023
  @de_zarza_emergent_2023
]
#bibliography("SLR.bib", title: none)