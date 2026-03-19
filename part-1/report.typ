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
 - Ilość referencji do artykułu

== SLR process
+ Planowanie
 - Wszyscy członkowie wspólnie ustalili pytania oraz cele ekstrakcji.
+ Wybór baz artykułów
 - Wybrane zostały _Katalog BPG_, _IEEEXplore_ oraz _SpringerLink_
+ Doprecyzowanie zapytań wyszukiwawczych
+ Walidacja i dostosowanie kryteriów włączenia
+ Surowe wyniki wyszukiwania
 - Z wybranych baz pobrane zostały wyniki wyszukiwania w następujących ilościach: // TODO
+ Selekcja na podstawie tytułu i streszczenia artykułu
 - Zastosowany został program `Zotero`
+ Usuwanie duplikatów
 - Zastosowany został program `Zotero`
+ Selekcja na podstawie pełnego tekstu
 - Artykuły zostały równo rozdzielone do selekcji na każdego członka zespołu, każdy wybrany artykuł został poddany dodatkowej weryfikacji przez innego członka.
+ Snowballing
+ Ekstrakcja danych badawczych i synteza
+ Raportowanie

= Systematic Literature Review results

== Results in numbers
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
      
      [IEEExplore], [3], [3], [...], [...],
      [Katalog BPG], [47], [45 (2)], [...], [...],
      [SpringerLink], [99], [99], [...], [...],
      
      [*Suma*], [*149*], [*147 (2)*], [*...*], [*...*]
    )
  ],
  caption: [Zestawienie liczbowe artykułów na poszczególnych etapach procesu SLR z podziałem na bazy danych]
)

== Articles selected for data extraction
_List of articles from search results qualifying for data extraction according to inclusion, exclusion and quality criteria._

== Snowballed articles
_Additional articles found with the snowballing technique._

== Article statistics
_Charts, histograms of publication year, journal title, topic etc._

== Initial extracted data
_Initial set of research data extracted from SLR literature._


= Conclusions

== SLR process
_Conclusions and lessons learnt about the SLR process executed._

== SLR results
_Conclusions and lessons learnt about the results achieved with SLR._


= Literature

#bibliography("SLR.bib")
