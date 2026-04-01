#set document(title: "Lista artykułów SLR")
#set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm))
#set text(font: "New Computer Modern", size: 11pt, lang: "pl")
#set par(justify: true)

= Lista artykułów wybranych w procesie SLR

#v(0.3em)
*Legenda:* #h(0.5em) ★ — wybrano do pełnej ekstrakcji danych (6 artykułów) #h(1em) ❄ — artykuł pozyskany w procesie snowballingu

#v(0.5em)
Poniższa lista zawiera 19 artykułów zidentyfikowanych w procesie przeglądu systematycznego literatury (SLR) dotyczącego tematu: _Modele LLM jako uniwersalne agenty adaptujące się do systemów złożonych na przykładzie gier planszowych_. Spośród 147 unikalnych pozycji znalezionych w bazach danych, po selekcji i pełnej lekturze do analizy włączono 16 artykułów z wyszukiwania oraz 3 artykuły ze snowballingu. Z tej puli 6 artykułów wybrano do pełnej ekstrakcji danych ze względu na ich bezpośrednie powiązanie z hipotezą badawczą.

== Artykuły z wyszukiwania (16)

+ *★ @-_optimizing_2024* — *Optimizing LLM Strategies for Playing Mendikot using Prompt Engineering* \
  Artykuł bada optymalizację strategii modelu GPT-4o w tradycyjnej indyjskiej grze karcianej Mendikot. Autorzy wykazali, że zaawansowana inżynieria promptów (uczenie na wzorcach eksperckich, dynamiczna modyfikacja promptów) podniosła odsetek wygranych z 45% do 65% bez zmiany samego modelu. \
  _Wybrano do ekstrakcji_ — bezpośrednio dotyczy poprawy gry agenta LLM przez prompt engineering, co jest kluczowe dla projektu adaptacji do gier planszowych.

