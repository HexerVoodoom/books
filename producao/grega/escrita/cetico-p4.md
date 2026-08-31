# Cético — onda P4 (o livro fechado) · ações

## FATAIS
**F1 — o raio não existe nos caps. 1–9.** `grep raio` no corrido dos 9: zero. Derruba (a) a
justificativa X3 do spec (reencontro de atributos: raio, tridente, elmo — só 2 de 3 plantados),
(b) o box do cap. 10 ("os três objetos… saíram da mesma forja" — a criança reconhece dois), e
(c) a última linha do livro. **Conserto: uma linha no corrido do cap. 1** (capítulo gateado —
decisão de gate, não de escritor). O prompt do cap. 1 proíbe o raio na mão: manter a proibição
visual, plantar só no texto (ex.: a luz/o trovão que acompanha o hóspede).

**F2 — glossário não cabe.** Real: **68 verbetes / 2.183 palavras** contra caixa de 1.400–1.800
(pp. 49–50), e verbete ocupa mais que prosa. A R5.2 declarou o cap. 2 podado a 6 — **tem 9**.
Pendência real: caps. 1 (10), 2 (9), 3 (8), 5 (9). Podar os quatro ao teto de 6 ainda deixa
~1.930. Decidir: podar mais fundo (teto 5 nos capítulos densos), ou o glossário ganha a p. 51
e a bibliografia comprime mais, ou sobe a paginação. **Provar com página real antes de fechar.**

**F3 — aparato incompleto e com colisão de página.** `apendices.md` item 10 ainda é "(a redigir
na onda P4)". Faltam, todas obrigatórias por gate: Métis como quem dá a droga (R2, condição de
aprovação), harmonização aclamação→sorteio (R1), atribuição tripartida das fontes do cap. 10,
rodapé de Afrodite/Erínias/Gigantes/Mélias, as 3 perguntas do cap. 10 (uma delas
obrigatoriamente "O que Cronos fez com a foice?"), e a nota ao adulto com os dois cortes
seguros de sessão. Projeção ≈2.495 palavras para 3 pp (2.100–2.700) — cabe só a 900/página, e
o formato pergunta+resposta ocupa mais que prosa. **Colisão declarada:** os cabeçalhos dizem
"pp. 51–52" e "pp. 52–53" — duas seções reivindicam a p. 52. Corrigir para: fontes na p. 51,
perguntas nas pp. 52–53. Folga a favor: as linhas de fontes dos caps. 1–9 somam 500 de 540
autorizadas → o cap. 10 pode gastar 70.

## FIXÁVEIS
- **X1** — a resposta da p. 52 no cap. 2 promete que "o último capítulo conta" como alguém cabe
  dentro de uma cabeça. O cap. 10 não tem a palavra cabeça. Reescrever a promessa para a
  **gramática** ("nessa família cabe gente inteira dentro de gente"), não a cena.
- **X2** — prolepse do elmo nomeia o destinatário por adjacência ("deram a Hades — o mesmo elmo
  que Perseu ia **pedir emprestado**"). Trocar para forma sem destinatário ("ia usar
  emprestado" / "um dia ainda ia sair da casa dele"). Fidelidade R3 exige.
- **X3** — a coda humana virou maneirismo: caps. 7 "Ficou só com a história" · 8 "ficou de luto
  e ficou de pé" · 9 "E almoçou" · 10 "Ficou com um terço". Três dos quatro últimos com o mesmo
  verbo, e quatro do terço final com mensagem de renúncia/dar. **Corrigir no 7 ou no 8** — o
  cap. 10 está protegido pelo tom.
- **X4** — cota R5.1 indecidível: o cap. 8 diz a etiologia **duas vezes** e termina em "até
  hoje". Ou a regra passa a exigir que a **última frase** não tenha marcador etiológico, ou o
  cap. 8 corta a redundância da penúltima. Escolher e escrever.
- **X5** — adequação O4 ("bramia" ao glossário) colide com o teto de 6 do cap. 10. Saída
  recomendada: derrubar o verbete *Urano* (o corrido já o ancora: "o Céu estrelado") e entrar
  com *bramia*.
- **X6** — brief da cena 10B diz "Zeus **jovem**"; `sheet-zeus.png` diz "mature, tall". A 10B é
  a ⭐ PRODUZIR PRIMEIRO e é a referência de continuidade. **Um dos dois cede antes de gerar.**
- **X7** — o comando de contagem da R4.4 está quebrado: `split('## Texto')[1]` casa com a
  menção da própria regra no cabeçalho e devolve **3** nos 10 arquivos. Corrigir para
  `split('\n## Texto\n')[-1]`. Contagens declaradas conferem: 583/533/556/562/519/509/579/560/503/837.
- **X8 (processo)** — `diagramacao/conteudo/capitulos.json` já congelou "Mas isso é outro
  capítulo, e você já leu" (frase que o gate proibiu). **`extrair.py` tem de ser re-rodado
  depois do gate** — escrever isso no próprio script/README da diagramação. E o `state` está
  incoerente em 5 pontos (cap. 10 "pesquisado"; artefatos diz Rev. 3; ritmo_visual 45% vs 36%;
  `gates` sem `escrita`; pendência da p. 53 no formato revogado).

## RUÍDO (registrar, não agir)
Contagem 837 × 842 (usar 837); nota 14 diz "dois 'até hoje'", há um; R4.1 linha 10 do spec
ainda diz "a declarar" (já declarado: pp. 44 e 46); caps. 1 e 9 se passam ambos na Frígia —
bônus não declarado, vale uma linha no rodapé das pp. 52–53.

## Verificado e SEM objeção (o gate não refaz)
Dependências 3→4 (lira), 8→3 (Delos), 4→1 (bastão), 10→6 (partilha) — todas pagas uma vez.
R4.1 no cap. 10 conferida por contagem (batidas 9–10 caem na p. 47; cena B na p. 46 antecede).
R4.2 ✔. Dedup de glossário por termo: zero repetições. Boxes todos ≤80.
