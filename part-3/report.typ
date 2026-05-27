#set document(title: "Research Article Review Report")
#set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm))
#set text(font: "New Computer Modern", size: 11pt, lang: "pl")
#set heading(numbering: "1.1.")
#set par(justify: true)

#show heading: set text(lang: "en")

#context [
  #set text(font: "Inter")
  
  #align(center)[
    #v(4cm)
    #text(size: 22pt, weight: "bold", lang: "en")[Research Article Review Report]
    
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

Projekt powinien pozwalać na symulację zachowania żywego gracza w złożonych, dynamicznych systemach decyzyjnych. Rozwiązanie musi umożliwiać skuteczną interakcję na linii agent–środowisko poprzez czytelną reprezentację bieżącego stanu gry, rejestrowanie ruchów przeciwników oraz komunikowanie własnych posunięć.

Hipotezą badawczą jest weryfikacja możliwości skutecznego adaptowania się agenta LLM do reguł gry oraz podejmowania trafnych decyzji na podstawie znajomości instrukcji tekstowej.

= Research article review

== Title
Playing games with Large language models: Randomness and strategy

== Authors
Alicia Vidler, Toby Walsh

== Reference
ArXiv preprint: arXiv:2503.02582v1 [cs.AI], 4 Mar 2025.

== Table of contents
Struktura recenzowanego artykułu prezentuje się następująco:
1. Introduction
2. Background and Recent Literature
  - 2.1. Game theory
  - 2.2. Large Language Models
  - 2.3. Computational Randomness
  - 2.4. LLM Cognitive effects and LLM collaboration
  - 2.5. Agentic LLMs
3. Method: Games
  - 3.1. Game rules: Prompts
  - 3.2. Rock Paper Scissors: Games of Uniform distribution
4. Results
  - 4.1. RPS: One-Shot RPS games with 2 virtual players - Non uniform play
  - 4.2. Repeated RPS Games: Learning and Stalemate Emergence
  - 4.3. Emergence of Stalemate in 1000 turn repeated
5. Prisoners Dilemma
  - 5.1. Results
6. Conclusions and Future work
References

== Positioning of each element of research design and execution
Analiza powiązań kluczowych elementów projektowania badań z rzeczywistą strukturą pracy:
- *Wprowadzenie i zdefiniowanie problemu:* Znajduje się w sekcji _1. Introduction_. Autorzy stawiają w niej wyraźne tezy i cel badawczy - zweryfikowanie czy duże modele językowe mogą generować losowość i na jej podstawie strategicznie grać w proste gry.
- *Przegląd literatury:* Poprawnie wydzielony w obszernej sekcji _2. Background and Recent Literature_, podzielonej na adekwatne dla kontekstu tematy, takie jak _Teoria gier_, _LLMy_, _Obliczeniowa losowość_ czy _Kognitywne efekty LLM_.
- *Pytania badawcze:* Postawione wyraźnie pod koniec sekcji _Introduction_ - Autorzy pytają, czy pomimo braku obiektywnej losowości w LLMach, są one w stanie wykształcić metastrategie opierające się na mieszanym podejściu do optymalizacji gier.
- *Metodologia badań:* Solidnie opisana w _3. Method: Games_. Wyjaśniono wybór silnika agentowego (LangChain), konkretnego modelu LLM (GPT-4o-Mini), architekturę agentów (prompty) i problem cachingu od strony serwerów OpenAI.
- *Przeprowadzenie eksperymentu:* Eksperyment polegał na analizie rozkładu decyzji w wielu wariantach (od 100 do 1000 gier) oraz na zmienianiu promptów systemowych dla graczy w celu testowania ich wrażliwości na sposób opisu reguł.
- *Wyniki i Analiza:* Skoncentrowano je w dedykowanych sekcjach na temat wybranych gier (_4. Results_ dla RPS oraz _5. Prisoners Dilemma_ i podsekcje wynikowe). Obydwie gry otrzymały swoje dedykowane bloki analityczne.
- *Wnioski i ograniczenia:* W sekcji _6. Conclusions and Future work_ badacze stwierdzają, że modele pomimo bycia obiecującymi układami, słabo adaptują się do czystej losowości, wykazując nadmierne unikanie strat. 
- *Braki lub mankamenty strukturalne:* Zauważalny jest brak oddzielnej, jednoznacznie zarysowanej sekcji poświęconej dyskusji, która oddzielałaby suche wyniki ilościowe od ich głębokiej interpretacji. Rozważania teoretyczne płynnie przechodzą w opis wniosków. Brakuje też wyodrębnienia w dokumencie wprost paragrafu opisującego obiektywne ograniczenia lub wady własnych badań. 

