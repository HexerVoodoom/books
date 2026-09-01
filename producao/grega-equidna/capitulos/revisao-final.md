# Revisão final — copidesque PT-BR · `grega-equidna`, caps. 1–8

**Executor:** `mito-revisor` · **Data:** 2026-09-01 · Fase 2, pós-onda 1.
**Entradas:** `fundacao/livro-spec.md` (grafias fechadas), `pesquisa/gate.md`,
`capitulos/RELATORIO-CORRECOES.md`.
**Escopo:** língua. Nenhuma decisão de fidelidade, adequação ou tom foi reaberta.

---

## 0. Confirmação das 35 correções da onda 1

O relatório anterior foi interrompido por limite de uso ao ser fechado. Rodei a varredura de
controle por execução, procurando **as redações revogadas** no corrido, nos boxes e nos briefs
dos 8 arquivos:

```
grep -niE "mãe dos guardiões|um por capítulo|voltava por onde veio|com o leão nos ombros|
não sobrou ninguém|é difícil mesmo|em volta do pescoço|E mandou levar de volta|
havia mais ninguém|Foi Hera quem o pôs|pai de tudo|pai de todos eles|filhos daquela caverna|
Repare no que este livro|ajeitou o ombro|almofada no ombro|sentiu que uma porta|
O leão parou no vale|homem vestido nela|Todos os outros guardiões|Contavam a história|
tamanho de um dedo"
→ 0 ocorrências nos 8 capítulos.
```

**Resultado: as 35 correções estão aplicadas no texto.** Confirmações pontuais:

| verificação | resultado |
|---|---|
| "repare/pense" no corrido dos 8 caps. | **exatamente 2** (cap. 3 e cap. 6), os dois fixados ✔ |
| parentesco em **boxes + glossários** | **zero ocorrência** de filho/mãe/pai/irmão/neto/avó/primo ✔ |
| parentesco no **corrido** | só as exceções autorizadas: cap. 3 (*"primeiro filho"*, *"a mãe está lá dentro"*) e cap. 8 (*"filho mais novo"*, *"o pai dele era Tártaro"*) ✔. As demais ocorrências são de pessoas comuns (cap. 5: *"o avô com a bengala"*, *"a mãe"* das crianças na estrada) e um filhote de cachorro (cap. 8) — nenhuma toca a árvore da família ✔ |
| título do cap. 8 | *"Tifão, o maior de todos"* ✔ |
| almofada **na cabeça** (cap. 4) · abraço **na cabeça** (cap. 7) | corrigidos no corrido **e** nos briefs ✔ |
| box novo do cap. 6 · box sem numerais do cap. 7 | ambos no arquivo ✔ |

### 0.1 O que ficou pela metade

**Três correções foram aplicadas ao texto mas não às notas que as documentam** — as notas ainda
citavam a redação revogada como se fosse a vigente. Corrigido agora (é documentação, não miolo):

