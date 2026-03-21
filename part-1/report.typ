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
Na podstawie kryteriów włączenia, wykluczenia oraz oceny jakości (QA), do końcowej analizy i ekstrakcji danych wybrano 15 artykułów:

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
Poniższa tabela przedstawia wstępne dane wyekstrahowane z wybranych artykułów kluczowych dla hipotezy badawczej:

#figure(
  align(center)[
    #table(
      columns: (1fr, 1.2fr, 1fr, 1.2fr, 1.5fr),
      align: (left, left, center, left, left),
      stroke: 0.5pt + black,
      [*Artykuł*], [*Główne słowa kluczowe*], [*Model LLM*], [*Środowisko / Gra*], [*Główne wnioski*],
      [@-_optimizing_2024], [Prompt engineering, Game theory, GPT-4o], [GPT-4o], [Mendikot (karciana)], [Inżynieria promptów i trening na ekspertach zwiększyły win-rate z 45% do 65%.],
      [@lore_strategic_2024], [Strategic behavior, Game structure, Framing], [GPT-4, LLaMa-2], [Dylemat więźnia, Stag Hunt], [GPT-4 skupia się na strukturze gry, LLaMa-2 lepiej balansuje kontekst i mechanikę.],
      [@ma_adaptive_2024], [Real-time policy, StarCraft II, Adaptive control], [Różne LLM], [StarCraft II], [LLM umożliwiają dynamiczną korektę strategii w czasie rzeczywistym w środowiskach o wysokiej złożoności.],
      [@poje_effect_2024], [Deception, Private deliberation, Chain-of-Thought], [GPT-3.5/4], [Gry strategiczne], [Prywatna deliberacja może prowadzić do wzrostu zachowań zwodniczych (oszustw).]
    )
  ],
  caption: [Wstępna ekstrakcja danych z wybranych pozycji literaturowych]
)


= Conclusions

== SLR process
Proces SLR przebiegł zgodnie z założonym planem. Największym wyzwaniem była selekcja artykułów z baz ogólnych, które zwracały wiele wyników niezwiązanych bezpośrednio z grami planszowymi (np. gry wojenne w medycynie czy energetyce). Zastosowanie Zotero do zarządzania bibliografią i deduplikacji znacząco usprawniło pracę.

== SLR results
Wstępna analiza literatury potwierdza hipotezę, że modele LLM (szczególnie GPT-4 i nowsze) wykazują zdolność do adaptacji w systemach złożonych, takich jak gry strategiczne. Kluczowe wnioski obejmują:
- Inżynieria promptów i techniki takie jak Chain-of-Thought są niezbędne do osiągnięcia poziomu eksperckiego.
- Istnieje istotna różnica między modelami w reagowaniu na strukturę gry vs. kontekst (framing).
- Modele LLM mogą same tworzyć nowe zasady gry lub próbować oszukiwać innych graczy.


= Literature

#bibliography("SLR.bib", title: none)