== Strengths
- *Trafny dobór najnowszych modeli:* Badanie używa relatywnie najnowszego GPT-4o-Mini zamiast starszych (np. GPT-3.5 czy LLaMA 7B), co nadaje artykułowi dużą dozę współczesnego kontekstu do problemów nieprzewidywalności LLMów.
- *Rzetelne podejście statystyczne:* Przeprowadzenie wielorundowych symulacji gier w setkach powtórzeń uwiarygadnia tezy. Testowanie jedno-strzałowe oraz wielo-strzałowe pozwala obiektywnie odróżnić reakcje w izolacji od reakcji w dążeniu strategicznym posiadającym historię gry.
- *Identyfikacja problemów technicznych:* Jasne zwrócenie uwagi na zachowania optymalizacyjne API dostawców LLM, co ma kluczowe znaczenie przy próbie wykorzystywania tych samych LLMów kilkukrotnie do pozornie jednakowych, lecz dążących do innej losowości wywołań. Zaproponowano od razu sposoby uniknięcia tego technicznego błędu.
- *Próby modyfikacji wejścia:* Wieloaspektowe podejście do definicji instrukcji i weryfikacji zmiany strategii poprzez odwracanie kolejności słów kluczowych czy dodawanie słowa "random".
- *Potwierdzenie wbudowanej stronniczości modelu:* Jasne i przejrzyste zaraportowanie wyników jednostrzałowych (gdzie agent np. wybiera "Kamień" w aż 79% przypadków), co dowodzi nielosowych predyspozycji LLM, będących fundamentem hipotezy.
- *Wnioskowanie z gier strategicznych:* Eksperyment z Dylematem Więźnia udowodnił wysoką wrażliwość modelu na sformułowanie instrukcji. Wyniki mierzalnie pokazują, jak agent przechodzi od kooperacji do skrajnej rywalizacji pod wpływem drobnej zmiany tekstu w regułach.

== Weaknesses
- *Skupienie na nadmiernie trywialnych systemach:* Gry Kamień-Papier-Nożyce (RPS) i Dylemat Więźnia to gry proste pod względem matematycznej teorii gier. Nie sprawdzono, jak LLM poradzi sobie w środowisku posiadającym złożony stan z dziesiątkami reguł z rzędu (np. strategiczne gry planszowe), gdzie dochodzą do tego zależności przestrzenne i wieloagentowe w środowisku z niepełnymi informacjami.
- *Brak analizy porównawczej architektur wielomodelowych:* Wykorzystano w eksperymencie tylko jednego bazowego LLMa z rodziny OpenAI. Autorzy wspominają o innych, jednak bezpośrednie wyniki zebrane w artykule bazują w całości na GPT-4o-Mini, przez co wnioskowanie może być zniekształcone ze względu na specyfikę trenowania wyłącznie jednego rodzaju LLM.
- *Połączenie wyników i konkluzji:* Wady strukturalne pracy takie jak skonsolidowanie dyskusji i wyników, przez co momentami analiza wyników traci nieco na czytelności - ciężko odseparować suchy fakt uzyskany na drodze symulacji od implikowanej przez badacza konkluzji psychologicznej u modeli.
- *Powierzchowny przegląd literatury:* Podrozdziały dotyczące efektów kognitywnych oraz frameworków agentowych przypominają raczej wyliczankę prac innych autorów. Zabrakło głębszej analizy konceptu kooperacji oraz uzasadnienia, dlaczego konkretne narzędzia agentowe (np. LangChain) są stosowne do weryfikacji takich badań.
- *Niedokładność analityczna w grach powtarzanych:* Choć zaobserwowano zapętlanie się decyzji agentów i ich dążenie do remisu wynikające z awersji do strat, w pracy brakuje dogłębnej weryfikacji, jak podana historia tur przekładała się precyzyjnie (krok po kroku) na proces podejmowania decyzji LLM. Autorzy poprzestali wyłącznie na opisie zagregowanego trendu statystycznego.

