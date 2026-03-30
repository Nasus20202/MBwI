#set document(title: "Systematic Literature Review Report")
#set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm))
#set text(font: "New Computer Modern", size: 11pt, lang: "pl")
#set heading(numbering: "1.1.")
#set par(justify: true)

#show heading: set text(lang: "en")

#context [
  #set text(font: "Inter")
  
  #align(center)[
    #v(4cm)
    #text(size: 22pt, weight: "bold", lang: "en")[Systematic Literature Review Report]
    
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
        grid.cell(colspan: 2)[Mikołaj Klikowicz 193264],
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

= Systematic Literature Review plan

== Goals and questions
- Zidentyfikowanie i analiza istniejących badań dotyczących wykorzystania Large Language Models jako agentów decyzyjnych w systemach złożonych, szczególnie w środowiskach gier.
- Identyfikacja technik oceny skuteczności agentów LLM w zadaniach strategicznych.
- Zapoznanie się z istniejącymi sposobami przekazywania do agenta AI informacji o systemie złożonym.
- Zidentyfikowanie ograniczeń, wyzwań oraz luk badawczych w wykorzystaniu LLM jako uniwersalnych agentów w systemach złożonych.
// - Analiza metod adaptacji modeli LLM do dynamicznych i wieloagentowych środowisk.
// - Określenie, w jaki sposób modele LLM są integrowane z mechanizmami podejmowania decyzji (np. planowanie, reasoning, narzędzia agentowe).

== Keywords
- *Związane z LLM:* _large language model_, _large language models_, _LLM_, _foundation models_, _language model agents_, _transformer models_
- *Agenci i podejmowanie decyzji:* _LLM agents_, _autonomous agents_, _AI agents_, _agent-based systems_, _decision making_, _planning_, _reasoning_, _tool-augmented LLM_, _LLM-based agents_, _artificial intelligence_
- *Adaptacja i systemy złożone:* _complex systems_, _adaptive systems_, _multi-agent systems_, _dynamic environments_, _environment interaction_, _strategic decision making_
- *Gry strategiczne lub planszowe:* _board games_, _game environments_, _strategic games_, _game-playing agents_, _AI in games_, _game AI_, _game theory_

== Search strings
#figure(
  align(center)[
    #let search-box(content) = rect(
      width: 95%,
      stroke: 0.5pt + black,
      inset: 6pt,
      align(center, text(size: 10pt, content))
    )
    #search-box[
      ```("large language model" OR "large language models" OR "LLM" OR "foundation models" OR "language model agents" OR "transformer models")```
    ]
    *AND*
    #search-box[
      ```("LLM agents" OR "autonomous agents" OR "AI agents" OR "agent-based systems" OR "decision making" OR "planning" OR "reasoning" OR "tool-augmented LLM" OR "LLM-based agents" OR "artificial intelligence")```
    ]
    *AND*
    #search-box[
      ```("complex systems" OR "adaptive systems" OR "multi-agent systems" OR "dynamic environments" OR "environment interaction" OR "strategic decision making")```
    ]
    *AND*
    #search-box[
      ```("board games" OR "game environments" OR "strategic games" OR "game-playing agents" OR "AI in games" OR "game AI" OR "game theory")```
    ]
  ],
  caption: [Logiczna struktura zapytania wyszukiwania (Search String)]
)

```sql
("large language model" OR "large language models" OR "LLM" OR "foundation models" OR "language model agents" OR "transformer models")
AND
("LLM agents" OR "autonomous agents" OR "AI agents" OR "agent-based systems" OR "decision making" OR "planning" OR "reasoning" OR "tool-augmented LLM" OR "LLM-based agents" OR "artificial intelligence")
AND
("complex systems" OR "adaptive systems" OR "multi-agent systems" OR "dynamic environments" OR "environment interaction" OR "strategic decision making")
AND
("board games" OR "game environments" OR "strategic games" OR "game-playing agents" OR "AI in games" OR "game AI" OR "game theory")
```

