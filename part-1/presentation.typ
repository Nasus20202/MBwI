#import "@preview/touying:0.6.3": *
#import themes.metropolis: *

#set text(font: "Inter", lang: "pl")

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Raport z systematycznego przeglądu literatury],
    subtitle: [Modele LLM jako uniwersalne agenty adaptujące się do systemów złożonych na przykładzie gier planszowych],
    author: [Krzysztof Nasuta, Bartłomiej Krawisz \ Filip Dawidowski, Stanisław Nieradko],
    date: [2 kwietnia 2026],
    institution: [Opiekun: dr inż. Krzysztof Manuszewski],
  ),
)

#title-slide()

== Plan prezentacji
#components.adaptive-columns(outline(title: none, indent: 1em))

= Projekt badawczy

== Cele i krótki opis
*Cel główny:*
Opracowanie agenta wykorzystującego duże modele językowe (LLM), zdolnego do prowadzenia rozgrywki w gry planszowe wyłącznie na podstawie analizy ich instrukcji.

*Opis projektu:*
- Symulacja zachowania żywego gracza w złożonych, dynamicznych systemach decyzyjnych.
- Skuteczna interakcja agent–środowisko (reprezentacja stanu gry, rejestrowanie ruchów przeciwników).
- Podejście iteracyjne (początkowo gry o prostszej mechanice).

*Hipoteza badawcza:*
Weryfikacja możliwości skutecznego adaptowania się agenta LLM do reguł gry oraz podejmowania trafnych decyzji na podstawie znajomości samej instrukcji tekstowej.

= Plan systematycznego przeglądu literatury (SLR)

== Cele i pytania badawcze
- Zidentyfikowanie i analiza istniejących badań dotyczących wykorzystania LLM jako agentów decyzyjnych w systemach złożonych.
- Identyfikacja technik oceny skuteczności agentów LLM w zadaniach strategicznych.
- Zapoznanie się ze sposobami przekazywania informacji o systemie złożonym do agenta AI.
- Zidentyfikowanie ograniczeń, wyzwań oraz luk badawczych.

== Słowa kluczowe

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *Związane z LLM:*
    - _large language model(s)_
    - _LLM_
    - _foundation models_
    - _language model agents_
    - _transformer models_
  ],
  [
    *Agenci i decyzje:*
    - _LLM agents_
    - _autonomous / AI agents_
    - _agent-based systems_
    - _decision making / planning_
    - _reasoning / tool-augmented LLM_
  ],
)

#v(0.5cm)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    *Adaptacja i systemy złożone:*
    - _complex / adaptive systems_
    - _multi-agent systems_
    - _dynamic environments_
    - _strategic decision making_
  ],
  [
    *Gry strategiczne:*
    - _board / strategic games_
    - _game environments_
    - _game-playing agents_
    - _AI in games / game AI_
    - _game theory_
  ],
)

== Zapytania wyszukiwarkowe (Search Strings)
#set text(size: 14pt)
```sql
("large language model" OR "large language models" OR "LLM" OR "foundation models" OR "language model agents" OR "transformer models")
AND
("LLM agents" OR "autonomous agents" OR "AI agents" OR "agent-based systems" OR "decision making" OR "planning" OR "reasoning" OR "tool-augmented LLM" OR "LLM-based agents" OR "artificial intelligence")
AND
("complex systems" OR "adaptive systems" OR "multi-agent systems" OR "dynamic environments" OR "environment interaction" OR "strategic decision making")
AND
("board games" OR "game environments" OR "strategic games" OR "game-playing agents" OR "AI in games" OR "game AI" OR "game theory")
```

== Bazy danych i kryteria
*Bazy danych:*
- *Katalog BPG* – zasoby Biblioteki Politechniki Gdańskiej.
- *IEEEXplore* – publikacje z zakresu informatyki i nowych technologii.
- *SpringerLink* – czasopisma i materiały konferencyjne.