== Evaluation
Podsumowując, artykuł ten stanowi solidną i godną polecenia pracę naukową o charakterze badawczo-empirycznym. Eksperyment jest zaprojektowany starannie pod kątem minimalizacji zjawisk zakłócających (takich jak caching po stronie API) oraz uwzględnia iteracyjne dążenie do wyników w czasie (gry powtarzane). Wyniki te posiadają wielką wartość w obszarach projektowania zautomatyzowanych, niezależnych agentów do wieloagentowych gier lub systemów złożonych, ukazując naturalne tendencje modeli AI. Chociaż zakres gier wykorzystanych w symulacji jest ekstremalnie wąski, stanowi świetną podstawę teoretyczną i referencję dla naszego projektu - gdzie uodpornianie LLMów i odpowiednia inżynieria ich ról podczas czytania obszernej reguły gry planszowej, posłuży optymalizacji wyników.

=== Zalecane poprawki 
W przyszłych badaniach lub rewizji artykułu autorzy powinni zdecydowanie rozszerzyć pule testowanych modeli (np. dodając LLaMA 3 czy Claude 3.5), aby uniknąć stronniczości wyników wywołanych treningiem jednego dostawcy. Powinni oni również wydzielić osobną, ustrukturyzowaną sekcję z dyskusją oraz ograniczeniami, by zadośćuczynić uniwersalnym standardom prezentacji prac naukowych.

=== Błędy językowe
Artykuł jest napisany poprawną, zwięzłą angielszczyzną naukową. Nie dopatrzono się rażących błędów językowych, jednak usterką redakcyjną jest łączenie "surowych" wyników z ich poznawczą interpretacją w tych samych akapitach bez jasnego przejścia.

= Conclusions

== Article design or review
Wykonanie niniejszej recenzji ukazało kluczową rolę rzetelnego i uporządkowanego układu artykułu naukowego. Możliwość ustrukturyzowania raportu z badania w sposób precyzyjny (np. z wydzieleniem sekcji na wprost wymienione _Ograniczenia pracy_ oraz wyraźną _Dyskusję_) buduje zaufanie do powtarzalności wyników. Z kolei merytoryczna część recenzowanego artykułu doskonale naświetla aspekty losowości i systematycznych odchyleń od norm (biasu), o jakich należy pamiętać próbując "nauczyć" dużego modelu językowego grania w gry w oparciu o tekstowe instrukcje, i skłania do zaimplementowania mechanizmów przeciwdziałania np. zachowaniom nakierowanym na unikanie strat (loss aversion) obserwowanym u agentów opartych na LLM.

== Final course conclusions
Realizacja etapów przedmiotu Metody Badawcze w Informatyce umożliwiła metodyczne zorganizowanie i weryfikację prac nad systemem agentowym LLM. Poszczególne zadania pozwoliły na zidentyfikowanie kluczowych problemów badawczych i technicznych przed przystąpieniem do właściwej implementacji docelowego rozwiązania.

Etap Przeglądu Literatury (SLR) wykazał, w oparciu o analizę wielu pozycji, dominujący wpływ inżynierii promptu (framing) nad samym wyborem modelu na skuteczność działania agenta. Zidentyfikowano również powtarzalne, systematyczne uprzedzenia behawioralne modeli, takie jak awersja do straty (loss aversion), oraz paradoks adaptacji polegający na sprawniejszym działaniu LLM w środowiskach złożonych opisowo niż w systemach opartych na czystej losowości. Wnioski te pozwoliły na merytoryczną weryfikację początkowych założeń projektowych.

Zaprojektowanie badania i jego wariant pilotażowy (Research design & pilot study) umożliwiły z kolei praktyczną weryfikację założeń w środowisku testowym. Pilotaż oparty na protokole MCP i platformie DragnCards uwidocznił trudności w operowaniu na surowym tekście instrukcji pochodzącym bezpośrednio z ekstrakcji PDF (co skutkowało np. całkowitym brakiem użyteczności modelu Gemma 4 31B). Badanie obnażyło różnice w wydajności - zaobserwowano, że model GPT-5.4 w środowisku pozbawionym uporządkowanej instrukcji generował drastycznie więcej błędnych i kosztownych wywołań. Etap ten wykazał ponadto konieczność przeprowadzenia uprzedniej inżynierii odwrotnej rzeczywistych żądań sieciowych w celu bezpiecznego zawężenia przestrzeni akcji udostępnianej agentowi.

Krytyczna recenzja wybranego artykułu naukowego dostarczyła wzorców w zakresie rzetelnego raportowania wyników empirycznych. Pozwoliła zidentyfikować powszechne błędy warsztatowe, takie jak łączenie suchych danych statystycznych z interpretacją poznawczą czy brak odpowiedniego wyodrębnienia sekcji dyskusji i ograniczeń (limitations) badania.

= Literature
#cite(label("vidler_playing_2025"), form: none)
#bibliography("SLR.bib", title: none)