== Literature databases
- #link("https://katalogbpg.pg.edu.pl/discovery/search")[*Katalog BPG*] – główna wyszukiwarka zasobów Biblioteki Politechniki Gdańskiej, zapewniająca dostęp do lokalnych książek oraz subskrybowanych baz artykułów naukowych.
- #link("https://ieeexplore.ieee.org/search/advanced")[*IEEEXplore*] – wiodąca baza cyfrowa zawierająca publikacje z zakresu informatyki i nowych technologii, kluczowa w poszukiwaniu najnowszych badań nad sztuczną inteligencją i modelami językowymi.
- #link("https://link.springer.com/advanced-search")[*SpringerLink*] – obszerna platforma wydawnicza oferująca dostęp do recenzowanych czasopism i materiałów konferencyjnych, przydatna do poszerzonego przeglądu literatury z dziedziny systemów złożonych.

== Inclusion criteria
*Lata publikacji*: od 2024 \
*Języki*: angielski albo polski

== Exclusion criteria
Publikacje, które nie są dostępne w ramach otwartego dostępu (_Open Access_), podlegają odrzuceniu na początkowym etapie selekcji.

== Quality criteria

#table(
  columns: (auto, 1fr),
  align: horizon,
  stroke: none,
  table.header(
    [*$ Q A _S $*], table.vline(), [*Quality Assessment Criteria (QA)*]
  ),
  table.hline(),
  [$ Q A _1 $], [Is the paper based on empirical research regarding LLM agents (rather than purely theoretical discussion)?],
  [$ Q A _2 $], [Is there a clear statement of the aims regarding the LLM's adaptation to complex systems or games?],
  [$ Q A _3 $], [Is there an adequate description of the game environment or complex system used for testing?],
  [$ Q A _4 $], [Was the agent architecture and prompting strategy appropriate to address the aims of the research?],
  [$ Q A _5 $], [Was the evaluation method (e.g., win rate, rule adherence) appropriate for assessing the agent's performance?],
  [$ Q A _6 $], [Was there a clear baseline (e.g., traditional AI, heuristic bot, human player) with which to compare the LLM?],
  [$ Q A _7 $], [Was the data regarding the LLM's decision-making and reasoning process collected in a rigorous way?],
  [$ Q A _8 $], [Was the analysis of the agent's behavior and performance sufficiently rigorous?],
  [$ Q A _9 $], [Have the limitations of the LLM (e.g., context window limits, hallucinations, API costs) been considered to an adequate degree?],
  [$ Q A _10 $], [Is there a clear statement of findings regarding the LLM's ability to play or adapt based on textual instructions?],
  [$ Q A _11 $], [Is the study of value for developing autonomous LLM agents for strategic board games?]
)

#align(center)[
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    align: center + horizon,
    stroke: 0.5pt + luma(180),
    table.header(table.cell(text(weight: "bold", "Response Scale"), colspan: 5)),
    [*Excellent* \ 4], [*Very Good* \ 3], [*Good* \ 2], [*Fair* \ 1], [*Poor* \ 0]
  )
]


== Data extraction
Dla każdego artykułu zweryfikowano następujące aspekty: jaki był jego cel, co zostało w nim osiągnięte i jakie problemy zostały napotkane w trakcie badań.

Na podstawie pozyskanych danych utworzony został arkusz z informacjami:
 - Nazwa artykułu
 - Słowa kluczowe
 - Typ wykorzystanego agenta
 - Rodzaj badanego systemu
 - Główne wnioski

== SLR process
+ Planowanie
 - Wszyscy członkowie wspólnie ustalili pytania oraz cele ekstrakcji.
+ Wybór baz artykułów
 - Wybrane zostały _Katalog BPG_, _IEEEXplore_ oraz _SpringerLink_
+ Doprecyzowanie zapytań wyszukiwawczych
+ Walidacja i dostosowanie kryteriów włączenia
+ Surowe wyniki wyszukiwania
 - Z wybranych baz pobrane zostały wyniki wyszukiwania w ilościach podanych w @results_table[sekcji]
+ Usuwanie duplikatów
 - Zastosowany został program `Zotero`
+ Selekcja na podstawie tytułu i streszczenia artykułu
 - Zastosowany został program `Zotero`
+ Selekcja na podstawie pełnego tekstu
 - Artykuły zostały rozdzielone pomiędzy członków zespołu do szczegółowej lektury. Każda pozycja została zweryfikowana pod kątem merytorycznej zgodności z pytaniami badawczymi oraz spełnienia kryteriów jakości (QA). Każdy wybrany artykuł był dodatkowo weryfikowany przez innego członka zespołu.
+ Snowballing
 - Przeprowadzono metodę *backward snowballing*, polegającą na analizie bibliografii wybranych artykułów w celu zidentyfikowania bazowych prac pominiętych w automatycznym wyszukiwaniu z powodu przyjętych kryteriów.
+ Ekstrakcja danych badawczych i synteza
 - Z każdego zaakceptowanego artykułu wydobyto kluczowe informacje: cele badania, wykorzystane modele LLM, rodzaje gier/systemów oraz główne wnioski dotyczące skuteczności agentów. Dane te zostały ujednolicone i zestawione w tabelach, co pozwoliło na przeprowadzenie syntezy jakościowej i wyciągnięcie wniosków dotyczących aktualnego stanu wiedzy.
+ Raportowanie

= Systematic Literature Review results

== Results in numbers <results_table>
#figure(
  align(center)[
    #table(
      columns: (1.5fr, 1fr, 1.2fr, 1.2fr, 1.2fr),
      align: (left, center, center, center, center),
      stroke: 0.5pt + black,
      
      [*Baza danych*], 
      [*Znalezione pozycje*], 
      [*Po usunięciu duplikatów*], 
      [*Po selekcji (Screening)*], 
      [*Po przeczytaniu (Full-text)*],
      
      [IEEExplore], [3], [3], [3], [2],
      [Katalog BPG], [47], [45 (2)], [12], [5],
      [SpringerLink], [99], [99], [20], [8],
      
      [*Suma*], [*149*], [*147 (2)*], [*35*], [*15*]
    )
  ],
  caption: [Zestawienie liczbowe artykułów na poszczególnych etapach procesu SLR z podziałem na bazy danych]
)