+ *★ @lore_strategic_2024* — *Strategic Behavior of Large Language Models and the Role of Game Structure versus Contextual Framing* \
  Badanie porównuje zachowania strategiczne modeli GPT-4 i LLaMA-2-70B w czterech grach z teorii gier (Dylemat Więźnia, Stag Hunt, Snowdrift, Prisoner's Delight) pod kątem wpływu struktury gry vs. kontekstowego sformułowania scenariusza. GPT-4 reaguje silniej na strukturę wypłat, natomiast LLaMA-2 — na narracyjny kontekst. \
  _Wybrano do ekstrakcji_ — odkrycie fundamentalnej rozbieżności w przetwarzaniu informacji strategicznej między modelami ma bezpośrednie przełożenie na projektowanie promptów dla gier planszowych.

+ *★ @ma_adaptive_2024* — *Adaptive Command: Real-Time Policy Adjustment via Language Models in StarCraft II* \
  Artykuł analizuje zdolność agentów LLM (GPT-4, Claude 2, Gemini Pro) do adaptacji strategii w czasie rzeczywistym w StarCraft II. Modele skutecznie korygowały politykę działania w odpowiedzi na zmieniający się stan gry bez konieczności ponownego trenowania. \
  _Wybrano do ekstrakcji_ — demonstruje zdolność LLM do dynamicznej adaptacji w złożonych środowiskach gier, co jest analogiczne do wymagań gier planszowych.

+ *★ @yoon_strategic_2025* — *Strategic Learning Under Linguistic and Contextual Constraints* \
  Praca przedstawia formalny model matematyczny (Context-Constrained Nash Equilibrium) opisujący wpływ ograniczeń okna kontekstowego na uczenie się strategiczne. Zidentyfikowano przejścia fazowe przy ~4096 tokenach kontekstu, poniżej których skuteczność agenta drastycznie spada, oraz trzy reżimy operacyjne. \
  _Wybrano do ekstrakcji_ — wyniki bezpośrednio determinują, jak kompresować lub segmentować instrukcje gier planszowych dla agenta LLM.

+ *★ @lu_llms_2024* — *LLMs and Generative Agent-Based Models for Complex Systems Research* \
  Obszerny przegląd zastosowań LLM i generatywnych modeli agentowych (GABM) w badaniach nad systemami złożonymi, obejmujący sieci złożone, teorię gier i dynamikę społeczną. Kluczowe odkrycie: LLM są nadmiernie kooperatywne w Dylemacie Więźnia (65,4% vs 37% u ludzi), a GPT-4 w wariancie iterowanym stosuje strategię _unforgiving tit-for-tat_. \
  _Wybrano do ekstrakcji_ — kompleksowo dokumentuje systematyczne uprzedzenia behawioralne LLM w grach, które muszą być uwzględnione przy projektowaniu agenta.

+ *★ @vidler_playing_2025* — *Playing Games with Large Language Models: Randomness and Strategy* \
  Badanie zdolności GPT-4o-mini do gry w Kamień-Papier-Nożyce i Dylemat Więźnia. Model wykazywał silne uprzedzenia w generowaniu losowych wyborów, rozwijał strategie unikania przegranej (loss aversion), a rozgrywki RPS szybko zbiegały do patowej powtarzalności. \
  _Wybrano do ekstrakcji_ — ujawnia fundamentalne ograniczenie LLM w grach wymagających losowości, co implikuje potrzebę zewnętrznego generatora losowości.

+ *@horibe_evolvability_2025* — _Evolvability in Self-Amendment Games with LLM Agents_ \
  Artykuł bada zdolność agentów LLM do modyfikowania reguł gry w trakcie jej trwania, inspirowany mechaniką gry Nomic. Agenty proponują, głosują i wdrażają zmiany reguł, badając emergentne zachowania w ewoluującym środowisku. \
  _Odrzucono z ekstrakcji_ — koncentruje się na meta-grze (tworzenie reguł), nie na adaptacji do istniejących reguł gier planszowych.

+ *@hadfi_personality-aware_2025* — _Personality-Aware LLM Agents in Polymatrix Games_ \
  Praca bada wpływ cech osobowości Big Five na zachowania strategiczne agentów LLM w grach wielomacierzowych (polymatrix games). Demonstrowane jest, jak różne profile osobowościowe wpływają na kooperację i rywalizację. \
  _Odrzucono z ekstrakcji_ — skupia się na modelowaniu osobowości, a nie na mechanizmach adaptacji do reguł gier.

+ *@poje_effect_2024* — _Effect of Private Deliberation on Deception in Repeated Games_ \
  Badanie analizuje wpływ prywatnej deliberacji (wewnętrznego rozumowania) na skłonność agentów LLM do oszustwa w powtarzanych grach strategicznych. Wykazano, że dostęp do fazy deliberacji zmienia profil decyzyjny agenta. \
  _Odrzucono z ekstrakcji_ — dotyczy mechanizmów oszustwa i deliberacji, nie bezpośrednio adaptacji do gier planszowych.

+ *@stepin_b3emo_2026* — _B3Emo: Quantifying Affect as a Double-Edged Sword in Strategic LLM Interactions_ \
  Framework B3Emo kwantyfikuje rolę emocjonalnego rozumowania w strategicznych interakcjach agentów LLM. Autorzy pokazują, że emocje mogą zarówno poprawiać, jak i pogarszać jakość decyzji strategicznych modeli. \
  _Odrzucono z ekstrakcji_ — koncentruje się na afekcie i emocjach w grach, a nie na mechanizmach adaptacji do reguł.

+ *@de_curto_llm-driven_2025* — _LLM-Driven Social Influence for Cooperative Behavior in Multi-Agent Systems_ \
  Artykuł bada, jak agenty sterowane przez LLM mogą wywierać wpływ społeczny na inne agenty w systemach wieloagentowych w celu promowania zachowań kooperacyjnych. Przedstawiona jest analiza mechanizmów perswazji i wpływu w kontekście MAS. \
  _Odrzucono z ekstrakcji_ — dotyczy wpływu społecznego i perswazji, nie adaptacji strategicznej w grach planszowych.

+ *@wang_intelligent_2025* — _Intelligent Games and Multi-Agent Deep Reinforcement Learning: A Review_ \
  Przegląd metod głębokiego uczenia ze wzmocnieniem w środowiskach wieloagentowych (MADRL) w grach inteligentnych. Artykuł obejmuje szerokie spektrum metod RL, ale nie koncentruje się na modelach językowych. \
  _Odrzucono z ekstrakcji_ — dotyczy głównie MADRL, nie agentów opartych na LLM.

+ *@hintze_promoting_2026* — _Promoting Cooperation in the Public Goods Game Using Artificial Intelligent Agents_ \
  Badanie wykorzystuje ewolucyjną teorię gier i modelowanie komputacyjne do analizy, jak agenty AI mogą promować kooperację w grze o dobra publiczne. Wykazano, że agenty naśladujące zachowanie ludzkie (mimicking) skutecznie obniżają próg kooperacji, w przeciwieństwie do wymuszanej kooperacji. \
  _Odrzucono z ekstrakcji_ — stosuje metody ewolucyjne, nie LLM; dotyczy kooperacji w abstrakcyjnych grach, nie adaptacji do gier planszowych.

+ *@macmillan-scott_irrationality_2025* — _(Ir)rationality in AI: State of the Art, Research Challenges and Open Questions_ \
  Obszerny przegląd koncepcji racjonalności i irracjonalności w AI, obejmujący definicje z ekonomii, filozofii i psychologii. Autorzy analizują, kiedy irracjonalne zachowanie agentów może prowadzić do optymalnych wyników oraz jak identyfikować i interagować z irracjonalnymi agentami. \
  _Odrzucono z ekstrakcji_ — artykuł przeglądowy o charakterze teoretycznym, nie dotyczy bezpośrednio gier planszowych ani adaptacji agentów.

+ *@fujii_predictive_2025* — _Predictive Analysis and Play Evaluation with Machine Learning_ \
  Rozdział książkowy omawiający zastosowanie uczenia maszynowego w predykcyjnej analizie sportowej: klasyfikacja zagrań, klasteryzacja zachowań, ewaluacja przestrzeni i analiza kontrafaktyczna w sportach zespołowych (piłka nożna, koszykówka). \
  _Odrzucono z ekstrakcji_ — dotyczy analityki sportowej z użyciem ML, nie agentów LLM ani gier planszowych.

+ *@mouri_zadeh_khaki_evaluating_2026* — _Evaluating Fairness in LLM Negotiator Agents via Economic Games Using Multi-Agent Systems_ \
  Badanie sprawiedliwości agentów negocjacyjnych opartych na ChatGPT-4 Turbo w grach kupujący-sprzedający. Wykazano, że świadomość płci i rasy partnera wpływa na wyniki negocjacji, a kondycjonowanie persony agenta może łagodzić te uprzedzenia. \
  _Odrzucono z ekstrakcji_ — dotyczy sprawiedliwości i uprzedzeń w negocjacjach, nie adaptacji strategicznej w grach planszowych.

== Artykuły ze snowballingu (3)

#set enum(start: 17)

+ *❄ @mao_alympics_2023* — _ALYMPICS: LLM Agents Meet Game Theory_ \
  Praca wprowadza platformę ALYMPICS — systematyczny framework symulacyjny wykorzystujący agentów LLM (GPT-4) do badań z zakresu teorii gier. W pilotażowym studium „Water Allocation Challenge" agenty uczestniczą w wielorundowych aukcjach o ograniczone zasoby, demonstrując zachowania strategiczne zbliżone do ludzkich. \
  _Nie wybrano do ekstrakcji_ — pionierska platforma badawcza, ale koncentruje się na aukcjach zasobowych, nie na adaptacji do gier planszowych.

+ *❄ @lore_strategic_2023* — _Strategic Behavior of Large Language Models: Game Structure vs. Contextual Framing_ \
  Wcześniejsza wersja badań Lorè i Heydariego, stanowiąca punkt odniesienia dla późniejszej publikacji z 2024 roku. Analizuje zachowania GPT-3.5, GPT-4 i LLaMA-2 w czterech grach z teorii gier, badając wpływ kontekstu narracyjnego na podejmowanie decyzji strategicznych. \
  _Nie wybrano do ekstrakcji_ — wyniki rozwinięte i zaktualizowane w późniejszej wersji @lore_strategic_2024, która została wybrana.

+ *❄ @de_zarza_emergent_2023* — _Emergent Cooperation and Strategy Adaptation in Multi-Agent Systems: An Extended Coevolutionary Theory with LLMs_ \
  Artykuł proponuje Extended Coevolutionary (EC) Theory — framework integrujący dynamikę koewolucyjną, adaptacyjne uczenie się i rekomendacje strategiczne oparte na LLM (GPT-3.5-turbo) do modelowania interakcji w systemach wieloagentowych. Symulacje pokazują potencjał LLM w promowaniu kooperacji i budowaniu odporności strategicznej. \
  _Nie wybrano do ekstrakcji_ — praca głównie teoretyczna, proponuje framework, ale bez empirycznej walidacji w środowisku gier planszowych.

#pagebreak()
#bibliography("SLR.bib", title: none)