*Kryteria selekcji:*
- *Kryteria włączenia:* Publikacje od 2024 roku, język angielski lub polski.
- *Kryteria wykluczenia:* Publikacje niedostępne w ramach Otwartego Dostępu (Open Access).

== Kryteria oceny jakości (QA) – Część I
#set text(size: 18pt)
- *QA1:* Czy praca opiera się na badaniach empirycznych (nie tylko teoretycznych)?
- *QA2:* Czy cele dotyczące adaptacji LLM do systemów są jasne określone?
- *QA3:* Czy opis środowiska gry lub systemu złożonego jest adekwatny?
- *QA4:* Czy architektura agenta i strategia promptingu były odpowiednie do celów?
- *QA5:* Czy metoda ewaluacji (np. win rate) była właściwa do oceny wydajności?
- *QA6:* Czy określono jasną bazę porównawczą (np. tradycyjne AI, człowiek)?

== Kryteria oceny jakości (QA) – Część II
#set text(size: 18pt)
- *QA7:* Czy dane dotyczące wnioskowania LLM były zbierane w rygorystyczny sposób?
- *QA8:* Czy analiza zachowania i wydajności agenta była wystarczająco wnikliwa?
- *QA9:* Czy uwzględniono ograniczenia modelu (hallucynacje, okno kontekstowe, koszty)?
- *QA10:* Czy sformułowano jasne wnioski dotyczące zdolności adaptacji na podstawie tekstu?
- *QA11:* Czy badanie ma wartość dla rozwoju agentów w strategicznych grach planszowych?

== Proces SLR (Etap I)
1. *Planowanie:* Wspólne ustalenie pytań oraz celów ekstrakcji.
2. *Wybór baz artykułów:* Katalog BPG, IEEEXplore, SpringerLink.
3. *Doprecyzowanie zapytań:* Finalizacja struktur logicznych Search Strings.
4. *Walidacja kryteriów:* Dostosowanie kryteriów włączenia i wykluczenia.
5. *Pozyskanie wyników:* Pobranie surowych danych z wybranych baz.
6. *Usuwanie duplikatów:* Wykorzystanie programu Zotero.

== Proces SLR (Etap II)
7. *Selekcja (Screening):* Analiza tytułów i streszczeń w Zotero.
8. *Selekcja pełnotekstowa:* Szczegółowa lektura i weryfikacja przez członków zespołu.
9. *Snowballing:* Metoda *backward snowballing* (analiza bibliografii).
10. *Ekstrakcja i synteza:* Zestawienie celów, modeli i wniosków w arkuszu danych.
11. *Raportowanie:* Przygotowanie końcowego zestawienia wyników.

= Wyniki przeglądu literatury (SLR)

== Wyniki liczbowe
#align(center)[
  #table(
    columns: (1.5fr, 1fr, 1.2fr, 1.2fr, 1.2fr),
    align: (left, center, center, center, center),
    stroke: 0.5pt + gray,
    [*Baza danych*], [*Znalezione*], [*Po deduplikacji*], [*Screening*], [*Full-text*],
    [IEEExplore], [3], [3], [3], [2],
    [Katalog BPG], [47], [45], [12], [5],
    [SpringerLink], [99], [99], [20], [8],
    [*Suma*], [*149*], [*147*], [*35*], [*15*],
  )
  #image("publications_by_year.png", width: 50%)
]

== Wybrane artykuły do analizy
#set text(size: 16pt)
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
- @vidler_playing_2025 -- Losowość i strategia w grach LLM: awersja do straty i uprzedzenia stochastyczne.
#set text(size: 20pt)

== Snowballing i statystyki
*Kluczowe publikacje z 2023 r. (backward snowballing):*
- @mao_alympics_2023 -- Platforma ALYMPICS — jeden z pierwszych testów strategicznych dla agentów LLM.
- @lore_strategic_2023 -- Wcześniejsza wersja badań nad wpływem struktury gry na zachowanie modeli.
- @de_zarza_emergent_2023 -- Kooperacja emergentna w MAS — fundament dla nowszych badań dynamiki wieloagentowej.