== Articles selected for data extraction
Na podstawie kryteriów włączenia, wykluczenia oraz oceny jakości (QA), do pełnej lektury i analizy wybrano 15 artykułów:

- @-_optimizing_2024 -- Optymalizacja strategii LLM w grze Mendikot przy użyciu inżynierii promptów.
- @lore_strategic_2024 -- Badanie zachowań strategicznych LLM i roli struktury gry vs. kontekstu.
- @ma_adaptive_2024 -- Adaptacyjne sterowanie i korekta polityki w czasie rzeczywistym w StarCraft II.
- @horibe_evolvability_2025 -- Ewolucyjność w tworzeniu reguł w grach między agentami LLM.
- @hadfi_personality-aware_2025 -- Wielozadaniowe modele LLM uwzględniające osobowość w interakcjach strategicznych.
- @poje_effect_2024 -- Wpływ prywatnej deliberacji na skłonność do oszustw w rozgrywkach LLM.
- @stepin_b3emo_2026 -- Kwantyfikacja afektu jako obosiecznego miecza w strategicznych interakcjach LLM.
- @yoon_strategic_2025 -- Strategiczne uczenie się pod ograniczeniami lingwistycznymi i kontekstowymi.
- @de_curto_llm-driven_2025 -- Wpływ społeczny sterowany przez LLM na zachowania kooperacyjne.
- @wang_intelligent_2025 -- Przegląd inteligentnych gier i głębokiego wzmocnionego uczenia wieloagentowego.
- @hintze_promoting_2026 -- Promowanie kooperacji w grach o dobra publiczne przy użyciu agentów AI.
- @macmillan-scott_irrationality_2025 -- (Ir)racjonalność w AI: stan wiedzy i otwarte pytania badawcze.
- @fujii_predictive_2025 -- Predykcyjna analiza i ewaluacja rozgrywki z wykorzystaniem uczenia maszynowego.
- @mouri_zadeh_khaki_evaluating_2026 -- Ewaluacja sprawiedliwości agentów negocjacyjnych LLM w grach ekonomicznych.
- @lu_llms_2024 -- LLM i generatywne modele agentowe w badaniach nad systemami złożonymi.