1. **cap. 6, nota 3** citava a frase de luto antiga (*"Equidna sentiu que uma porta do mundo
   tinha ficado vazia"*) como redação **literal** da regra-de-luto, contradizendo a nota 14 do
   mesmo arquivo, que registra a substituição. Nota reescrita com a frase vigente e a antiga
   marcada como revogada.
2. **cap. 8, nota "Camada adulta"** citava *"E o pai de todos eles…"* — exatamente a redação
   que a conferência da onda 1 derrubou por declarar grau sobre o crux de *Teog.* 326.
   Atualizada para *"E o maior de todos…"*, com a antiga marcada como revogada.
3. **cap. 2, nota de anti-infantilização** trazia uma glosa duplicada por acidente de edição:
   *"que é medida e não carinho (medida, não carinho)"*. Duplicata removida.

Nenhuma das três altera o miolo. Registro-as porque, deixadas de pé, a próxima passada
adversarial reintroduziria a redação errada achando que estava restaurando a decidida.

---

## 1. Correções de língua aplicadas (4 no corrido)

| # | cap. | antes | depois | motivo |
|---|---|---|---|---|
| 1 | 8 | *"ga**ní**a como filhote de cachorro"* | *"ga**ni**a como filhote de cachorro"* | **Acentuação errada.** O acento agudo em *i* de hiato só cabe quando o *i* vem depois de vogal (*saía*, *caía*). Em *ga-ni-a* o *i* vem depois de consoante: a forma correta do pretérito imperfeito de *ganir* é **gania**, sem acento. Era o único erro ortográfico do livro. |
| 2 | 8 | *"assobiava tão alto que as montanhas devolviam o assobio **de volta**"* | *"…devolviam o assobio."* | **Pleonasmo** (*devolver de volta*). O corte também limpa a batida final da frase para a leitura em voz alta. |
| 3 | 2 | *"ninguém na Cólquida **lembrava do** começo"* | *"ninguém na Cólquida **se lembrava do** começo"* | **Regência.** *Lembrar* é transitivo direto (*lembrava o começo*); com preposição pede o pronominal (*lembrar-se de*). |
| 4 | 6 | *"e ela **cobria ele** inteiro"* | *"e ela **o cobria** inteiro"* | **Colocação pronominal.** O livro usa próclise/ênclise padrão em toda parte (*devolveu-as*, *pode levá-lo*, *largou-a*); esta era a única quebra de registro. |

**Impacto nas contagens R4.4:** cap. 2 de 509 → **510**; cap. 8 de 786 → **785**. Ambos dentro
do teto e longe do piso. Cabeçalhos dos dois arquivos atualizados.

**O que NÃO foi mexido**, embora um copidesque de norma culta cega mexeria: as vírgulas de
respiração, as frases sem verbo (*"Uma porta ocupada."*), as anáforas de refrão, os períodos
curtos em cadeia, o início de frase por conjunção (*"E o mundo não parou por aí."*) e o
minúsculo-sem-ponto do fecho do cap. 2. São partitura de leitura em voz alta, não erro.

---

## 2. Nomes próprios — varredura por execução

Grep de todas as formas fixadas pelo spec (e das armadilhas) nos 8 arquivos.

**Erros de grafia ou acentuação encontrados no texto: ZERO.**

- **"Hércules"**: 4 ocorrências no repositório, **todas dentro de notas de proibição**
  (*"nunca 'Hércules'"*), caps. 3, 4 e 7. Nenhuma no corrido, box, glossário ou brief.
- **"Medéia"**: 1 ocorrência, também dentro da proibição (cap. 2, nota de grafias).
- Conferidos e corretos em todas as ocorrências: Equidna · Tifão · Órtro · Cérbero · Ladon
  (sem acento) · Héracles · Esfinge · Quimera · Hidra · Medeia · Euristeu · Atlas · Gerião ·
  Euritião · Nemeia · Édipo · Tebas · Molorco · Orfeu · Hades · Gaia · Tártaro · Zeus · Etna ·
  Hera · Atena · Prometeu · Hespérides · Cólquida · Lerna · Lícia · Eritia · Cleonas.
- Fora da lista do spec, também conferidos: Jasão, Ares, zimbro, Velo de Ouro, Alcides, Delfos,
  Tirinto, Olimpo, Sicília, Píndaro, Hesíodo, Apolodoro, Higino, Horácio, Virgílio, Apolônio.
- **Eritia**: grafia única em todas as 8 ocorrências; "Eriteia" não aparece ✔ (o glossário do
  cap. 3 fixa a regra).

---

## 3. Transliterações — ⚠️ REPORTADO, NÃO ALTERADO

A decisão da onda 1 é: **transliteração só em Equidna (Ékhidna) no cap. 1**; as demais migram
para a 1ª ocorrência no capítulo próprio. Estado real:

| transliteração | onde está | conforme? |
|---|---|---|
| Equidna (Ékhidna) | cap. 1 | ✔ |
| Órtro (Órthros) | cap. 3 | ✔ |
| Héracles (Hēraklês) | cap. 3 | ✔ |
| Cérbero (Kérberos) | cap. 7 | ✔ |
| Tifão (Typhôn) · Tártaro (Tártaros) · Hidra (Hýdra) · Quimera (Khímaira) · Ladon (Ládōn) | cap. 8 | ✔ |
| **Esfinge (Sphínx)** · **Tebas (Thêbai)** · **Édipo (Oidípous)** | **cap. 5** | ⚠️ **fora do combinado** |

**O achado:** o cap. 5 carrega **três** transliterações em vinte linhas — mais do que qualquer
outro capítulo do livro, e mais do que o cap. 1 depois de aliviado. Duas delas (**Thêbai**,
**Oidípous**) não são nomes de criatura, não estão na régua de grafia do spec (que lista só
Equidna, Tifão, Órtro, Cérbero, Ladon e Héracles) e não têm capítulo próprio a que "migrar" —
são exatamente o tipo de densidade que a onda 1 tirou da abertura do cap. 1.

**Não alterei**: cortar as três é decisão de tom/densidade, do `mito-editor`, não do revisor —
e mexe na contagem do capítulo mais perto do piso do livro (507 declarado). **Recomendação:**
manter **Esfinge (Sphínx)** (é a criatura-título, e a regra a autoriza no capítulo próprio) e
**cortar Thêbai e Oidípous**. Custo: −2 palavras, sem tocar em nada de fonte.

---

## 4. Consistência factual entre capítulos

Varredura de personagem, lugar e fato repetido. **Uma incompatibilidade real:**

### ⚠️ O superlativo "o lugar mais fundo que existe" está dado a dois lugares diferentes

| onde | a quem se refere |
|---|---|
| cap. 3, corrido | ao **mundo de baixo** (*"do outro lado do mundo, no lugar mais fundo que existe… havia outro cão daquela mesma família"*) |
| cap. 6, box | ao **mundo de baixo** (*"No capítulo que vem, no lugar mais fundo que existe…"*) |
| cap. 7, corrido | ao **mundo de baixo** (*"este era o último, e o mais fundo de todos"*) |
| **cap. 8, corrido** | ao **Tártaro** — e explicitamente **acima** do outro: *"o lugar mais fundo que existe, **mais fundo até que o mundo de baixo**"* |
| cap. 8, glossário | idem: *"Tártaro — o lugar mais fundo que existe, mais fundo que o mundo de baixo"* |

A criança que acumulou "o lugar mais fundo que existe = o portão de Cérbero" por três capítulos
chega ao cap. 8 e ouve que o mais fundo é outro. O cap. 8 é o que está **certo pela fonte**
(Tártaro abaixo do Hades); os caps. 3, 6 e 7 é que gastaram o superlativo antes.

**Reportado, não alterado** — a frase do cap. 3 é parte do **acolhimento concreto** da 1ª morte
em cena (a promessa "esse aí volta para casa"), e a do cap. 6 é o gancho do box que prepara a
rima "sem armas" do cap. 7. Mexer em qualquer das duas é mexer em decisão fechada.
**Correção mais barata, se o editor quiser:** trocar o superlativo pelo descritivo nos caps. 3 e
6 — *"lá no fundo do mundo de baixo"* / *"lá embaixo, no mundo de baixo"* — e deixar o
superlativo exclusivo do Tártaro no cap. 8. Zero impacto de fonte, ±0 palavras.

### Conferidas e **coerentes** (sem ação)

- **As duas cavernas** (Equidna: funda, vertical, uma boca × Nemeia: passante, horizontal, duas
  bocas) — descritas de forma inconfundível no corrido e nos três briefs que as citam ✔
- **A caverna de Equidna** — mesmos quatro atributos no cap. 1, no cap. 8 e no fecho: pedra oca,
  teto alto, eco comprido, o traço de luz que atravessa o chão de manhã e vai embora à tarde ✔
- **Órtro** — duas cabeças em todas as ocorrências (caps. 1, 3, 8), sem cauda de serpente ✔
- **Cérbero** — cabeças não contáveis, serpentes **no dorso**, cauda de dragão com vontade
  própria: idêntico nos caps. 1, 7 e 8 ✔
- **Ladon** — "muitas vozes" no cap. 4 e no cap. 8, zero número de cabeças nos dois ✔
- **Euristeu** — apresentado no cap. 4, já apresentado nos caps. 6 e 7; nenhuma reapresentação
  duplicada no corrido ✔
- **Héracles** — nunca justificado, nunca julgado, nos quatro capítulos em que aparece; a pele
  do Leão nasce no cap. 6 e só reaparece no cap. 7, jamais no cap. 4 ✔
- **Hera** — cap. 5 (*"Foi Hera quem a mandou para lá"*) × cap. 6 (*"Hera tinha escolhido aquele
  vale para ele"*): as duas redações estão desgemeadas, como a onda 1 mandou ✔
- **A rima música-vence-monstro** — cap. 2 **faz dormir** / cap. 7 **faz parar**: nenhum verbo
  de sono vazou para o cap. 7, nenhum verbo de pasmo vazou para o cap. 2 ✔
- **A frase-fio literal** — 2 ocorrências exatas (abertura do cap. 1, fecho do cap. 8), dentro do
  teto de 2–3 ✔

---

## 5. Repetições e tiques de escrita

- **"repare/pense": 2 no corrido do livro** (cap. 3 e cap. 6), confirmado por execução. Os dois
  são sobreviventes fixados e estão anotados como não removíveis. ✔
- **"mais do que se consegue contar"** — 3× (caps. 1, 7, 8). **É regra do livro**
  (não-contável), plantada de propósito na abertura. Mantida.
- **"o traço de luz"** — 4× (caps. 1, 6, 8×2). É o motivo visual que amarra a caverna do começo à
  do fim e carrega a frase de luto do cap. 6. Mantido: repetição que a criança reconhece.
- **"do jeito que…"** — 3× (caps. 2, 8×2), em capítulos distantes e em funções diferentes.
  Abaixo do limiar de tique. Sem ação.
- **"E foi assim que"** — 1× (cap. 4) e **"Foi assim que"** 1× (cap. 6). Dois capítulos vizinhos
  abrindo o mesmo movimento de fecho. **Reportado, não alterado** — no cap. 6 a frase é o pivô
  que sai da elipse (*"Foi assim que a pele impossível saiu do vale de Nemeia"*), e trocá-la
  toca a elipse da 2ª morte em cena. Se o editor quiser desgemear, o barato é o cap. 4.
- Fórmulas de fecho: nenhum par de capítulos vizinhos fecha no mesmo movimento (o 6 já foi
  corrigido na onda 1). ✔
- Diminutivos: **"baixinho"** (caps. 2 e 8, volume de voz), **"raminho"** (cap. 2, medida),
  **"bem velhinho"** (cap. 5, mantido por decisão). Nenhum diminutivo afetivo novo. ✔
- Exclamações no corrido: **zero** nos 8 capítulos. ✔

---

## 6. Reportado sem alterar — lista fechada para o `mito-editor`

1. **Thêbai e Oidípous no cap. 5** (§3) — densidade de transliteração acima da régua da onda 1.
2. **"o lugar mais fundo que existe" em dois lugares diferentes** (§4) — a única inconsistência
   factual entre capítulos que encontrei.
3. **"Foi assim que" nos caps. 4 e 6** (§5) — fórmula de fecho gêmea, abaixo do fatal.
4. **Divergência de contagem no cap. 4.** Pelo meu script (tokens com ao menos um caractere
   alfanumérico entre `## Texto` e `## Você sabia?`) o cap. 4 dá **563**, contra os **543**
   declarados no cabeçalho — desvio de 20, enquanto os outros sete ficam dentro de ±5 do
   declarado. Provável divergência de tratamento das linhas de fala (o cap. 4 é o único
   capítulo com diálogo longo). **Sem consequência**: 563 continua dentro do teto de 600, e a
   folga real seria de 37, não de 57. Recomendo recontar o cap. 4 com o script canônico antes
   do gate, porque é o capítulo com menos margem do livro.
5. **Mantidos por decisão de outras lentes, contra o instinto de copidesque, sem alteração:**
   "bem velhinho" (cap. 5), as frases sem verbo dos refrães, o minúsculo sem ponto final do
   fecho do cap. 2, o "E" em início de período (recorrente e deliberado), e o registro oral de
   "Esse aí" / "essa aí" (caps. 3 e 8).

---

## 6-B. Rodada 2 — os itens reportados foram AUTORIZADOS e aplicados

O coordenador liberou os três achados da §6 e mandou acertar a contagem do cap. 4. Aplicado:

### 1. Superlativo "o lugar mais fundo que existe" — resolvido a favor do cap. 8

**Autoridade:** o cap. 8 está certo pela fonte (Hesíodo põe o Tártaro abaixo do Hades). Cedem os
outros três, com designação **não superlativa**, preservando a batida de leitura em voz alta.

| cap. | antes | depois |
|---|---|---|
| 3 | *"E do outro lado do mundo, **no lugar mais fundo que existe**, naquele mesmo dia havia outro cão…"* | *"E do outro lado do mundo, **lá no fundo do mundo de baixo**, naquele mesmo dia havia outro cão…"* |
| 6 (box) | *"No capítulo que vem, **no lugar mais fundo que existe**, alguém vai fazer um pedido a Héracles"* | *"No capítulo que vem, **no fundo do mundo de baixo**, alguém vai fazer um pedido a Héracles"* |
| 7 | *"e este era o último, e **o mais fundo de todos**: levar o cão do portão…"* | *"e este era o último, e **o que descia mais fundo**: levar o cão do portão…"* |

No cap. 7 a reformulação muda a natureza da comparação: já não classifica **lugares** (superlativo
de profundidade, que colidia com o Tártaro), e sim os **trabalhos** de Héracles entre si — o que
é verdadeiro e não disputa nada com o cap. 8. As três redações usam o termo que o livro já tinha
plantado desde o cap. 1 (*"o mundo de baixo"*), então nenhuma introduz vocabulário novo.

**O cap. 8 fica com o superlativo, agora único e verdadeiro** no livro inteiro:
*"o lugar mais fundo que existe, mais fundo até que o mundo de baixo"*. Varredura de controle:
`grep "mais fundo"` fora do cap. 8 retorna só a linha reformulada do cap. 7 ✔.

### 2. Transliterações do cap. 5 — Thêbai e Oidípous cortados

- *"a cidade de Tebas **(Thêbai)**, e era a única"* → *"a cidade de Tebas, e era a única"*
- *"O nome dele era Édipo **(Oidípous)**."* → *"O nome dele era Édipo."*

**Sphínx mantido** — é a criatura-título, é a 1ª ocorrência dela no livro, e é exatamente o caso
que a regra autoriza (transliteração na 1ª ocorrência **no capítulo próprio**). O cap. 5 passa de
três transliterações para uma, alinhando-se aos demais capítulos. Custo: **−2 palavras**.

**Mapa final das transliterações do livro** — uma por criatura, no capítulo dela, sem exceção:
Equidna (Ékhidna) cap. 1 · Órtro (Órthros) e Héracles (Hēraklês) cap. 3 · Esfinge (Sphínx)
cap. 5 · Cérbero (Kérberos) cap. 7 · Tártaro (Tártaros), Tifão (Typhôn), Hidra (Hýdra),
Quimera (Khímaira) e Ladon (Ládōn) cap. 8.

### 3. "Foi assim que" gêmeo — variado no cap. 4

- cap. 4: *"**E foi assim que** o herói mais forte da Grécia atravessou o fim do mundo, chegou…"*
  → *"**E assim** o herói mais forte da Grécia atravessou o fim do mundo, chegou…"* (−2 palavras)
- cap. 6 **mantido**: *"Foi assim que a pele impossível saiu do vale de Nemeia."* É o pivô que
  sai da elipse da 2ª morte em cena — mexer nele toca decisão fechada. Variou o outro.

### 4. Contagens — método declarado e tabela final

**Regra usada (R4.4, literal):** tokens separados por espaço entre `## Texto` e `## Você sabia?`
que contenham **ao menos um caractere alfanumérico** (letras acentuadas incluídas). Isso exclui
o travessão de fala e os travessões soltos, que não têm alfanumérico. Comando reproduzível:

```
awk '/^## Texto/{p=1;next} /^## Você sabia/{p=0} p' <arquivo> \
  | tr ' ' '\n' | grep -cE "[[:alnum:]áéíóúâêôãõçàÁÉÍÓÚÂÊÔÃÕÇÀ]"
```

| cap. | script anterior | **este script** | Δ | teto | folga | estado |
|---|---|---|---|---|---|---|
| 1 · Equidna e a caverna | 516 | **519** | +3 | 500–600 | 81 | ✔ |
| 2 · Dragão da Cólquida | 510 | **513** | +3 | 500–600 | 87 | ✔ |
| 3 · Órtro | 525 | **532** | +7 | 500–600 | 68 | ✔ |
| 4 · Ladon | 541 | **561** | **+20** | 500–600 | **39** | ✔ ⚠️ |
| 5 · Esfinge | 505 | **512** | +7 | 500–600 | 88 | ✔ |
| 6 · Leão de Nemeia | 506 | **511** | +5 | 500–600 | 89 | ✔ |
| 7 · Cérbero | 527 | **532** | +5 | 500–600 | 68 | ✔ |
| 8 · Tifão (geral) | 785 | **791** | +6 | 750–850 | 59 | ✔ |
| **TOTAL corrido** | — | **4.471** | — | ≈4.650 orçado | 179 | ✔ |

**Nenhum capítulo estoura o teto e nenhum encosta no piso.** Boxes inalterados: 51 · 51 · 55 ·
67 · 62 · 47 · 53 · 46 — todos ≤80 ✔.

**Sobre a divergência:** os dois scripts convergem em ±3 a +7 em sete capítulos — diferença
normal de tratamento de tokens de pontuação. **O cap. 4 é o outlier (+20)**, e a causa é
localizável: é o **único capítulo do livro com diálogo longo** — 9 linhas de fala, 90 palavras
em discurso direto. A divergência está inteiramente nesse bloco (provável tratamento diferente
das falas ou dos apostos "— disse Atlas"). Não é divergência de texto: os dois scripts leem o
mesmo arquivo.

**Cabeçalho do cap. 4 acertado por este script (561)**, com a folga real (39) e o alerta gravado
no próprio arquivo. Os cabeçalhos dos outros sete continuam na contagem do script anterior,
ajustada pelos deltas desta revisão — **a Fase 4 deve recontar os oito por um método só**, e este
é o que está declarado e reproduzível.

---

## 7. Estado

**8 capítulos revisados, em duas rodadas.** Rodada 1: 4 correções de língua no corrido, 3 notas
dessincronizadas ressincronizadas, 2 cabeçalhos atualizados, zero erro de nome próprio.
Rodada 2 (autorizada pelo coordenador): a inconsistência do superlativo resolvida nos caps. 3, 6
e 7 a favor do cap. 8; duas transliterações cortadas do cap. 5; a fórmula de fecho gêmea variada
no cap. 4; método de contagem declarado e os oito capítulos recontados.

**Total: 10 intervenções de língua no corrido/box, zero mudança de sentido, zero erro de nome
próprio, zero contradição factual pendente entre capítulos.** Nenhuma decisão de fidelidade,
elipse, regra-de-luto, frase-fio ou box foi tocada. Único item ainda no colo do editor: a
recontagem dos oito capítulos por método único na Fase 4 (§6-B.4) — não bloqueia o gate.

**Pendência herdada, inalterada:** "Perguntas que as crianças fazem" (pp. 44–45) continua sem
existir; o contrato escrito na §10 do `RELATORIO-CORRECOES.md` segue valendo para quem a
escrever, e esta revisão terá de ser repetida sobre ela.