*Statystyka publikacji:*
- Większość analizowanych prac pochodzi z lat 2024–2025.
- Główne tematy: kooperacja w MAS, ewaluacja zdolności strategicznych, inżynieria promptów dla złożonych procesów decyzyjnych.

_Włączenie tych pozycji uzupełniło tło teoretyczne o prace pionierskie z początkowego okresu rozwoju agentów opartych na LLM._

== Wstępna ekstrakcja danych (1/2)
#set text(size: 13pt)
#let wniosek(body) = table.cell(colspan: 4, fill: luma(245), body)
#table(
  columns: (1.6fr, 1.8fr, 1.3fr, 1.5fr),
  align: (left, left, left, left),
  stroke: 0.5pt + gray,
  table.header([*Artykuł*], [*Słowa kluczowe*], [*Model*], [*Środowisko*]),

  [@-_optimizing_2024 — _Mendikot_],
  [Prompt engineering, game theory],
  [GPT-4o],
  [Mendikot (gra karciana)],
  wniosek[Inżynieria promptów (uczenie na wzorcach eksperckich, dynamiczna modyfikacja) podniosła win-rate z *45% do 65%* w środowisku o niepełnej informacji.],

  [@lore_strategic_2024 — _Strategic Behavior_],
  [Strategic behavior, game structure, framing],
  [GPT-4, LLaMA-2-70B],
  [Dylemat więźnia, Stag Hunt],
  wniosek[GPT-4 reaguje silniej na zmianę struktury wypłat; LLaMA-2-70B — na narracyjny kontekst. Sposób przekazania reguł radykalnie wpływa na jakość decyzji.],

  [@ma_adaptive_2024 — _StarCraft II_],
  [Real-time policy, adaptive control],
  [GPT-4, Claude 2, Gemini Pro],
  [StarCraft II],
  wniosek[Możliwa dynamiczna korekta strategii w czasie rzeczywistym bez ponownego trenowania. LLM adaptują się do zmian stanu gry.],
)

== Wstępna ekstrakcja danych (2/2)
#set text(size: 13pt)
#table(
  columns: (1.6fr, 1.8fr, 1.3fr, 1.5fr),
  align: (left, left, left, left),
  stroke: 0.5pt + gray,
  table.header([*Artykuł*], [*Słowa kluczowe*], [*Model*], [*Środowisko*]),

  [@yoon_strategic_2025 — _Linguistic Constraints_],
  [Context window, Nash equilibrium, bounded memory],
  [GPT-4o, LLaMA-3-70B, Mistral-7B],
  [Linguistic Uncertainty Game],
  wniosek[Wykazano istnienie progu (\~4096 tokenów), poniżej którego skuteczność modeli znacząco spada, oraz wyróżniono trzy tryby działania. Wyniki są istotne dla naszego projektu, bo długie instrukcje gier mogą przekraczać efektywny zakres przetwarzania.],

  [@lu_llms_2024 — _Complex Systems_],
  [Complex systems, game theory, social dynamics],
  [GPT-3.5-turbo, GPT-4, LLaMA-2],
  [Dylemat więźnia, sieci złożone],
  wniosek[LLM kooperują częściej niż ludzie (65,4% vs 37%), ale GPT-4 w grach iterowanych stosuje _unforgiving tit-for-tat_ — po jednej zdradzie trwale przechodzi na rywalizację.],

  [@vidler_playing_2025 — _Randomness & Strategy_],
  [Game theory, stochasticity, loss aversion],
  [GPT-4o-mini],
  [Kamień-Papier-Nożyce, Dylemat więźnia],
  wniosek[LLM nie są losowe — silne uprzedzenia przy generowaniu wyborów, awersja do straty, zbieganie do patowej powtarzalności w RPS. Potrzeba zewnętrznego generatora losowości.],
)
#set text(size: 20pt)