== Snowballed articles
Zgodnie z metodologią przedstawioną na wykładzie, przeprowadzono przegląd list referencyjnych w artykułach zaakceptowanych do końcowej analizy. Celem było zidentyfikowanie najczęściej cytowanych pozycji, które nie zostały odnalezione w pierwotnym procesie wyszukiwania (np. ze względu na bycie starszymi niż założony próg lat lub specyficzne słowa kluczowe).

W wyniku tej analizy zidentyfikowano 3 kluczowe publikacje z 2023 roku, które stanowią fundament dla nowszych badań nad agentami LLM:

- @mao_alympics_2023 -- Praca wprowadzająca platformę ALYMPICS, często cytowana jako jeden z pierwszych testów strategicznych dla agentów LLM.
- @lore_strategic_2023 -- Wcześniejsza wersja badań nad wpływem struktury gry na zachowanie modeli, stanowiąca punkt odniesienia dla późniejszych eksperymentów.
- @de_zarza_emergent_2023 -- Artykuł teoretyczny dotyczący kooperacji emergentnej, na który powołują się autorzy prac z lat 2024–2025 analizujący dynamikę wieloagentową.

Włączenie tych pozycji pozwoliło na uzupełnienie tła teoretycznego o prace pionierskie z początkowego okresu rozwoju agentów opartych na dużych modelach językowych.

== Article statistics
Większość przeanalizowanych artykułów pochodzi z lat 2024–2025, co odzwierciedla dynamiczny rozwój dziedziny agentów LLM w ostatnim czasie. Rozkład roczny wszystkich znalezionych unikalnych pozycji (147) przedstawiono na poniższym wykresie:

#figure(
  image("publications_by_year.png", width: 80%),
  caption: [Rozkład publikacji w czasie dla zidentyfikowanych artykułów (stan na marzec 2026)]
)

Głównym tematem publikacji jest kooperacja w systemach wieloagentowych (MAS), ewaluacja zdolności strategicznych oraz inżynieria promptów dla złożonych procesów decyzyjnych.

== Initial extracted data
Poniższa tabela przedstawia dane wyekstrahowane z wybranych artykułów. Dla każdego artykułu wiersz z głównymi wnioskami obejmuje pełną szerokość tabeli.

#set text(size: 8.5pt)
#let wniosek(body) = table.cell(colspan: 4, fill: luma(245), body)
#table(
      columns: (1.6fr, 1.8fr, 1.3fr, 1.5fr),
      align: (left, left, left, left),
      stroke: 0.5pt + black,
      table.header(
        [*Artykuł*], [*Główne słowa kluczowe*], [*Model LLM*], [*Środowisko / Gra*],
      ),

      [@-_optimizing_2024 — _Optimizing LLM Strategies for Playing Mendikot using Prompt Engineering_],
      [Prompt engineering, game theory],
      [GPT-4o],
      [Mendikot (gra karciana)],
      wniosek[Przedmiotem artykułu była optymalizacja strategii modelu GPT-4o w tradycyjnej indyjskiej grze karcianej Mendikot przy użyciu zaawansowanej inżynierii promptów. Badanie wykazało, że zastosowanie technik takich jak uczenie na wzorcach eksperckich i dynamiczna modyfikacja promptów pozwoliło podnieść odsetek wygranych z 45% do 65%, co stanowi istotny wzrost w środowisku o niepełnej informacji. Wynik ten sugeruje, że odpowiednio zaprojektowane prompty mogą skutecznie zastępować tradycyjne metody treningu w grach karcianych, co jest bezpośrednio obiecujące dla naszego projektu dotyczącego adaptacji agenta LLM do gier planszowych wyłącznie na podstawie instrukcji tekstowej.],

      [@lore_strategic_2024 — _Strategic Behavior of Large Language Models and the Role of Game Structure versus Contextual Framing_],
      [Strategic behavior, game structure, framing],
      [GPT-4, LLaMA-2-70B],
      [Dylemat więźnia, Stag Hunt],
      wniosek[Przedmiotem artykułu było zbadanie, w jakim stopniu zachowania strategiczne modeli LLM zależą od struktury matematycznej gry w porównaniu z jej opisem słownym (tzw. framing). Badanie wykazało istotne różnice między modelami — GPT-4 reagował silniej na zmianę struktury wypłat, natomiast LLaMA-2-70B był bardziej podatny na kontekstowe sformułowanie scenariusza, co wskazuje na fundamentalną rozbieżność w sposobie przetwarzania informacji strategicznej. Odkrycie to ma kluczowe znaczenie dla projektowania agentów do gier planszowych, ponieważ sugeruje, że sam sposób przekazania reguł (np. styl instrukcji) może radykalnie wpłynąć na jakość podejmowanych decyzji.],

      [@ma_adaptive_2024 — _Adaptive Command: Real-Time Policy Adjustment via Language Models in StarCraft II_],
      [Real-time policy, adaptive control],
      [GPT-4, Claude 2, Gemini Pro],
      [StarCraft II],
      wniosek[Przedmiotem artykułu była analiza poziomu gry różnych agentów LLM w strategię czasu rzeczywistego StarCraft II. Badanie wykazało, że modele umożliwiają korektę strategii w czasie rzeczywistym w środowiskach o wysokiej złożoności, dynamicznie dostosowując politykę działania na podstawie zmieniającego się stanu gry bez konieczności ponownego trenowania. Daje to nadzieję na dobre radzenie sobie modeli także w badanych przez nas grach planszowych, gdzie agent musi adaptować się do ruchów przeciwnika i zmieniającego się stanu rozgrywki w oparciu o sam opis reguł.],

      [@yoon_strategic_2025 — _Strategic Learning Under Linguistic and Contextual Constraints: A Theoretical Framework for LLM-Based Multi-Agent Coordination_],
      [Context window, Nash equilibrium, bounded memory, phase transitions],
      [GPT-4o, GPT-4-turbo, LLaMA-3-70B, Mistral-7B],
      [Linguistic Uncertainty Game (LUG)],
      wniosek[Przedmiotem artykułu było opracowanie formalnego modelu matematycznego (Context-Constrained Nash Equilibrium) opisującego ograniczenia okna kontekstowego LLM w uczeniu się strategicznym. Badanie wykazało istnienie przejść fazowych przy ~4096 tokenach kontekstu — poniżej tego progu skuteczność agenta dramatycznie spada — oraz zidentyfikowało trzy reżimy operacyjne: ograniczony pamięcią, ograniczony kontekstem i nieograniczony, osiągając 18,7% poprawę wydajności. Wyniki te mają bezpośrednie przełożenie na nasz projekt, ponieważ obszerne instrukcje gier planszowych mogą przekraczać próg efektywnego przetwarzania informacji strategicznej.],

      [@lu_llms_2024 — _LLMs and Generative Agent-Based Models for Complex Systems Research_],
      [Complex systems, game theory, social dynamics, agent-based models],
      [GPT-3.5-turbo, GPT-4, LLaMA-2],
      [Dylemat więźnia, sieci złożone, dynamika społeczna],
      wniosek[Przedmiotem artykułu był obszerny przegląd zastosowań LLM i generatywnych modeli agentowych (GABM) w badaniach nad systemami złożonymi, obejmujący sieci złożone, teorię gier, dynamikę społeczną i modelowanie epidemii. Kluczowe odkrycie dotyczy kooperatywności — LLM są bardziej skłonne do współpracy niż ludzie w Dylemacie Więźnia (65,4% vs 37%), lecz GPT-4 w wariancie iterowanym stosował strategię _unforgiving tit-for-tat_ — po jednej zdradzie przeciwnika trwale przechodził na rywalizację. Praca kompleksowo opisuje, w jaki sposób LLM reprodukują ludzkie wzorce zachowań — sprawiedliwość, kooperację, przestrzeganie norm — ale z istotnymi ograniczeniami (wrażliwość na prompt, halucynacje), które muszą być uwzględnione przy projektowaniu agenta do gier planszowych.],

      [@vidler_playing_2025 — _Playing Games with Large Language Models: Randomness and Strategy_],
      [Game theory, stochasticity, loss aversion],
      [GPT-4o-mini],
      [Kamień-Papier-Nożyce, Dylemat więźnia],
      wniosek[Przedmiotem artykułu było przetestowanie zdolności modelu GPT-4o-mini do gry w dwie klasyczne gry: Kamień-Papier-Nożyce (RPS) i Dylemat Więźnia (PD). Badanie wykazało, że LLM „nie są zbyt stochastyczne" — model wykazywał silne uprzedzenia w generowaniu rzekomo losowych wyborów, rozwijał strategie unikania przegranej (loss aversion), a w RPS rozgrywki szybko zbiegały do patowej powtarzalności. Wyniki wskazują na fundamentalne ograniczenie LLM w grach wymagających losowości — agent grający w gry planszowe z elementem losowym może potrzebować zewnętrznego generatora losowości zamiast polegać na „losowych" wyborach modelu.],
    )