= Wnioski

== Proces SLR
*Przebieg i wyzwania:*
- Największe wyzwanie: odfiltrowanie wyników niezwiązanych z grami (np. medycyna, energetyka).
- Zotero znacząco usprawniło zarządzanie bibliografią i deduplikację.
- 147 unikalnych pozycji → 6 artykułów do pełnej ekstrakcji danych.

*Kluczowe obserwacje:*
- Hipoteza potwierdzona: LLMy (GPT-4+) wykazują zdolność adaptacji do gier.
- Techniki: Inżynieria promptów i Chain-of-Thought są niezbędne do poziomu eksperckiego.
- Zachowania: Modele mogą tworzyć nowe zasady lub próbować oszukiwać graczy.

== Wniosek 1: Prompt > Model
*Prompt jest dominującym czynnikiem skuteczności*

- @-_optimizing_2024: ten sam GPT-4o, prompt → win-rate z *45% do 65%*
- @lore_strategic_2024: zmiana opisu reguł (framing) → diametralnie różne decyzje
- @yoon_strategic_2025: próg ~4096 tokenów — poniżej niego skuteczność dramatycznie spada

*Dla projektu:* nie wystarczy wybrać „najlepszy model" — kluczowe jest _jak_ i _ile_ informacji przekażemy agentowi.

== Wniosek 2: Systematyczne uprzedzenia
*LLM nie zachowują się jak racjonalni gracze*

- @vidler_playing_2025: awersja do straty, niemożność generowania losowych wyborów w RPS
- @lu_llms_2024: nadmierna kooperatywność (65,4% vs 37% u ludzi), ale _unforgiving tit-for-tat_ po zdradzie

Uprzedzenia są *systematyczne*, lecz różnią się kontekstem gry.

*Dla projektu:* kalibracja agenta pod konkretną mechanikę gry (losowość vs. kooperacja).

== Wniosek 3: Paradoks złożoności
*Złożoność pomaga, prostota szkodzi*

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [*Złożone środowisko:*\ StarCraft II @ma_adaptive_2024\ → skuteczna adaptacja w czasie rzeczywistym],
  [*Proste środowisko:*\ Kamień-Papier-Nożyce @vidler_playing_2025\ → patowa powtarzalność],
)

*Wyjaśnienie:* złożone gry dostarczają bogatszego kontekstu tekstowego; proste gry wymagają prawdziwej losowości, której LLM nie posiada.

*Dla projektu:* zaczynać od gier o bogatej mechanice, nie od prostych.

== Wniosek 4: Wybór modelu ma znaczenie
*Modele różnią się jakościowo, nie tylko ilościowo*

- @lore_strategic_2024: GPT-4 reaguje na strukturę wypłat; LLaMA-2-70B na narrację
- @lu_llms_2024: GPT-4 „nie wybacza" zdrady; GPT-3.5 jest skłonny do przebaczenia

*Dla projektu:* wybór modelu powinien być świadomą decyzją powiązaną z typem gry — model wrażliwy na narrację vs. model wrażliwy na strukturę reguł.

== Rekomendacje dla projektu
+ *Projekt promptu ważniejszy niż wybór modelu* — iteracyjne testowanie sposobu przekazania reguł gry (styl, kolejność, szczegółowość).
+ *Zarządzanie budżetem kontekstu* — instrukcje gier powinny mieścić się powyżej progu ~4096 tokenów efektywnego przetwarzania strategicznego.
+ *Zewnętrzna losowość i kalibracja* — agent powinien korzystać z zewnętrznego generatora losowości w grach z elementem losowym.
+ *Zaczynać od gier o bogatej mechanice* — złożone gry planszowe mogą paradoksalnie być łatwiejsze dla agenta LLM niż proste.

= Dziękujemy za uwagę!

== Bibliografia

#bibliography("SLR.bib", title: none)