#set text(size: 11pt)
_Tabela 2: Ekstrakcja danych z wybranych pozycji literaturowych_


= Conclusions

== SLR process
Proces SLR przebiegł zgodnie z założonym planem. Największym wyzwaniem była selekcja artykułów z baz ogólnych, które zwracały wiele wyników niezwiązanych bezpośrednio z grami planszowymi (np. gry wojenne w medycynie czy energetyce). Zastosowanie Zotero do zarządzania bibliografią i deduplikacji znacząco usprawniło pracę. W sumie przeanalizowano 147 unikalnych pozycji, z których do końcowej ekstrakcji danych wybrano 6 artykułów najbardziej powiązanych z hipotezą badawczą.

== SLR results
Zestawienie danych z sześciu przeanalizowanych artykułów ujawnia kilka przekrojowych prawidłowości dotyczących agentów LLM w środowiskach gier.

=== Prompt jest dominującym czynnikiem skuteczności
Trzy niezależne badania wskazują spójnie, że sposób konstrukcji promptu ma większy wpływ na jakość gry agenta niż sam wybór modelu. W grze Mendikot @-_optimizing_2024 zastosowanie inżynierii promptów podniosło win-rate z 45% do 65% — przy tym samym modelu GPT-4o. Jednocześnie @lore_strategic_2024 wykazali, że zmiana sformułowania reguł (framing) przy niezmienionej strukturze wypłat prowadzi do diametralnie różnych decyzji strategicznych. Te obserwacje łączy trzeci wynik — @yoon_strategic_2025 zidentyfikował próg ~4096 tokenów kontekstu, poniżej którego skuteczność agenta gwałtownie spada. Razem oznacza to, że w naszym projekcie nie wystarczy wybrać „najlepszy model" — kluczowe będzie, _jak_ i _ile_ informacji o grze planszowej przekażemy agentowi w prompcie.

=== LLM wykazują systematyczne uprzedzenia behawioralne
Dane z tabeli ujawniają, że agenty LLM nie zachowują się jak racjonalni gracze — mają powtarzalne, przewidywalne odchylenia od optymalnej strategii. @vidler_playing_2025 wykazał silną awersję do straty (loss aversion) i niezdolność do generowania losowych wyborów w RPS. @lu_llms_2024 z kolei udokumentował nadmierną kooperatywność LLM w Dylemacie Więźnia (65,4% vs 37% u ludzi), ale jednocześnie GPT-4 w wariancie iterowanym (wielorundowym) stosował strategię _unforgiving tit-for-tat_ — po jednej zdradzie przeciwnika trwale przechodził na strategię rywalizacyjną, nie wracając już do kooperacji. Zestawienie tych wyników pokazuje, że uprzedzenia LLM są systematyczne, ale różnią się w zależności od kontekstu gry — agent w grze planszowej będzie więc wymagał kalibracji pod kątem konkretnej mechaniki (np. czy gra wymaga losowości, czy kooperacji).

=== Paradoks adaptacji: złożoność pomaga, prostota szkodzi
Zaskakującym wnioskiem z porównania danych jest to, że LLM radzą sobie _lepiej_ w złożonych środowiskach niż w prostych. W StarCraft II @ma_adaptive_2024 agenty skutecznie adaptowały strategię w czasie rzeczywistym, dynamicznie reagując na zmiany stanu gry. Tymczasem w elementarnym Kamień-Papier-Nożyce @vidler_playing_2025 model zbiegał do patowej powtarzalności i nie potrafił przełamać schematów. Wyjaśnieniem może być fakt, że złożone gry dostarczają bogatszego kontekstu tekstowego, na którym LLM operuje naturalnie, natomiast gry wymagające czystej losowości lub prostej heurystyki obnażają fundamentalne ograniczenie modelu — brak prawdziwej stochastyczności. Dla naszego projektu oznacza to, że gry planszowe o bogatszej mechanice (wiele reguł, interakcje między komponentami) mogą paradoksalnie być łatwiejsze dla agenta niż gry o prostych, ale losowych rozstrzygnięciach.

=== Wybór modelu nie jest obojętny
Choć prompt dominuje, dane z tabeli pokazują też, że modele różnią się między sobą w sposób jakościowy, a nie tylko ilościowy. @lore_strategic_2024 wykazał, że GPT-4 i LLaMA-2-70B reagują na _inne_ aspekty gry — GPT-4 na strukturę wypłat, LLaMA-2 na narracyjny kontekst. @lu_llms_2024 z kolei pokazał, że GPT-4 w grach iterowanych trwale karze zdradę (jak opisano powyżej), podczas gdy GPT-3.5 jest skłonny do „przebaczenia" — mimo że oba modele są kooperatywne w wariancie jednorazowym. Oznacza to, że w naszym projekcie wybór modelu powinien być świadomą decyzją powiązaną z typem gry planszowej — model wrażliwy na narrację może lepiej radzić sobie z grami o tematycznych instrukcjach, a model wrażliwy na strukturę — z grami o ścisłych regułach.

=== Implikacje dla projektu
Z powyższej syntezy wynikają cztery konkretne rekomendacje:
+ *Projekt promptu ważniejszy niż wybór modelu* — nakład pracy powinien iść przede wszystkim w iteracyjne testowanie sposobu przekazania reguł gry (styl, kolejność, szczegółowość), a nie w porównywanie kolejnych modeli @-_optimizing_2024 @lore_strategic_2024.
+ *Zarządzanie budżetem kontekstu* — instrukcje gier planszowych powinny być kompresowane lub segmentowane tak, aby zmieścić się powyżej progu ~4096 tokenów efektywnego przetwarzania strategicznego @yoon_strategic_2025.
+ *Zewnętrzna losowość i kalibracja* — agent powinien korzystać z zewnętrznego generatora losowości w grach z elementem losowym, a jego tendencje behawioralne (np. nadmierna kooperacja, loss aversion) powinny być testowane i korygowane na etapie ewaluacji @vidler_playing_2025 @lu_llms_2024.
+ *Zaczynać od gier o bogatej mechanice* — wbrew intuicji, złożone gry planszowe z rozbudowanymi regułami mogą dawać agentowi LLM więcej kontekstu do pracy niż gry proste, co jest spójne z obserwowanym paradoksem adaptacji @ma_adaptive_2024 @vidler_playing_2025.


= Literature

#bibliography("SLR.bib", title: none)
