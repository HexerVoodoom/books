# Guia de estilo visual — *Equidna e as portas do mundo* (livro 2, spin-off da Grécia)

> **Fase 3a — direção de arte.** Dono: `mito-diretor-arte`. Produzido em 2026-09-01.
> **Versão 2 — pós-loop adversarial.** Esta versão aplica as arbitragens A1–A10
> (`arbitragens-3a.md`), a tabela de referências CC0 (`referencias-visuais.md`) e o resultado
> empírico dos dois pilotos (`pilotos/relatorio-pilotos.md`). O que mudou está listado em
> `guia-changelog-3a.md`.
> **Congelado.** Nenhuma cena pode ser briefada, gerada ou validada contra outra versão deste
> arquivo. Toda alteração exige gate.
>
> 🔴 **EMENDA v2.3 (Fase 3b, 3ª sessão — `curadoria-3b.md` §13–§18).** Três acréscimos e uma
> confirmação: **§1.5e** (o não-contável sai do ornamento, não da anatomia — substitui a
> estratégia das emendas v2.1/v2.2 para o item 11, e institui as duas cláusulas novas da linha
> de fechamento de sheet) · **§0.2b** (procedimento de anexo: `.jfif` é lido como texto, teto de
> 10 MB, anexar cópia `.jpg` q95) · **§2.1/D9-A confirmada empiricamente** e promovida de regra
> proposta a regra provada.
>
> **Este guia é um DELTA.** Ele **herda integralmente** `producao/grega/guia-de-estilo.md`
> (livro 1) — fórmula Mucha + aquarela, camada cultural de cerâmica ática, hierarquia X5
> ("a cerâmica emoldura; Mucha atua"), paleta hex §2, parâmetros de geração §3, entrega e
> upscale §3.1, prompt-base §3.2, barra de validação §7. **Onde este arquivo é silente, o
> livro 1 manda.** Onde ele fala, ele acrescenta ou restringe — **nunca afrouxa**.
>
> Entradas: `fundacao/livro-spec.md` §Direção de arte preliminar · `producao/state/grega-equidna.json`
> §`decisoes_de_arte_fixadas` (9 decisões de gate, **não reabertas aqui**) ·
> `producao/grega/ilustracoes/log-geracao.md` (precedentes de reprovação) · os 8 capítulos,
> seção "Cena da ilustração" · os 8 dossiês de `pesquisa/` ·
> `.claude/skills/squad-mitologia/references/estilo-ilustracao.md` e `pipeline-impressao.md` ·
> **`ilustracoes/referencias-visuais.md` (12 referências CC0/DP verificadas)** ·
> **`ilustracoes/arbitragens-3a.md`** · **`ilustracoes/pilotos/relatorio-pilotos.md`**.
>
> Consumidores: `mito-ilustrador` (Fase 3b), `mito-diagramador` (Fase 4).

---

## 0. Correções herdadas e de pipeline, obrigatórias antes da primeira geração

### 0.1 A linha de proporção (herdada do livro 1 — **confirmada pelos pilotos**)

O `log-geracao.md` do livro 1 provou que o bloco `[BASE]` de `prompts.md` **perdeu as duas
linhas finais** do prompt-base do guia §3.2, e que sem elas o Gemini devolve proporção
aleatória (0,56 / 0,67 / 1,83) em vez de 1:1. **O `prompts.md` deste livro nasce com o
`[BASE]` terminando, verbatim:**

```
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

Character sheets são a única exceção (4:3, folha de referência, não é asset de página).
**Nenhuma imagem deste livro pode ser gerada por um prompt sem essa linha.** Reprovação
automática de entrega.
✅ **Verificado nos pilotos (A10):** 2048 × 2048 exato nas três imagens. **Manter sem tocar.**

### 0.2 🔴 RECODIFICAÇÃO OBRIGATÓRIA — o achado que faltava (A6)

O Gemini entrega **JPEG com extensão de imagem** (`.jfif` / `.png`), e o **Typst rejeita o
arquivo com `Invalid PNG signature`**. Sem esta linha a Fase 4 quebra na primeira compilação.

> **Toda imagem baixada do gerador é RECODIFICADA para PNG real antes de entrar em
> `ilustracoes/` como asset.** Verificar a assinatura do arquivo (`\x89PNG`), não a extensão.
> O arquivo original do download fica em `ilustracoes/brutos/` com o nome da conversa.
> **Nenhuma imagem entra no `miolo.typ` sem passar por esta etapa.**

Dono: `mito-ilustrador` no fim de cada sessão de geração. Verificação: `mito-diagramador`, na
abertura da Fase 4, reprova o lote inteiro se algum arquivo falhar a assinatura.

### 🔴 0.2b PROCEDIMENTO DE ANEXO — obrigatório em toda peça com imagem anexada (v2.3)

Achado da 3ª sessão, custou **duas gerações** para ser descoberto (`log-geracao.md`, sessão 3).

> 1. 🔴 **Nunca anexar o `.jfif` de `brutos/`.** O Gemini **lê o `.jfif` como TEXTO**, não como
>    imagem, e responde comentando o binário (*"the raw binary text of a JPEG image file"*).
>    Só reconhece como imagem o que chega com extensão **`.png` ou `.jpg`**.
> 2. 🔴 **O teto de upload é 10 MB somados** — os PNGs recodificados deste livro passam disso.
> 3. ✅ **Procedimento:** gerar uma **cópia `.jpg` q95, em tamanho nativo**, do asset PNG e
>    anexar **essa cópia**. A cópia é descartável e **não** é asset; não entra em `ilustracoes/`
>    como peça nem no `miolo.typ`.
>
> Vale para todo mecanismo D9/D9-A, para toda referência de acervo e para toda âncora de cor.

### 0.3 Piso de variações declarado (A6)

O guia herdado dizia "3–4 variações e curar" e impunha "máx. 3 rodadas" — mas o livro 1
entregou **1 de 4** em quase tudo, e sem piso "curar" é ficção. **Piso deste livro:**

| Classe de peça | Piso de variações antes de qualquer veredito |
|---|---|
| `sheet-equidna`, `sheet-cerbero`, `00-capa`, `01`, p. 40 (as peças que decidem o livro) | **3 conversas novas** com o mesmo prompt |
| Demais full-bleeds e sheets | **2 conversas novas** |
| Vinhetas | 1, com direito a 2ª se reprovar |

"Refazer" **não conta como variação** — está provado por hash MD5 no livro 1 que ele não
regenera. Variação = conversa nova.

### 0.4 Orçamento realista e ponto de parada (A6)

18 peças é o **piso teórico**. Com as rodadas das 7 peças poli-cefálicas, o piso de variações
do §0.3 e o desgaste histórico da aba (livro 1: degradação após ~15 gerações, downloads
intermitentes, conversas "envelhecidas"; pilotos: 3 timeouts de CDP e até 3 tentativas para o
texto entrar), **o realista são 30–40 conversas, em 3 ou mais sessões.**

> **Ponto de parada declarado:** ao fim de cada sessão, ou ao atingir **15 gerações na mesma
> aba**, o `mito-ilustrador` para, registra o estado no `log-geracao.md` e reabre em sessão
> nova. **Insistir numa aba degradada é o padrão que custou o livro 1.**

---

## 1. A PREMISSA DO LIVRO 2 — a inversão, resolvida como método

### 1.1 O que mudou

No livro 1, o monstro era **o que não se podia mostrar**: a Medusa só existia como reflexo
pequeno e adormecido; o Minotauro, só como sombra estática que nunca tocava Teseu. A regra
protegia a criança **retirando a criatura de quadro**.

Neste livro **a criatura é a protagonista da página**. Ela tem rosto, ocupa o centro, olha, e
o leitor de 4 anos precisa **gostar dela na primeira olhada** — sem virar desenho animado e
sem quebrar a fórmula Mucha/aquarela da coleção. Isto é **premissa**, não ajuste: onde uma
regra do livro 1 e esta premissa colidirem, a colisão sobe declarada (§8), não se resolve
por bom senso na hora do prompt.

### 1.2 O método — as seis alavancas da amabilidade

A doçura **nunca** vem de deformar o bicho (olho grande, cabeça grande, proporção de
mascote). Vem de **postura, escala, olhar, luz, moldura e recorte**. Estas são as seis
alavancas autorizadas, e toda cena deste livro usa pelo menos três — **e a tabela §5 nomeia
QUAIS três, por peça.** "Pelo menos três" sem nomear não é verificável na validação.

| # | Alavanca | Como se aplica | Por que funciona sem infantilizar |
|---|---|---|---|
| 1 | **POSTURA** | A criatura está **parada, sentada, deitada ou cedendo** — nunca em bote, nunca em investida, nunca avançando para o leitor. Cérbero senta no umbral; o Leão deita no capim; o Dragão da Cólquida deita a mandíbula; Ladon olha sem reagir; Órtro trabalha. | A criança lê intenção pela postura antes de ler o rosto. Bicho parado = bicho que não vem. E todas as quatro posturas acima são **fato de fonte**, não suavização. |
| 2 | **O QUE ELA ESTÁ FAZENDO** | Toda criatura é desenhada **no meio do seu trabalho**, não no meio de um confronto. Órtro conta o rebanho; a Esfinge pergunta; Equidna guarda a porta. | Trabalho é a coisa mais legível do mundo para 4 anos, e é literalmente o tema do livro (guardar). Substitui "fofura" por "ocupação". |
| 3 | **O OLHAR** | Olhos **abertos, com pupila, focados em alguma coisa dentro ou fora do quadro** — atentos, nunca vazios e nunca fixos no leitor com hostilidade. Exceção declarada: **a cabeça que ganie de Tifão** é a única que olha diretamente para a criança, e olha manso. | Olho com direção = ser com mente. Olho sem pupila = monstro. A diferença é de dois traços e decide a página. |
| 4 | **ESCALA EM VEZ DE CARETA** | O que dá tamanho ao perigo é **o tamanho da criatura e a altura do cenário** (o portão, a pedra alta, a árvore, a caverna), nunca dente, garra, baba ou contraluz. | Preserva a grandeza que a fonte descreve ("huge", "great and awful") sem gastar o rosto nisso. O rosto fica livre para ser legível. |
| 5 | **A VÁLVULA DO PERIGO** | Quando a cena precisa de risco, ele mora em **um único elemento periférico, não no rosto**: a cauda-dragão de Cérbero (o único agente hostil da fonte), o peso do céu em Atlas, o escuro do vão em Nemeia. | Segrega o susto. As cabeças ficam livres para ser amáveis, e o adulto continua vendo que a coisa é séria. |
| 6 | **O RECORTE — o que fica fora de quadro** | O corpo grande **entra e sai de quadro** (a cauda de Equidna, os anéis do Dragão, o corpo de Ladon na folhagem, o alto do portão de Cérbero). A criança nunca mede a criatura inteira. | É a mesma regra das cabeças não contáveis aplicada ao corpo: o que não se mede não se transforma em inventário. E mantém a escala sem esmagar a página. |

#### 🔴 1.2b Regra transversal de LUZ NO ROSTO (nova — adequação etária)

Vale para **todas as peças do livro, sem exceção e sem discussão de composição**:

> **Nenhum rosto de criatura aparece em contraluz, em silhueta ou em sombra que esconda os
> olhos.** O rosto nítido **sempre recebe a luz quente** da página (ocre `#C88A3D` / creme
> `#EDD9B4`). Se a composição exigir a criatura contra a fonte de luz, a composição muda —
> não o rosto.

Racional: rosto escuro com olhos ilegíveis é a gramática visual de "predador na sombra", e ela
desfaz sozinha as seis alavancas acima. Esta regra é o piso da inversão, não um ajuste de gosto.
Teste de reprovação: **os dois olhos da(s) cabeça(s) nítida(s) têm de ser legíveis a 30 cm de
distância, em impressão.**

### 1.3 O que a MOLDURA faz × o que a AQUARELA faz (hierarquia X5, aplicada à inversão)

A hierarquia herdada do livro 1 não muda uma vírgula; ela **ganha um trabalho novo — e o
trabalho é repartido em DUAS bandas ornamentais distintas**, que não se misturam.

- **A aquarela Mucha (rosto, olho, gesto, pelo, drapeado)** é o que diz *"isto é alguém"*.
  Ela carrega a **amabilidade**. É a única camada autorizada a produzir doçura, e produz por
  **transparência e borda molhada** — pelo macio, luz quente atravessando, sem contorno duro
  de cartoon.
- Consequência operacional: **a doçura nunca é um traço de desenho, é um tratamento de
  pintura.** Se o ilustrador tiver de "fazer o bicho mais fofo", a resposta certa é *mais
  aquarela, luz mais quente, postura mais baixa* — nunca *olho maior, cabeça maior*.

#### 🔴 1.3a AS DUAS BANDAS — a correção F1 do historiador de arte (A2)

O guia v1 mandava a multidão virar ornamento **na faixa ática**, e isso era um erro de história
da arte: a faixa geométrica ática é **não-figurativa**. Forma que derrete em ornamento é
**art nouveau**, não cerâmica grega. A correção separa duas bandas com gramáticas diferentes:

| | **BANDA A — faixa geométrica INTOCÁVEL** | **BANDA B — friso de animais orientalizante** |
|---|---|---|
| Repertório | meandro (chave grega), palmeta-e-gavinha, ziguezague, losango, dama | perfis de animais enfileirados **como módulo repetido**, sobre **campo denso de rosetas**, silhueta chapada |
| Gramática | **não-figurativa, modular, geométrica** | figurativa, mas **em ritmo**, nunca em inventário |
| O que pode entrar | **NADA de criatura. Nenhuma. Nenhuma metamorfose.** Nenhuma cauda vira palmeta, nenhuma cabeça vira gavinha | **É AQUI, E SÓ AQUI, que a multidão vira textura** — as serpentes do dorso de Cérbero, as cabeças de Ladon na folhagem |
| Referência CC0 verificada | **REF-09** (cratera de Hirschfeld, Met `248904`) + **REF-10** (Owen Jones, pranchas gregas) | **REF-06** (olpe coríntio, Met **`246565`**) + REF-07 (dinos coríntio, `256846`) + REF-08 (ânfora proto-ática, `248578`) |
| Onde vive | perímetro da página, bordas, filetes | banda própria, separada da Banda A por um filete liso |

> **Declaração obrigatória, para o registro:** **metamorfose forma↔ornamento é ART NOUVEAU e
> pertence ao ARCO MUCHA.** Não é gramática de vaso ático e nunca foi. Onde este livro faz uma
> forma virar ornamento, ela vira ornamento **no arco Mucha** — que é art nouveau por
> definição — ou entra no **friso orientalizante da Banda B** como perfil enfileirado.
> **A cauda-dragão da capa enrola NO ARCO. Nunca vira palmeta.** (Ver §6.)

**Terminologia corrigida:** onde este guia e os prompts falarem de "ovas-e-dardos"
(*egg-and-dart*), dizer **"repertório ornamental grego (incluindo arquitetônico)"** — o
ovas-e-dardos é ornamento de **arquitetura**, não de vaso, e chamá-lo de "ornamento de vaso"
era erro de rótulo.

### 1.4 O teste de aceitação da premissa (vale para toda criatura do livro)

Herdado do state (decisão 8) e generalizado. Mostrar a arte **sem texto** a um leitor de 4 anos.

**Duas perguntas, ambas obrigatórias. Reprovar em qualquer uma reprova a peça.**

**Pergunta 1 — *"o que é isso?"***
- resposta que nomeia **o animal ou a pessoa** ("cachorro", "leão", "moça", "cobra grande") → ✅
- resposta **"monstro"** → ❌ refazer (falhou a amabilidade)
- resposta **"fofinho" / "bichinho"** → ❌ refazer (virou desenho animado)

**🔴 Pergunta 2 — *"você ia querer ficar perto dele?"*** (nova — adequação etária, FATAL-2)
- resposta afirmativa ou curiosa → ✅
- **resposta negativa → ❌ REPROVADA, mesmo que a pergunta 1 tenha trazido o nome certo.**

Racional: "cachorro" resolve o reconhecimento e não resolve o **susto**. Uma criança pode
nomear corretamente um bicho de que ela tem medo. A premissa do livro é *gostar*, não
*identificar*.

#### 🔴 1.4a Protocolo do teste — vinculante

1. Pergunta **ABERTA**: *"o que é isso?"*. Nunca *"isso é um cachorro?"* — pergunta fechada
   entrega a resposta e invalida o teste.
2. **Sem o texto do livro.** Só a imagem.
3. **Sem nomear o animal antes**, em nenhum momento da conversa.
4. **Sem oferecer alternativas** ("é um cachorro ou um lobo?").
5. Só depois da resposta livre, a pergunta 2.
6. O veredito é registrado **verbatim** — a palavra que a criança disse — no `log-geracao.md`.

#### ⚠️ 1.4b A barra está REBAIXADA, e isso está por escrito (A3)

Não existe, hoje, criança nomeada, adulto aplicador nem local de registro para este teste.
Enquanto isso durar:

- vale um **PROXY DECLARADO**: o `mito-adequacao-etaria` aplica as duas perguntas como
  **avaliação especializada**, e o veredito entra no `log-geracao.md` **com essas palavras —
  "proxy, sem leitor real"**;
- **a capa NÃO é considerada validada.** Ela vai ao dono com a etiqueta
  **"aguardando teste com leitor real"**;
- ⚠️ **PENDÊNCIA PARA O DONO, a única desta fase que ninguém aqui resolve:** nomear a criança
  (e a idade), quem aplica e onde o veredito é gravado.

### 1.5 As três perguntas obrigatórias do handoff — respondidas

**(a) Cérbero fofo sem virar cartoon.** Seis alavancas, todas com fonte:
1. **Orelhas que baixam** (Horácio, *Odes* 2.13.34–35 — orelhas pretas que caem). É o sinal
   de docilidade mais legível que existe para 4 anos, **e é da fonte**. Alavanca principal.
2. **Sentado no portão** (Apolodoro 2.5.12) — cão grande esperando, não fera caçando.
3. **Ele reage e cede; não ataca** (na fonte quem começa é Héracles). Nunca em bote.
4. **A cauda-dragão leva todo o perigo** — é o único agente hostil da fonte; morde o braço de
   Héracles enquanto as cabeças ficam livres para ser legíveis.
5. **Escala, não careta** — assusta o tamanho do cão e a altura do portão. Dentes à mostra: ❌.
6. **Linha vermelha anti-cartoon:** ❌ olhos de filhote, ❌ proporções de mascote, ❌ língua de
   fora cômica, ❌ sorriso, ❌ coleira, ❌ focinheira, ❌ chamas, ❌ baba, ❌ olhos vermelhos.

---

**(b) Cabeças NÃO CONTÁVEIS — a fórmula do livro, REESCRITA EM REDAÇÃO POSITIVA (A8).**

Regra dura do state (D2), válida para **Cérbero, Hidra e Ladon** (e estendida por coerência a
**Tifão**, que tem o mesmo problema em 824–825). Dois precedentes a criaram: `10b` v3 e v4 do
livro 1, reprovadas por entregar o Cem-Mãos com **braços contáveis**; e o **piloto 1 desta
fase**, que reprovou pelo item 11 (chegava-se a ~7 cabeças em 10 segundos).

> 🔴 **O QUE O PILOTO PROVOU, e que muda a redação inteira:** este gerador **obedece contagem
> positiva com teto** e **ignora negação de contabilidade**. "Que ninguém chegue a um número"
> é uma instrução que o modelo não sabe seguir — falhou 4/4 no livro 1 e falhou de novo aqui.
> **A fórmula deixa de ser escrita como negação e passa a ser escrita como descrição do que
> pintar.** Descrever a camada 2 como "menos detalhada" é o erro específico que produziu
> anatomia contável no piloto — **proibido**.

#### FÓRMULA DAS TRÊS CAMADAS — v2, positiva

**Camada 1 — número explícito e baixo, afirmado.**
Redação de prompt (verbatim, colar):
```
EXACTLY THREE sharp heads in front, side by side and overlapping, each with a fully readable
and likeable face. Three. Not four, not five.
```
✅ Comprovadamente obedecido no piloto: vieram exatamente três, sem a fileira equidistante.
(Na capa, **duas** — ver §6.)

**Camada 2 — descrita PELA TÉCNICA, nunca pela ausência.**
Redação de prompt (verbatim, colar):
```
BEHIND them, ONE SINGLE CONTINUOUS MASS of wet-on-wet watercolour fur: one silhouette, one
body of paint, with soft bleeding edges everywhere and NO outline anywhere. The mass
DISSOLVES INTO THE LIGHT — into warm cream and ochre — never into black, never into a dark
gap. There are NO EYES in this mass at all.
```
Três exigências que a redação carrega e que a validação confere:
- **massa contínua molhado-sobre-molhado**, uma só silhueta, **sem contorno**;
- **dissolve PARA A LUZ** (creme `#EDD9B4` / ocre `#C88A3D`), **nunca para o preto** e nunca
  separada da vizinha por um vão escuro de fundo;
- 🔴 **NENHUM OLHO na camada dissolvida.** (A redação v1 dizia "nenhuma tem os dois olhos
  visíveis" — o que autorizava *um* olho. Um olho na sombra é exatamente a leitura de ameaça
  que a adequação etária reprova. **Zero olhos.**)
- ⛔ **PROIBIDO escrever "menos detalhada", "less defined", "blurred", "in the background".**
  Foi assim que a camada 2 virou anatomia contável no piloto.

##### 🔴 EMENDA v2.1 (Fase 3b, `curadoria-3b.md`) — a camada 2 vira BLOCO IMPERATIVO PRÓPRIO

**O que a rodada 1 do `sheet-cerbero` provou:** descrita **dentro do parágrafo** de
`[CHARACTERS]`, a camada 2 falhou **duas vezes, de dois modos opostos** — no piloto virou
anatomia contável; na rodada 1 **desapareceu** (três cabeças limpas e nada atrás). O gerador leu
`one single continuous mass … no outline … dissolves into the light` como **tratamento de borda
do que ele já tinha desenhado**, não como **volume a mais**. **Ele pinta técnica; volume só se
você mandar PINTAR e disser QUANTO.**

Isto contradiz o texto aprovado do cap. 7 (*"mais cabeças do que se consegue contar — algumas
bem na frente, nítidas, e outras que se perdem no pelo e na sombra"*) e o box (*"é por isso que,
neste livro, ninguém conta"*). **A camada 2 não é enfeite: é a metade da imagem que sustenta a
página.**

> **A camada 2 deixa de morar no `[CHARACTERS]` e passa a ser bloco próprio**, com cabeçalho e
> verbo de desenho, colado **depois** de `[SHEET LAYOUT]` / `[SCENE]` e **antes** de
> `[ORNAMENTAL BAND]` — a mesma receita que fez a camada 3 passar de 0/1 para 2/2.

**Redação verbatim (versão cão; ver a tabela de substantivos abaixo):**
```
[THE FUR BEHIND — MANDATORY, PAINT THIS]
PAINT A GREAT RUFF behind the three sharp heads: one single continuous body of wet-on-wet
watercolour fur, as WIDE as two more dogs and as TALL as the sharp heads themselves, filling
the whole space behind them so that no empty paper and no dark gap is ever seen between one
head and the next. OUT OF THIS RUFF, PAINT FOUR OR FIVE SOFT ROUNDED SWELLINGS of fur that
rise and sink — the shape of a shoulder, the shape of a muzzle turning away — and let EACH ONE
BLEED BACK INTO THE RUFF before it is finished: no outline, no ear, no eye, no nose, no face
on any of them. Paint the ruff in warm cream #EDD9B4 and ochre #C88A3D, dissolving INTO THE
LIGHT, never into black. THE RUFF MUST COVER MORE OF THE PICTURE THAN THE THREE SHARP HEADS
TOGETHER.
```

**As três alavancas que este bloco usa, e por quê:** (1) **bloco imperativo com verbo de
desenho** — provado 2/2 na banda ornamental; (2) **contagem positiva com teto**, aqui aplicada
aos **inchaços** e não a cabeças — provado 3/3 na camada 1, e inchaço não vira inventário;
(3) **critério de ÁREA verificável a olho nu** (`MUST COVER MORE … THAN THE THREE SHARP HEADS
TOGETHER`) — "tem camada 2?" deixa de ser opinião na validação.

**A palavra concreta muda por criatura; o esqueleto do bloco, nunca:**

| Criatura | Substantivo a pintar |
|---|---|
| Cérbero (sheet, capa, p. 33, 8A) | **`RUFF`** — a gola de pelo larga atrás das cabeças |
| Tifão | **`THICKET` / `NEST OF COILS`** — o emaranhado de anéis nascendo dos ombros |
| Ladon | **`FOLIAGE`** — a folhagem da macieira já é o corpo (variante mais fácil) |

⛔ As proibições de vocabulário do bloco anterior continuam valendo integralmente.

#### 🆕 "CAMADA 2 AUSENTE" é falha nomeada — e NÃO arma o Plano B

O gatilho do Plano B dispara com **duas reprovas pelo item 11, por EXCESSO de contagem**. Uma
peça que entrega o número pedido na camada 1 e **não entrega camada 2 nenhuma** reprova por
**camada 2 ausente**, volta a rodada com o bloco acima, e **essa rodada não conta para o
gatilho**. Rebaixar essa peça ao desenho de Ladon seria trocar três rostos bons por um para
consertar um erro de redação. A distinção é registrada no `log-geracao.md`.

#### 🆕 Folha de modelo: todas as vistas com o MESMO número de cabeças

`sheet-cerbero-B` foi reprovada por entregar **3 / 2 / 4** cabeças nas três vistas (e uma quarta
face nítida, item do `[MUST NOT APPEAR]`). Uma folha que não sabe quantas cabeças o animal tem
não ancora capa nem cena. **Item de checklist de toda folha poli-cefálica**, ao lado do que S1 já
exigia de Equidna. Redação a acrescentar ao `[SHEET LAYOUT]`: `every study on this sheet shows
the same animal with the same three sharp heads and the same ruff behind them.`

##### 🔴 EMENDA v2.2 (Fase 3b, 2ª sessão, `curadoria-3b.md` §9) — o objeto de `PAINT` tem de existir no repertório de desenho

**O que a rodada 2 (`sheet-cerbero-C-r2`) provou:** com o bloco v2.1 a **gola apareceu** —
massa creme/ocre contínua, molhada, sem contorno, zero olho, sem vão escuro, critério de área
cumprido. **Mas veio LISA — uma juba de leão — e um adulto conta TRÊS em menos de 10 s.**
Os `FOUR OR FIVE SOFT ROUNDED SWELLINGS` não se materializaram: o modelo aplicou "inchaço"
como **textura do que já havia desenhado**, exatamente o que fizera com `mass`.

> **A regra geral, mais dura que "bloco imperativo": o objeto de `PAINT` tem de ser UMA COISA
> QUE EXISTE NO REPERTÓRIO DE DESENHO DO MODELO.** `RUFF` é (gola de pelo: um ilustrador
> desenha sem pensar). `SWELLING` não é — é topologia. **Palavra que não nomeia coisa
> desenhável é rebaixada a acabamento.**

**A palavra da camada 2 deixa de ser um volume e passa a ser UMA CABEÇA DE COSTAS —
`CROWN AND NAPE`.** Cabeça vista por trás sugere "mais cão" (uma nuca com orelha **é** mais cão)
e **não tem rosto por construção**, não por proibição. Evidência: o gerador fez isso sozinho em
`sheet-cerbero-B` (orelhas a mais atrás das cabeças), sem que ninguém pedisse.

🔴 **Revogação explícita:** `no ear` **SAI** do bloco da camada 2 — a orelha é o dispositivo,
não o defeito. Continuam proibidos **olho, nariz, boca, focinho, rosto e contorno fechado**;
a régua de adequação etária fica intacta (nada olha para a criança).

**Redação verbatim v2.2 — substitui integralmente o `[THE FUR BEHIND]` da v2.1:**
```
[MORE DOG BEHIND - MANDATORY, PAINT THIS]
PAINT A GREAT RUFF behind the three sharp heads: one single continuous body of wet-on-wet
watercolour fur, as WIDE as two more dogs and as TALL as the sharp heads themselves, filling
the whole space behind them so that no empty paper and no dark gap is ever seen between one
head and the next.
NOW PAINT, RISING OUT OF THAT RUFF, FOUR OR FIVE MORE HEADS SEEN FROM BEHIND - only the CROWN
AND THE NAPE of each one, every one of them TURNED AWAY from the viewer, so that not one face
is ever shown. Give SOME of them a single soft ear and give OTHERS no ear at all; set every
one at a DIFFERENT HEIGHT and at a DIFFERENT ANGLE, none of them level with another, none of
them evenly spaced. Let EACH ONE SINK BACK INTO THE RUFF before its neck is finished, with a
soft bleeding edge and NO closed outline: no eye, no nose, no mouth, no muzzle, no face on any
of them, and none of them is ever whole.
Paint all of it in warm cream #EDD9B4 and ochre #C88A3D, dissolving INTO THE LIGHT, never into
black. THE RUFF AND THE TURNED-AWAY HEADS TOGETHER MUST COVER MORE OF THE PICTURE THAN THE
THREE SHARP HEADS.
```

**Tabela de substantivos, atualizada — a gola FICA e ganha a segunda camada:**

| Criatura | Camada 2 = a massa | Camada 2 = "mais, de costas" |
|---|---|---|
| Cérbero (sheet r3, capa, p. 33, 8A/8B) | `RUFF` | `CROWNS AND NAPES TURNED AWAY` |
| Tifão | `THICKET / NEST OF COILS` | `SHOULDERS AND BACKS OF COILS TURNING AWAY` — dorsos mergulhando, nenhuma boca |
| Ladon | `FOLIAGE` | `COILS SLIDING BEHIND THE LEAVES` — uma cabeça nítida (é o Plano B) |

**Alavanca de amabilidade a reforçar junto (§1.5a-1):** `on EVERY study the black ears of the
three sharp heads HANG DOWN, heavy and soft, folded against the cheek; no pricked ear and no
pointed ear on any of the three sharp heads.` — na `C-r2` só o estudo 3 tinha a orelha caída;
os outros dois vieram com orelha ereta, que lê "alerta" e não "dócil".

##### 🔴 GATILHO DO PLANO B — armado para a rodada 3 do `sheet-cerbero`

> A rodada 2 **não** armou o gatilho por excesso de contagem, mas **falhou o item 11 pela
> segunda vez, por gola lisa**. **Se a rodada 3 entregar de novo uma camada 2 em que um adulto
> chega a um número em 10 s, o Plano B é acionado NA HORA, sem quarta rodada e sem nova
> curadoria:** `sheet-cerbero` é rebaixada ao desenho de Ladon (uma cabeça nítida, o resto
> dissolvido) e a folha vai ao `gate.md` com as três candidatas.

**Camada 3 — BLOCO IMPERATIVO SEPARADO no prompt.**
No piloto ela foi **ignorada por completo** por estar diluída como terceiro item de uma lista.
Passa a ser um bloco próprio, com cabeçalho próprio, colado **depois** de `[SCENE]`:
```
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band, apart from the geometric border: an ORIENTALIZING ANIMAL FRIEZE
in the Corinthian manner — repeated animal profiles in flat silhouette, all walking the same
way, over a dense field of rosettes. This is where the many become texture. Ornament, never
anatomy.
```
Referência anexável: **REF-06, olpe coríntio, Met `246565`** (§9). É esta banda — e não a
faixa geométrica — que absorve a multidão (§1.3a).

#### Teste de reprovação, mecânico (inalterado)
Se um adulto conseguir chegar a um número — qualquer número — olhando a imagem por 10
segundos, **reprovada**. Fileira de cabeças enfileiradas, separadas e equidistantes,
**reprovada**.

#### 🔴 PLANO B, com gatilho declarado
> **Se uma peça poli-cefálica reprovar DUAS vezes por contagem, adota-se o desenho de Ladon:
> UMA cabeça nítida e todo o resto na folhagem / no pelo / no friso.**
> É a variante mais fácil da fórmula, já está no guia (§3.5) e não precisa de decisão nova.
> O rebaixamento entra no `log-geracao.md` nomeando a peça e a rodada. O teto de rodadas
> continua **3**.

**Texto casado:** o miolo nunca diz um número ("as bocas", "mais cabeças do que se consegue
contar"). Arte e texto contam a mesma coisa.

---

**(c) Equidna com dignidade materna, sem sensualizar.** A descrição mais delicada do livro.
O método é **subtrair o vocabulário da pose e devolver o vocabulário do retrato**:
- **Enquadramento serial fixo:** plano médio ou americano, **à altura dos olhos da criança**,
  câmera neutra — nunca contra-plongée que olha de baixo, nunca plongée que a diminui.
- **O corpo não é o assunto; a porta é.** Ela está sempre **na boca da caverna, guardando**
  (é fato de fonte, *Teog.* 304). Postura de guarda: peso firme, ombros retos, olhar para
  fora e para a frente.
- **Torso coberto** por veste simples de tecido caído, sem cintura marcada; **a junção
  corpo-serpente nunca é o assunto** e fica coberta pela veste ou pela sombra da caverna
  (⚠️ esta é a decisão que o dossiê do cap. 1 §2.4 devolveu à Fase 3a — **decidida aqui:
  cobrir sempre, em todas as aparições**).
- **Cabelo recolhido**, não esvoaçante ao vento.
- **"Faces belas" (298–299) é traduzido como beleza de RETRATO**, não de aparição: rosto
  bonito, calmo, sem adorno, sem maquiagem, sem pose.
- **"Olhos vivos" (glancing eyes) é traduzido como olhar atento e presente** — não sedução,
  não vigilância ameaçadora.
- 🔴 **NOVO — a direção do corpo-serpente (adequação etária):** o corpo de serpente fica
  **AO LADO E ATRÁS dela, indo PARA DENTRO da caverna**. Ele **nunca avança para o leitor** e
  **nunca cruza a borda inferior do quadro**. Serpente que vem na direção de quem olha é a
  única leitura de bote que sobrou depois de todas as outras proibições.
- 🔴 **NOVO — o desenho das manchas:** manchas **grandes, arredondadas e macias**.
  **PROIBIDO o padrão de losango dorsal** — o losango em cadeia nas costas é o desenho
  codificado de "cobra que morde" (víbora), e uma criança de 4 anos lê o padrão antes de ler o
  rosto. `[MUST NOT APPEAR]`: `no diamond pattern, no zigzag band along the back`.
- **Lista negativa dura, executável (dossiê cap. 1 §2.3, adotada verbatim):**
  ❌ decote · ❌ cintura marcada · ❌ quadril evidenciado · ❌ boca entreaberta · ❌ olhar de
  canto · ❌ pose sinuosa "de sereia" · ❌ nudez parcial · ❌ drapeado colado ao corpo ·
  ❌ presas, língua bífida, olhos sem pupila, boca em bote, sangue · ❌ asas, coroa, chifres,
  múltiplas cabeças, veneno visível · ❌ ombros caídos, mão estendida para a saída, olhar
  para trás ("mãe abandonada") · ❌ tristeza no rosto (a regra-de-luto raciona a dor a 2
  frases no livro inteiro, e nenhuma delas é uma imagem).
- ⚠️ **Chamada do diretor, saída dos pilotos:** nas duas gerações a veste deixou **ombros e
  braços nus**. Não é item da lista negativa e **não reprova**, mas a ficha canônica §3.1
  passa a pedir a veste **cobrindo os ombros**.
- **A palavra "ninfa" da fonte é categoria de criatura, não erotismo.** Está registrado no
  dossiê de Tifão §2.2 e reafirmado aqui **como regra de arte**: a palavra `nymph` **não
  entra no prompt**. O bloco canônico de Equidna (§3.1) já está redigido sem ela.
- ✅ **Verificado empiricamente (A10):** a régua D6 passou **item a item nas duas gerações do
  piloto 2**, e o Gemini não recusou nada. **A ficha mais delicada do livro é gerável.**

---

### 🔴 1.5d ESCOPO DA DIREÇÃO DO DONO NOS CHARACTER SHEETS (Fase 3b, 2ª sessão)

`DIRECAO-DO-DONO.md` vence este guia em conflito de **tratamento**. Mas a direção do dono foi
dada sobre **uma cena** (a caverna). Um character sheet **não é cena**: é referência de atributo
sobre papel liso, com luz plana. A regra abaixo é vinculante para os 4 sheets restantes.

> **CARREGA para o sheet — é tratamento e é ficha:**
> 1. **Aquarela molhada de verdade** — lavagens transparentes que sangram uma na outra,
>    granulação do papel visível, bordas molhadas. **Nunca preenchimento chapado.**
> 2. **A cor local da criatura**, saturada e quente, com **hex declarado na ficha**. Pele e pelo
>    **nunca** saem cinza-bege por omissão — a folha ancora a cor de todas as páginas (foi o
>    cinza-bege de `sheet-equidna-B` que reapareceu em `01-A`/`01-B`).
> 3. Moldura leve (meandro + palmetas) e friso em banda própria, separada por filete.
>
> **NÃO CARREGA — é cena, e o sheet não tem cena:**
> 4. **A paleta fria da caverna** (azul-petróleo, verdes-cinza) é a luz **daquele lugar**.
>    O `[SHEET LAYOUT]` fica como está: **fundo de papel quente liso `#F6EFE2`, luz plana, sem
>    sombra dramática, sem painel de cena, sem ambiente.**
> 5. Feixe de luz diagonal, atmosfera e profundidade: nada disso entra na folha.
>
> **Colisão resolvida:** se a cor escolhida contra o papel quente não ler contra a caverna fria,
> **quem manda é a página**. Por isso a folha traz um estudo pequeno da criatura sob a luz fria
> da caverna, no canto, **como amostra de cor** — um retângulo de amostra, **não um painel de
> cena** (painel de cena foi o que reprovou o layout de `sheet-equidna-A`).

---

### 🔴 1.5e O NÃO-CONTÁVEL SAI DO ORNAMENTO, NÃO DA ANATOMIA (v2.3 — Fase 3b, 3ª sessão)

**A regra mais cara do livro: cinco candidatas de `sheet-cerbero` e três rodadas.** Ela substitui
a estratégia das emendas v2.1 e v2.2 para o **item 11 (não-contável)**. Os blocos daquelas
emendas continuam válidos como **método de redação** (bloco imperativo, verbo `PAINT`,
quantidade positiva, critério de área) — o que muda é **o que se manda pintar**.

#### O histórico, que é a prova

| Rodada | Substantivo | O que aconteceu | Por quê |
|---|---|---|---|
| piloto 1 | `MASS` | virou anatomia contável | substantivo abstrato → o modelo o rebaixa a acabamento |
| r1 | `MASS` dentro de parágrafo | camada 2 **ausente** | idem |
| r2 | `RUFF` + `SWELLING` | gola existiu, **lisa**; conta-se 3 | `SWELLING` é topologia, não coisa desenhável |
| r3 | `RUFF` + `CROWN AND NAPE` | nucas existiram e **conta-se 7** | desenhável ⇒ **desenhada fechada** ⇒ contável |
| **Plano B** | **ornamento** | ✅ **não-contável entregue** | ornamento é **aberto por construção** |

#### A regra

> **Este gerador desenha TUDO FECHADO.** Toda coisa que ele sabe desenhar, ele termina: dá
> contorno, dá silhueta, separa do vizinho. Portanto **toda instrução de "muitos, sem contar"
> feita em vocabulário ANATÔMICO produz objetos discretos — e objeto discreto é exatamente o que
> se conta.** A saída não é achar um substantivo anatômico melhor. **Não existe.**
>
> **O não-contável só sai do ORNAMENTO**, que é a única classe de desenho que este gerador
> executa **aberta**: gavinha que vira gavinha, volta que nasce da volta anterior, forma sem
> começo nem fim. **Peça a criatura repetida COMO MOTIVO ORNAMENTAL dentro da massa, não como
> corpo atrás dela.**
>
> **A fórmula, que `sheet-cerbero-E-planoB` provou:**
> **UMA** cabeça nítida, amável, aquarelada, na frente — **+** a massa (gola / emaranhado /
> folhagem) pintada como **scrollwork chapado** em que **perfis estilizados da própria criatura**
> — *só o contorno externo: focinho, testa, orelha* — **nascem das voltas e voltam a se dissolver
> nelas**, sem olho, sem pupila, sem boca, **sem contorno fechado**, cada um correndo para dentro
> do seguinte, `so that where one ends and the next begins can never be told`.
>
> **Continua valendo integralmente a régua de adequação etária:** nada atrás da cabeça nítida tem
> olho, pupila, boca ou focinho aberto. **Nada olha para a criança.**

#### Consequências imediatas

1. 🔴 **O "Plano B" deixa de se chamar rebaixamento e vira a FÓRMULA PADRÃO das peças
   poli-cefálicas deste livro.** O §1.5b e o gatilho do §0.7 dos pacotes ficam como histórico;
   nenhuma peça nova gasta rodadas com `SWELLING` ou `CROWN AND NAPE`.
2. **Não há contradição com o texto.** O cap. 7 (*"algumas bem na frente, nítidas, e outras que
   se perdem no pelo e na sombra… ninguém conta"*) é **cumprido literalmente** pela fórmula: a
   nítida na frente, os perfis perdidos no pelo. **Nenhuma emenda editorial é necessária, e a
   hipótese está encerrada** (`curadoria-3b.md` §14.2).
3. **O substantivo por criatura:**

| Criatura | Massa (aberta) | O motivo repetido dentro dela |
|---|---|---|
| **Cérbero** (sheet, capa, p. 33, 8A/8B) | `RUFF` de scrollwork | `STYLISED DOG PROFILES - muzzle, brow and ear only` |
| **Tifão** | `THICKET OF COILS` de scrollwork | `STYLISED SERPENT COILS AND SNAKE BROWS growing out of the curls` — nenhuma boca, nenhuma língua |
| **Ladon** | `FOLIAGE` | `STYLISED COILS SLIDING BEHIND THE LEAVES` — já era esta fórmula desde §3.5 |

#### 🆕 A linha de fechamento de TODO character sheet ganha duas cláusulas

Descoberta na mesma sessão: `no labels, no annotations` **não segura** a legenda numerada — o
gerador entregou **numerais circulados ①–⑤**. E paisagem reaparece **dentro da cercadura**,
onde o `[SHEET LAYOUT]` não estava olhando.

```
NO NUMBERS OF ANY KIND, no digits, no circled numerals, no figure numbers, no captions,
no labels, no annotations, no arrows, no watermark, anywhere on the sheet.
NO landscape, NO sea, NO sky, NO scenery anywhere on the sheet, not even as a small panel
inside the border: the ground behind every study is flat warm paper #F6EFE2, flat light.
```

**Obrigatórias nos 3 sheets restantes e em toda regeração de sheet.** Verificadas em C3 e §1.5d.

---

## 2. As 9 decisões de arte fixadas — incorporadas como regras duras

Vêm de `producao/state/grega-equidna.json` §`decisoes_de_arte_fixadas`. **Não são reabertas
nem interpretadas neste guia.** Aqui elas viram regra executável e ganham o teste que as
verifica na validação.

| # | Decisão fixada (gate) | Regra dura neste guia | Teste de reprovação |
|---|---|---|---|
| **D1** | Full-bleed do cap. 6 = leão **VIVO** no capim curto; caverna de duas bocas vira vinheta; pele vestida é **obrigatória** com espaço reservado no `miolo.typ` | A página inteira do cap. 6 é o leão vivo olhando a estrada. As duas vinhetas (caverna / pele) são peças separadas e **ambas obrigatórias** | Leão morto, ferido, carregado ou ausente da full-bleed → reprovada. Vinheta da pele faltando → o capítulo não fecha |
| **D2** | **Cabeças NÃO CONTÁVEIS**: Cérbero, Hidra, Ladon (precedente Cem-Mãos reprovado no livro 1) | Fórmula das três camadas **v2, positiva**, §1.5(b). Estendida a **Tifão** por coerência de fórmula. Plano B com gatilho de 2 reprovas | Qualquer número atingível em 10 s → reprovada |
| **D3** | Pele do Leão como **manto/silhueta, NUNCA rosto-sobre-rosto** | A cabeça do leão jamais sobre a cabeça de Héracles. A pele cai do ombro ao chão (Diodoro 4.11.4: cobre o corpo inteiro). ⚠️ A fórmula "escalpo como elmo" é de **outro leão** (Apolod. 2.4.10) e está proibida no livro | Cabeça do leão como capuz/elmo → reprovada |
| **D4** | Atlas segura uma **ESFERA celeste**, nunca mapa-múndi | Esfera estrelada, sem continentes, sem meridianos de globo terrestre, sem cartografia | Qualquer continente visível → reprovada (anacronismo) |
| **D5** | As **DUAS cavernas** precisam ser visualmente distintas | **Equidna:** vertical, funda, sob pedra oca, **uma boca só**, lê-se como **descida**; luz = um traço de manhã cortando o chão; casa boa. **Nemeia:** horizontal, rasa, **passante, duas bocas na mesma imagem**, lê-se como **atravessar**; luz alta e seca. Rocha, cor, ângulo de câmera e formato do vão divergem de propósito | Se um leitor de 4 anos puder achar que é a mesma casa → reprovada |
| **D6** | **Equidna:** dignidade materna, sem sensualizar | §1.5(c) integral + bloco canônico §3.1 | Qualquer item da lista negativa presente → reprovada, sem discussão de mérito |
| **D7** | **Premissa NOVA:** as criaturas são protagonistas, rosto legível e amável na primeira olhada | §1.2 (seis alavancas) + §1.2b (luz no rosto) + §1.4 (as **duas** perguntas) | "monstro" ou "fofinho" → refazer · "não ia querer ficar perto" → refazer |
| **D8** | **Teste do cap. 7:** o leitor de 4 anos deve dizer "cachorro" | Prova de leitura obrigatória, sem texto, protocolo §1.4a, antes de a página ir à diagramação | "monstro" ❌ · "fofinho" ❌ · negativa na pergunta 2 ❌ → refazer |
| **D9** | **Última página = a caverna aberta com Equidna, no enquadramento do cap. 1** (contrato feito com a criança no cap. 3) | **Rima visual dura, agora COM MECANISMO** — ver §2.1 abaixo | Ver §2.1 |

### 🔴 2.1 D9 — a regra fica, e ganha o mecanismo que faltava (A9)

**O que o piloto 2 provou:** prompt idêntico + conversa nova = **duas mulheres diferentes**
(idade ~25 × ~33; caverna azul-petróleo × ocre quente; o feixe de luz da manhã presente numa e
ausente na outra; plano médio × quase inteiro). O que se manteve foi a **família visual**,
nunca a **identidade**. Sem seed exposto e com "Refazer" provadamente não regenerando, **não
existe caminho por prompt.**

> **D9 FICA como está escrita** — *mesmo enquadramento, mesma caverna, o mesmo rosto sem uma
> ruga a mais* — **e passa a ser cumprida por MECANISMO, não por repetição de prompt:**
>
> **A p. 40 NÃO é gerada do zero. Ela é gerada ANEXANDO A P. 10 JÁ APROVADA como imagem de
> referência**, na conversa da p. 40, com a instrução de manter rosto, idade, paleta e
> enquadramento e alterar **uma coisa só** (na p. 10 há o mapa de portas na faixa alta; na
> p. 40 não há).

Isto é exatamente a receita de consistência que o guia do livro 1 sempre declarou
(**sheet aprovado + descrição verbatim + referência anexada**) e que o livro 1 **nunca chegou
a executar** — as 21 imagens saíram sem anexo nenhum. Agora há motivo e há material.

**Ordem obrigatória:** `sheet-equidna` aprovada → p. 10 gerada e aprovada → **p. 40 gerada com
a p. 10 anexada**, na mesma sessão.

#### Fallback declarado, com gatilho
> **Se o anexo falhar em DUAS tentativas**, D9 é rebaixada, **por escrito no
> `log-geracao.md`**, de *"o mesmo rosto sem uma ruga a mais"* para
> **"o mesmo enquadramento, a mesma idade aparente e a mesma paleta de caverna"**.
> Isso ainda honra o contrato que o cap. 3 faz com a criança — que ela **reconheça** a caverna
> e a mãe na última página — e o texto sustenta o resto.
> **O que não se admite é descobrir isso na página 40.** Por isso a p. 10 e a p. 40 são P1 na
> ordem de produção (§5.3).

#### 🔴 D9-A — REGRA ANTI-SACRIFÍCIO (Fase 3b, 2ª sessão; obrigatória em TODA peça com anexo)

**O risco, medido no teste da conversa `e550a7156935215a`:** o mecanismo da D9 preserva rosto,
idade, luz, ângulo e paleta com **delta praticamente nulo** — mas **quando a mudança pedida
colide com a anatomia do personagem, o gerador sacrifica o personagem e declara que fez isso.**
Verbatim: *"there is an inherent contradiction … I have focused on the placement constraints."*
Resultado: Equidna **de pernas humanas e sandálias**. Repetir a ficha junto do bloco de mudança
é necessário e **não basta** — a ficha não diz **quem ganha** no empate, e ele já provou que
escolhe a composição. Por isso: **precedência declarada + válvula de escape**.

Todo prompt com imagem anexada abre com estes três blocos, nesta ordem, antes de qualquer outro:
```
[WHO SHE IS - UNCHANGED. THIS OUTRANKS EVERYTHING BELOW]
<ficha canônica §3.x colada VERBATIM, em inglês>
She is STILL half woman and half serpent: NO human legs, NO feet, NO knees, NO sandals.
Everything in the attached picture stays exactly as it is - the same face, the same age, the
same light, the same framing, the same palette, the same border.

[THE ONE CHANGE]
<bloco imperativo da mudança, com verbo de desenho e critério de área>
This is the ONLY change. Nothing else in the picture changes.

[IF THEY DO NOT FIT]
If the change above cannot be painted without changing WHO SHE IS, then PAINT HER AS SHE IS
and paint the change only as far as it fits, and SAY SO IN YOUR ANSWER.
Never change her body to make the composition work.
```

**Três exigências de validação que vêm junto:**
1. **A ficha entra verbatim, nunca resumida.** O anexo carrega aparência; a ficha carrega o
   cânone. **Anexo não substitui ficha.**
2. **A lista negativa nomeia a anatomia em risco NAQUELA peça** — Equidna: pernas, pés, joelhos,
   sandálias · Cérbero: quarta face nítida, coleira · Tifão: rosto de homem inteiro. Genérico
   não segura.
3. 🔴 **LER O TEXTO DA RESPOSTA É PARTE DA CHECAGEM TÉCNICA.** Em 10 gerações o modelo declarou
   a desobediência **duas vezes por escrito**. **Resposta que declara ter sacrificado o
   personagem = REPROVA AUTOMÁTICA, sem olhar a imagem**; a conversa seguinte reforça o bloco
   `[WHO SHE IS]` em vez de repetir a mudança. Transcrever o verbatim no `log-geracao.md`.

> ### ✅ D9-A CONFIRMADA EMPIRICAMENTE (v2.3 — Fase 3b, 3ª sessão)
>
> **A regra deixa de ser proposta e passa a ser regra provada.** Prova, com controle:
>
> | | Sessão 2, geração 10 (**sem** D9-A) | Sessão 3, geração 16 (**com** D9-A) |
> |---|---|---|
> | Mecanismo | anexo + "uma mudança só" | idêntico |
> | Classe da mudança | esvaziar uma faixa do quadro | idêntica |
> | Texto da resposta | *"there is an inherent contradiction… I have focused on the placement constraints"* | **nenhum texto. Só a imagem.** |
> | Anatomia canônica | 🔴 **pernas humanas, pés e sandálias** | ✅ **zero pernas, zero pés, zero joelhos, zero sandálias** |
>
> **A única variável entre as duas é o bloco de precedência `[WHO SHE IS]` + a válvula de escape
> `[IF THEY DO NOT FIT]`.** A válvula é o achado fino: como este gerador **declara** o conflito
> em vez de escondê-lo, mandá-lo **declarar em vez de resolver** remove o incentivo de sacrificar
> o personagem. **A D9-A é obrigatória e não é negociável em nenhuma peça com anexo.**
>
> **E o delta que a D9 pedia foi medido e é nulo** (`curadoria-3b.md` §17): entre `01-C-dono` e
> a p. 40 não há delta perceptível em rosto, idade, penteado, veste, corpo-serpente, luz, paleta
> nem moldura. **É a mesma mulher, no mesmo lugar. O fallback do §2.1 continua desarmado.**

---

## 3. Descrições canônicas CONGELADAS

> **Regra de uso (herdada do livro 1 §4):** colar **verbatim**, em inglês, no bloco
> `[CHARACTERS]` de todo prompt em que o personagem apareça. **Nunca parafrasear.** Se a IA
> não acertar, muda-se a **estratégia de geração** (sheet anexada, mais variações, edição) —
> **não se afrouxa a descrição**.
>
> **Rótulo de autorização:** cada ficha traz, abaixo, o que é **[FONTE]** (está no texto
> antigo), o que é **[ICONOGRAFIA]** (o que a arte antiga de fato mostra) e o que é **[NOSSO]**
> (escolha da série, compatível com a fonte mas não afirmada por ela). O spec exige a
> distinção — ela é o que impede inventar atributo "porque fica bonito". Onde este bloco e um
> dossiê divergirem, **este bloco prevalece**.
>
> 🔴 **A linha [ICONOGRAFIA] é nova (A1, objeção F3 do historiador de arte).** Ela existe
> porque o guia v1 justificava escolhas de **adequação etária** como se fossem **fidelidade
> iconográfica** — e isso era falso. **Onde o livro diverge da arte antiga, a divergência é
> declarada como [NOSSO], com o motivo.** A página de Fontes herda as declarações.

### 3.1 Equidna — 🔴 a ficha mais delicada do livro

`character-sheets/sheet-equidna.png` · caps. **1, 8A (retrato de origem), 8-última página**

```
ECHIDNA: a goddess, neither human nor Olympian — a third kind of being. From the waist up a
woman with bright, attentive, living eyes and a calm beautiful face, rendered as a PORTRAIT,
frontal or three-quarter, art nouveau watercolour: serene, present, maternal, dignified. Her
face receives the warm light of the scene; it is NEVER in backlight or shadow. Her hair is
gathered and pinned, never loose in the wind. Her torso is COVERED by a simple loose-falling
tunic WITH SLEEVES THAT COVER THE SHOULDERS and NO marked waist, from the neck down to where
the human body meets the serpent; that junction is ALWAYS hidden by the falling cloth or by
the shadow of the cave, and is NEVER the subject of the image. From the waist down she is a
HUGE snake, great and awful, with SPECKLED skin — LARGE, ROUNDED, SOFT PATCHES, never
realistic reptile scales and NEVER a diamond or zigzag pattern along the back; the serpent skin
is WARM: clay ochre #C88A3D over clay cream #EDD9B4, never grey and never cold. The serpent
body lies BESIDE AND BEHIND her, going INWARD into the cave: it never comes toward the
viewer and never crosses the bottom edge of the frame, and it ENTERS AND LEAVES THE FRAME so
the whole length is never measurable. She is always framed at medium or American shot, AT A
CHILD'S EYE LEVEL, always inside her deep cave. Her posture is the posture of GUARDING:
weight settled, shoulders level, gaze out and forward. Age reads as a serene adult of no
determinable age — never a girl, never an old woman, and IDENTICAL in every appearance.
```
- **[FONTE]** (*Teog.* 295–305): deusa, terceira coisa · metade mulher de olhos vivos e faces
  belas · metade serpente enorme, "great and awful", de pele malhada · escala grande · sempre
  na caverna funda sob a pedra oca · **guardando** (304) · **não envelhece** (305).
- **[ICONOGRAFIA]:** a arte grega antiga **quase não representa Equidna**; não há tipo
  canônico estabelecido comparável ao de Cérbero ou da Esfinge. A figura híbrida
  mulher-serpente que existe no repertório é vizinha da **anguípede** e vem sempre em contexto
  de combate. **O livro não tem, aqui, uma iconografia da qual divergir** — a ficha é
  construção de retrato a partir do texto, e isso é declarado.
- **[NOSSO]:** idade lida como adulta serena · a leitura materna dos "olhos vivos" · beleza de
  retrato · o torso coberto e a junção escondida · o cabelo recolhido · a cor e o **formato
  arredondado** das manchas (dentro da paleta hex herdada) · a direção do corpo (para dentro
  da caverna) · o enquadramento serial à altura da criança.
- ✂️ **Cortado de arte, texto, glossário e aparato:** "comedora de carne crua" (*Teog.* 301).
- 🔴 **Lista negativa de §1.5(c) é parte da ficha.** Reprovação sem discussão de mérito.
- ⚠️ **D9 (§2.1):** o rosto do cap. 1 e o do fecho do cap. 8 são **o mesmo rosto, sem uma ruga
  a mais** — cumprido por **referência anexada**, não por repetição de prompt. O rosto do
  retrato de origem (8A) é **exatamente o mesmo**.

### 3.2 Cérbero — o rosto do livro

`character-sheets/sheet-cerbero.png` · caps. **7, 8A (mais novo), CAPA**

```
CERBERUS: an enormous dog sitting at the gate of the world below. EXACTLY THREE sharp heads
in front, side by side and overlapping, each with a fully readable and likeable dog face in
art nouveau watercolour, each face receiving the warm light. BEHIND them, ONE SINGLE
CONTINUOUS MASS of wet-on-wet watercolour fur: one silhouette, one body of paint, soft
bleeding edges everywhere, NO outline anywhere, NO eyes at all in that mass; it dissolves
INTO THE LIGHT, into warm cream and ochre, never into black and never into a dark gap. Along
his BACK, not his neck, run the heads of snakes of all sorts, resolved as ornamental rhythm.
His TAIL IS A DRAGON and it moves with a will of its own — the tail carries all the danger of
the picture, and it has no open mouth, no visible teeth and no eye turned to the viewer. His
ears are black and heavy and CAN FALL — a lowered ear is the sign of a dog that yields. His
voice is bronze: he does not bark, he resounds. He SITS. That is what he does.
```
- **[FONTE]:** cauda de dragão · serpentes **no dorso** (Apolod. 2.5.12) · voz de bronze
  (*Teog.* 311) · orelhas pretas que baixam (Hor. *Odes* 2.13.34–35) · sentado no portão ·
  reage e cede, não ataca · **nenhum número canônico no texto** (50 / 3 / 100 nas fontes).
- 🔴 **[ICONOGRAFIA]:** **a arte grega antiga é sistematicamente CONTÁVEL** — duas cabeças no
  repertório arcaico, três a partir do clássico. A hídria ceretana do Louvre E 701 (REF-01) e
  a ânfora do Pintor de Andokides, Louvre F 204 (REF-02), mostram exatamente isso. A ideia de
  "cabeças demais para contar" **não existe na imagem antiga**; ela existe só no eixo
  literário, onde o número varia entre fontes.
- 🔴 **[NOSSO], com o motivo declarado:** a não-contabilidade **não é fidelidade
  iconográfica — é ADEQUAÇÃO ETÁRIA**, e tem precedente próprio na coleção (o Cem-Mãos do
  livro 1 foi reprovado justamente por ficar contável). A regra D2 continua valendo por
  inteiro; o que se corrige aqui é o **rótulo**. Página de Fontes, verbatim:
  *"a arte grega desenhava Cérbero com duas ou três cabeças; aqui ele tem tantas que ninguém
  conta — foi escolha nossa, para este livro."*
- **[NOSSO]:** cor e textura do pelo · a leitura "cão grande esperando" · quais cabeças ficam
  nítidas.
- ✂️ **Cortado:** "come carne crua" (*Teog.* 311), mesma régua de Equidna.
- ❌ **Sem fonte, proibidos:** coleira · focinheira · olhos vermelhos · baba · chamas · língua
  de fora · sorriso · olhos de filhote · proporções de mascote · dentes à mostra.
- ⚠️ **Continuidade:** o Cérbero do cap. 8A é o **mesmo desenho, mais novo** — mesma fórmula
  de cabeças, mesma cauda. **Não redesenhar a criatura entre capítulos.**
- 📎 **Referências anexáveis:** REF-02 (ática, o desenho de cão) + REF-01 (o dorso e as
  serpentes como laçada ornamental) — nunca mais de duas por prompt.

### 3.3 Héracles — duas fichas, uma folha (antes da pele / com a pele)

`character-sheets/sheet-heracles.png` · caps. **4 (sem pele), 6-vinheta (com pele), 7 (com pele)**
*(no cap. 3 ele está fora de quadro por decisão de brief)*

```
HERACLES (before the lion skin — chapter 4 only): a strong grown man, bearded, art nouveau
watercolour, face three-quarter and fully expressive. He carries a club, but NEVER raised and
NEVER in use. He wears NO lion skin — the skin does not exist yet in this book. He arrives
without any justifying gesture: the narrator does not judge him, and neither does the drawing.
Palette: terracotta #C1440E and bronze #A9773F.
```
```
HERACLES (with the lion skin — chapters 6 and 7): the same man, the same face, now wearing
the LION SKIN AS A FULL-LENGTH MANTLE covering him from shoulder to foot. The skin is a
CLOAK AND A SILHOUETTE. The lion's head is NEVER worn over his head, never as a hood, never
as a helmet, never face-over-face. Effort, when the scene has any, shows in his SHOULDERS AND
HANDS, never in his face and never in the face of the creature he touches.
```
- **[FONTE]:** a clava (Apolod. 2.5.10) · a pele vestida cobrindo o corpo inteiro e indo junto
  para tudo o que vem depois (**Diodoro 4.11.4**, confirmado por Higino *Fáb.* 30) · sem armas
  no cap. 7 (Apolod. 2.5.12; Higino *Astr.* 2.24).
- **[ICONOGRAFIA]:** a arte antiga mostra Héracles **armado** — clava erguida, arco, às vezes
  couraça — e frequentemente **em combate** (é o que REF-01 e REF-02 trazem). Mostra também a
  pele com o **escalpo sobre a cabeça**, que é o tipo mais difundido.
- 🔴 **[NOSSO], com o motivo:** o livro **diverge das duas coisas por decisão de gate** — a
  arma sai de quadro no cap. 7 porque a fonte adotada (Apolodoro 2.5.12) diz explicitamente
  que ele foi sem armas, e o escalpo-elmo é proibido por D3. Declarado, não silenciado.
- **[NOSSO]:** rosto, porte, cor, barba.
- 🔴 **A pele é PROIBIDA no cap. 4** — ela nasce no cap. 6 e vesti-la antes fura a marca
  emocional do livro (spec + gate).
- 🔴 **D3:** nunca rosto-sobre-rosto. A fórmula "escalpo como elmo" é de outro leão
  (Apolod. 2.4.10) e está proibida no livro inteiro.
- ⚠️ **Tratamento de personagem:** ele "chega como o inverno chega". A imagem **não o julga e
  não o justifica** — nem herói glorificado, nem vilão. Sem pose triunfal, sem contraluz de
  vilão, sem troféu erguido.

### 3.4 Órtro

`character-sheets/sheet-ortro.png` · caps. **3, 8A**

```
ORTHUS: a large dog with TWO HEADS — exactly two, this is the one countable creature in the
book. Art nouveau watercolour, both faces readable and likeable to a four-year-old without
becoming a cartoon, both faces receiving the warm light. The two heads do DIFFERENT THINGS AT
THE SAME TIME: one lowered, counting the herd; the other raised, turned to the horizon of the
sea. He is a working dog on his shift, never a beast. He has NO serpent tail.
```
- **[FONTE]:** duas cabeças (Apolod. 2.5.10). **É o único número explícito da fonte no livro,
  e por isso a única criatura contável** — a regra D2 não se aplica a ele.
- **[ICONOGRAFIA]:** a cerâmica antiga desenha Órtro **com cauda de serpente**, com frequência.
  Ela tem, portanto, **lastro visual — exatamente o mesmo tipo de lastro que autoriza as
  serpentes no dorso de Cérbero e o *drákōn* de Ladon.**
- 🔴 **[NOSSO], com o motivo declarado — e a correção da régua dupla:** o guia v1 proibia a
  cauda de serpente alegando *"sem lastro textual antigo"*, e isso era **duas réguas para o
  mesmo caso**: iconografia sem texto vale para Cérbero e para Ladon e não valeria para Órtro.
  **A proibição FICA, com a razão certa:** a cauda de serpente **colide com D7** — Órtro é o
  "cão de trabalho" do livro, a criatura cuja legibilidade inteira depende de a criança dizer
  "cachorro" na primeira olhada, e uma cauda de serpente reintroduz a leitura de híbrido
  monstruoso na única página que é sobre rotina. **Proibida por adequação, não por falta de
  lastro.**
- **[NOSSO]:** porte, cor, pelo, e a leitura "duas cabeças fazendo coisas diferentes" — a
  fonte é **muda** sobre isso, e é justamente esse silêncio que autoriza a expressão.
- ⚠️ **Continuidade cap. 8A:** o mesmo cão, **uma cabeça dormindo**.
- 🎨 **Rima de família autorizada (declarada como [NOSSO]):** Órtro e Cérbero são irmãos
  inteiros na fonte (Teog. 306–312). A arte pode **rimar textura de pelo e desenho do olho**
  entre os dois — nunca o número de cabeças, nunca a cauda.

### 3.5 Ladon

`character-sheets/sheet-ladon.png` · caps. **4, 8A (ao fundo, em sombra)**

```
LADON: an immortal DRAKON — a monumental serpent, never a western winged lizard, never wings,
never legs. He lives INSIDE the apple tree, his long body entering and leaving the foliage
and the ornamental border so it can never be followed to its end. ONE HEAD is sharply in
focus, at the front, with a readable and LIKEABLE face that simply watches without reacting,
and that face receives the warm light. Every other head is not drawn as a head at all: the
many become ORNAMENT — palmette-like profiles repeated inside the foliage and inside the
separate animal frieze, flat and rhythmic, the way a Corinthian band repeats. He speaks with
many and divers sorts of voices at once, and the murmur reads as movement in the leaves. He
is IMMORTAL: he is never wounded, never bleeding, never fallen, never attacking.
```
- **[FONTE]** (Apolodoro 2.5.11): *drákōn* · **imortal** · **cem cabeças** · fala com muitas
  vozes diferentes (**o único da família que fala**) · filho de Tifão e Equidna · fica entre
  os hiperbóreos, aos pés de Atlas · três maçãs.
- 🔴 **[ICONOGRAFIA]:** **o guardião da macieira, na arte antiga, tem UMA cabeça só.** É uma
  serpente monumental enrolada na árvore, sem multiplicação. As "cem cabeças" existem **no
  texto**, não na imagem.
- 🔴 **[NOSSO], com o motivo declarado:** o livro **funde as duas autoridades** — desenha a
  uma cabeça nítida da iconografia **e** presta contas do "cem" do texto mandando a multidão
  para o ornamento. Nem uma coisa nem outra sozinha. Declarado na página de Fontes.
- ⚠️ **Isso faz de Ladon a variante mais fácil da fórmula** — e é por isso que ele é o
  **plano B** de toda peça poli-cefálica que reprovar duas vezes por contagem (§1.5b).
- **[NOSSO]:** que cabeça é a nítida · a cor · a leitura amável do rosto.
- ⚠️ **"Enrolado na árvore" é ICONOGRAFIA DECLARADA, não passagem.** Nem Apolodoro, nem
  Hesíodo, nem Apolônio dizem isso. **Liberado para a arte** — o livro herda a moldura de
  vaso ático, e a citação visual é coerente com a própria linguagem do livro. **Proibido no
  texto como "as fontes contam".**
- ⚠️ **Nome:** "Ladon" só existe na fonte **não adotada** (Apolônio 4.1396). Nota obrigatória
  na página de Fontes — não afeta a arte.
- 🔴 **A versão da morte por flechas não existe neste livro.** Nenhuma flecha, nenhuma ferida,
  nenhum dragão caído em nenhuma página.
- 🔴 **SEM REFERÊNCIA LICENCIADA — montagem declarada (§9.3).** Toda peça antiga boa do tema
  está no **British Museum (CC BY-NC-SA)** ou fotografada sob CC BY-SA. **Ladon é gerado por
  descrição verbatim + duas referências licenciadas de GRAMÁTICA ORNAMENTAL** (REF-01, a
  serpente resolvida como laçada; REF-06/REF-10, palmeta e gavinha), **não por uma referência
  da criatura**. Registrar no `log-geracao.md` como **montagem declarada**.

### 3.6 Tifão

`character-sheets/sheet-tifao.png` · cap. **8A**

```
TYPHON: a vast standing figure with strong hands and tireless planted feet. SERPENT HEADS
GROW FROM HIS SHOULDERS — from the shoulders, not from a neck, and they are not human. Dark
flickering tongues. EXACTLY THREE sharp heads in the foreground, overlapping, each face
receiving the warm light. BEHIND them, ONE SINGLE CONTINUOUS MASS of wet-on-wet watercolour,
one silhouette, soft bleeding edges, NO outline, NO eyes at all in that mass, dissolving INTO
THE LIGHT, into warm cream and ochre, never into black. ONE head, low, near the ground,
WHINES LIKE A PUPPY: neck curved down, small mouth slightly open, large gentle eyes, turned
TOWARD THE READER — it is the only head that looks at the child, and it looks gently. There
is a single WARM AMBER GLOW under the brow of ONE head only, and that head belongs to the
dissolved mass, never to the sharp ones; the glow is one soft area, never a pair of points.
He does not advance; he is standing. NO wings, NO serpent legs, NO human giant form.
```
- **[FONTE]** (*Teog.* 823–835): cabeças de serpente **nascendo dos ombros** · línguas escuras
  · **fogo sob as sobrancelhas** · vozes múltiplas, entre elas **o ganido de filhotes,
  "maravilhoso de ouvir" (833)** · mãos fortes, pés incansáveis.
- 🔴 **[ICONOGRAFIA]:** **nenhum grego desenhou esta forma.** A imagem antiga de Tifão é o
  **anguípede alado** — torso humanoide gigante, uma cabeça barbada, asas grandes de penas e
  duas pernas-de-serpente escamadas, em combate com Zeus armado do raio (hídria calcídica de
  Munique, inv. 596 — **REF-12**). É, ponto por ponto, **tudo o que esta ficha proíbe**.
- 🔴 **[NOSSO], com o motivo declarado:** a ficha segue **Teog. 823–835**, e a fonte-espinha do
  livro é Hesíodo. A escolha é defensável — **o silêncio não era.** Declarada na página de
  Fontes: *"os vasos gregos desenhavam Tifão com asas e pernas de cobra; aqui seguimos o poema
  de Hesíodo, que fala em cabeças nos ombros."*
- 🔴 **REF-12 é ESTUDO — NUNCA ANEXAR AO GERADOR** (§9.2). Se ela entrar na conversa, o Gemini
  devolve Tifão alado com pernas de cobra e a página está perdida.
- **[NOSSO]:** a tradução do **som** de filhote em **postura** de filhote — a fonte dá o som,
  a arte dá o pescoço curvo e o olho manso. É a chave da inversão neste capítulo.
- 🔴 **TETO DO FOGO — regra dura (adequação etária, FATAL-1).** "Fogo sob as sobrancelhas" é
  fonte, e por isso não é cortado; mas é **racionado**, e o racionamento é vinculante:
  1. **Brilho em NO MÁXIMO UMA cabeça.** Uma. Não "algumas", não "várias".
  2. **Essa cabeça pertence à camada DISSOLVIDA, nunca às nítidas.** O brilho nunca cai num
     rosto legível.
  3. **Âmbar quente da paleta (`#E8A317` / `#C88A3D`), NUNCA vermelho.** Vermelho sob a
     sobrancelha é olho de monstro, e o livro inteiro é construído contra essa leitura.
  4. 🔴 **JAMAIS um par de pontos.** Dois brilhos lado a lado leem como **um rosto olhando
     para fora do livro**, e é a única forma de susto que atravessa a distância de uma
     prateleira. **Uma área difusa, ímpar, assimétrica.**
  5. **Nenhum brilho perto da cabeça que ganie.** Aquele canto da página é o assunto emocional
     do capítulo e fica limpo.
- ❌ **Fora do canônico hesiódico:** asas · pernas-de-serpente · forma humanoide gigante.
- ❌ **Linhas vermelhas:** nada de Zeus em quadro · nada de raio · nada de combate · nada de
  fogo consumindo terra · nada de corpo ferido ("maimed wreck", 857) · nenhuma arma.
- **Etna:** ver §5.1 — a vinheta foi **decidida** nesta versão.

### 3.7 A Esfinge

`character-sheets/sheet-esfinge.png` · caps. **5, 8A (ao fundo, menor e menos definida)**

```
THE SPHINX: the face of a WOMAN, the breast, feet and tail of a LIONESS, and the WINGS OF A
BIRD, spread. She SITS on the CAPITAL OF A SHORT IONIC COLUMN standing beside a road, front
paws straight, body settled. Her face is the most expressive face in the book after Echidna's:
the face of someone who IS ASKING A QUESTION — curious, attentive, alert, frontal or
three-quarter, and it receives the warm light. NOT threatening, NOT seductive — the same rule
of dignity as Echidna. Art nouveau watercolour. Sunlight passes through the feathers of the
wings.
```
- **[FONTE]** (Apolodoro 3.5.8): rosto de mulher · peito, patas e cauda de leoa · **asas de
  ave** · **sentada** no alto · a estrada e Tebas · o enigma **aprendido com as Musas** (o que
  autoriza a leitura amável: a pergunta não é dela).
- 🔴 **[ICONOGRAFIA]:** na arte grega a esfinge **pousa sobre uma coluna ou um capitel jônico**
  — é o tipo do acrotério e da estela funerária (REF-03, Met `248501`, ática, ca. 530 a.C.). A
  "pedra alta" do guia v1 **não é o tipo antigo**. Ela é também, na cerâmica e no relevo,
  **sempre de perfil**, com **uma asa em foice** subindo acima da cabeça.
- 🔴 **[NOSSO] — duas divergências, ambas declaradas:**
  1. **Adotamos a COLUNA**, não a rocha. A iconografia venceu, e a coluna ainda é melhor para
     a alavanca 4 (escala em vez de careta): uma coluna dá altura sem dar penhasco.
  2. **A esfinge do livro é FRONTAL ou de três quartos, não de perfil** — porque a hierarquia
     X5 exige rosto legível com dois olhos, e um rosto de perfil não cumpre D7. Esta colisão
     está registrada em §8, item 7. **REF-04** (Met `254589`, cabeça de terracota **frontal**)
     é a peça que prova que o rosto frontal de esfinge grega existe e é o antídoto contra o
     gerador entregar perfil de vaso.
  3. **Asas ABERTAS**, não a asa única em foice — exigência da ficha, divergência declarada.
- **[NOSSO]:** a expressão de "quem está perguntando" · a cor · a luz atravessando as penas.
- 🔴 **As asas são OBRIGATÓRIAS** — é o que a separa da esfinge egípcia. A referência visual
  **não é Gizé**: é a esfinge de vaso ático e de estela funerária grega (REF-03/REF-04).
  ❌ Proibidos: touca *nemes* · barba postiça · deitada sem asas · areia · pirâmide.
- ⚠️ A mesma régua de não-sensualização de Equidna se aplica ao rosto.
- ⚠️ **Composição:** a beira do abismo **não é assunto** em página nenhuma (o destino dela é
  elidido; Apolodoro 3.5.8 vai só à página de Fontes). Nenhum osso, nenhum viajante caído,
  nenhuma sombra de ameaça no chão. **Ver também §5.1: a pedra fica FORA DE QUADRO.**

### 3.8 O Leão de Nemeia

`character-sheets/sheet-leao-nemeia.png` · caps. **6 (vivo + a pele), 8A (ao fundo)**

```
THE NEMEAN LION: a great lion, calm and present, lying in the short grass of the hills,
WATCHING THE ROAD. Art nouveau watercolour, at a child's eye level, his face receiving the
warm light, likeable at first glance WITHOUT becoming a mascot — no puppy eyes, no cute
proportions. The fact from the source is INVULNERABILITY, not ferocity: his hide must read as
STONE LEATHER, dense and closed, and that density is what the drawing has to say. NO roar, NO
bared teeth, NO crouch to spring, NO villain backlight.
```
- **[FONTE]** (Apolodoro 2.5.1): besta **invulnerável** (ἄτρωτον) · o vale de Nemeia · Hera o
  criou ali · o pedido é **a pele**.
- **[ICONOGRAFIA]:** o leão grego existe em abundância — **de perfil andante, juba incisa,
  calmo e sem rugido**, nos frisos coríntios (REF-06/REF-07). O que a arte antiga **não** dá é
  **leão deitado com rosto legível de frente**: essa parte é 100% Mucha/aquarela.
- 🔴 **[NOSSO], declarado:** o rosto frontal e a postura deitada não têm referência antiga
  possível. É construção da série, e está escrito.
- **[NOSSO]:** cor, juba, porte, e a leitura "couro de pedra".
- ⚠️ **A pele da vinheta 2 e da ficha de Héracles (§3.3) tem de sair DESTE sheet** — mesma
  cor, mesma textura, mesmo desenho de pelo. É a única continuidade de objeto do livro que
  atravessa dois capítulos.
- ❌ **Nenhum esfolamento em nenhuma peça.** ❌ Nenhum corpo do leão carregado. ❌ Nenhum
  catasterismo (descartado na Fase 1 — o Leão no céu não é consolo deste livro).

### 3.9 Personagens de aparição única — descrição canônica (sem sheet própria)

> Aparecem em **uma só ilustração**. A própria página aprovada vira a referência deles. A
> descrição continua **congelada e colada verbatim** (critério herdado do livro 1 §4.2).

**O Dragão da Cólquida** (cap. 2)
```
THE DRAGON OF COLCHIS: an immense serpent whose COILS unroll backwards and disappear into the
dense wood — the body measures the whole forest, and the coils are NOT COUNTABLE and cannot
be followed to their end. His defining attribute is his EYES: sharp and sleepless, the eyes
that never close. In this picture they are CLOSED at last. His huge head fills the low
foreground with the JAW JUST TOUCHING THE GROUND at this exact second: heavy eyelids, the
long neck giving way, the head receiving the warm light. He is not a fierce beast tamed — he
is an EXHAUSTED creature who is finally resting. NO tongue out, NO bared teeth, NO drool.
```
- **[FONTE]** (Apolônio, *Argonáutica* IV ~127–178): tamanho imenso · anéis desenrolando-se
  pelo bosque · **olhos agudos e insones** (*áypnos*), o atributo definidor · a mandíbula que
  baixa ao chão · os anéis que se desenrolam.
- **[ICONOGRAFIA]:** o tipo antigo mais famoso (a taça de Douris, Vaticano) mostra o dragão
  **engolindo Jasão**, de bocarra aberta — cena de horror que o livro não conta.
  **[NOSSO], declarado:** o livro desenha o instante do descanso, que é do texto de Apolônio.
- **[NOSSO]:** cor de escama (Apolônio não dá) · a leitura "exausto que descansa".
- ⚠️ **Crista e três línguas são de Ovídio** (*Met.* VII, tardio) — **não usar**, o livro não
  adota a fonte.
- 🔴 **Nenhuma arma no quadro, em nenhum plano.** A fonte não tem nenhuma. Nenhum sangue,
  nenhuma ferida, nenhum corpo. **Este é o capítulo que desarma a antecipação de morte do
  livro inteiro.**
- ⚠️ **Filiação frágil e declarada:** ele não está no catálogo de Hesíodo; a filiação vem só
  de Higino. É "posse incerta" — não afeta o desenho, afeta a página de Fontes.

**Medeia** (cap. 2)
```
MEDEA: a YOUNG GIRL, small beside the dragon's head, standing right next to it, ONE HAND
RESTING ON ITS MUZZLE and the other holding a freshly cut JUNIPER SPRIG — the iconic object
of the scene, it must be legible. Her mouth is slightly open: she is still singing. Face
three-quarter, fully expressive. NO witch gestures, NO raised pot, NO cauldron, NO smoke.
Art nouveau watercolour.
```
⚠️ **Ela ocupa o centro de leitura da página; o herói ocupa a margem.** É hierarquia de
composição, não gentileza.

**Jasão** (cap. 2)
```
JASON: at the back, recessed, smaller in the frame, the GOLDEN FLEECE in his arms or in the
gesture of lifting it from the branch. The posture of someone who is afraid — the source says
so, and the picture must say it too. NO weapon.
```

**Atlas** (cap. 4)
```
ATLAS: a giant in the foreground, back under the STARRED CELESTIAL SPHERE — a sphere, NEVER a
world map, NEVER a globe with continents. The weight is legible in the body: shoulders,
knees, the ground sinking. His face has just understood. TIRED AND CLEVER, never ridiculous —
the reader laughs WITH the situation, never AT Atlas. Art nouveau watercolour.
```

**Édipo** (cap. 5)
```
OEDIPUS: small, at the foot of the column, on the road, seen from three-quarters behind — a
traveller with a walking staff and a dusty cloak. NO crown, NO throne, nothing that pulls in
the rest of his story.
```

**Euritião** (cap. 3)
```
EURYTION: the herdsman, at the back and to the left, with his STAFF over his shoulder, plain
working clothes. He is a WORKMATE, not an extra: his gaze and Orthus's are on the same herd.
Face three-quarter and expressive.
```

**As Hespérides** (cap. 4) — coro em silhueta na margem. 5ª figura **opcional**; são as
primeiras a cortar se a composição encher (teto R4.2).

**O gado vermelho** (cap. 3) — **vermelho de fim de tarde**, não terracota apagado. É a única
cor nomeada do capítulo e o título vive dela. Em friso descendo para a água, **sem número
legível** (a fonte não diz quantas; a imagem não afirma o que o texto não afirma).
🔴 **HEX fixado (era adjetivo, virou número — ver §2b):** corpo em **terracota `#C1440E`
saturada em luz de fim de tarde**, sombra do flanco em **terracota escura `#8C3410`**, realce
do lombo em **ouro quente `#E8A317`**. ❌ **Nunca `#9E2B2B`** (vermelho-minoico é cor de Creta
no livro 1 e não pertence a este capítulo).

**Hidra e Quimera** (cap. 8A apenas)
```
THE HYDRA: EXACTLY THREE sharp heads rising like reeds from the water, side by side and
overlapping; behind them ONE SINGLE CONTINUOUS MASS of wet-on-wet watercolour with soft
bleeding edges, no outline and no eyes, dissolving into the light of the water, never into
black.

THE CHIMAERA: a LION seen from the side, calm and lying, and this is her canonical form
(Teog. 319-324): a GOAT'S HEAD GROWS OUT OF THE MIDDLE OF HER BACK, from the spine itself,
turned to the side — NOT a third neck beside the lion's, NOT three heads in a row. Her TAIL
ENDS IN A SERPENT'S HEAD, at the back, low and quiet. Three heads in three different places
on one body. She IS countable. A single thread of smoke, NO open flame.
```
🔴 **Correção de forma (historiador de arte).** A redação v1 — *"leão à frente, cabra no meio,
serpente atrás"* — produzia **três pescoços lado a lado**, que não é o tipo canônico. O tipo
antigo é: **cabeça de cabra brotando do MEIO DO DORSO** e **cauda terminando em cabeça de
serpente**. Três cabeças em **três lugares diferentes de um corpo só**.
📎 **Referência: REF-05, Quimera de Arezzo — ⚠️ ETRUSCA, ca. 400 a.C., NÃO É GREGA.** Anexável
**com rótulo obrigatório** no prompt e no `log-geracao.md`: entra como **fonte de FORMA**,
jamais como referência de estilo. ❌ Não copiar: a pose ferida e empinada, o rugido, a ferida
na coxa, o sangue, a crina em chamas, o brilho de bronze.
⚠️ **Só existem no retrato de origem.** Não têm capítulo, não aparecem em mais nenhuma página,
e a quarta capa **não as promete** (requisito duro do spec).

**Personagens do livro 1:** **nenhum é reutilizado.** Nem Zeus nem Hermes aparecem em cena
neste livro (Zeus tem uma frase no cap. 8, e ela é a elipse; Atena leva as maçãs no corrido do
cap. 4, fora do brief de imagem). As sheets 4:3 do livro 1 ficam disponíveis, **não usadas**.
⚠️ Se o gate reabrir e puser Zeus em quadro, a sheet do livro 1 é a referência — não se
redesenha o personagem.

---

## 3b. PALETA — o delta deste livro

A paleta hex do livro 1 (§2.1 e §2.2) é herdada **integralmente**. Este livro **estende** e
**declara inertes**, porque o guia v1 fixava número só para pedra e vão e deixava pelo, juba,
couro e escama como adjetivo — e adjetivo não é verificável na validação.

### 3b.1 Extensão obrigatória — as matérias deste livro

| Matéria | HEX base | Sombra | Luz | Onde |
|---|---|---|---|---|
| **Pelo de cão** (Cérbero, Órtro) | ocre de argila `#C88A3D` | terracota escura `#8C3410` | creme de argila `#EDD9B4` | a camada dissolvida **dissolve para `#EDD9B4`**, nunca para `#1B1613` |
| **Juba de leão** | ocre `#C88A3D` com veladura de bronze `#A9773F` | `#8C3410` | `#E8A317` só no fio da luz | juba densa, sem chama |
| **Couro de pedra** (Leão, a invulnerabilidade) | terracota `#C1440E` fechada e opaca | adamante `#4A4A47` em veladura | `#EDD9B4` seco, sem brilho | **densidade, não brilho** — couro que não reflete |
| **Escama de serpente** (Equidna, Ladon, Dragão, cauda-dragão) | verde-mata `#4E6B3C` | azul-egeu profundo `#1F5A6E` | verde-broto `#8FB865` | manchas **grandes e arredondadas** (Equidna); ❌ losango |
| **Folhagem** (macieira de Ladon, capim de Nemeia, bosque da Cólquida) | verde-oliva acinzentado `#7E8B5E` | `#4E6B3C` | `#8FB865` | é dentro dela que a multidão de Ladon se dissolve |
| **Gado vermelho** (cap. 3) | `#C1440E` saturada | `#8C3410` | `#E8A317` | ❌ nunca `#9E2B2B` |

### 3b.2 O que fica INERTE neste livro (declaração obrigatória)

Duas regras vinculantes do livro 1 **não têm objeto aqui**, e precisam estar declaradas para
que a validação não as cobre nem alguém as "aplique por coerência":

- 🔇 **§2.3 do livro 1 — a regra dos dois ouros (caps. 1 × 9).** **INERTE.** Ela existe para a
  inversão prêmio × castigo entre dois capítulos específicos do livro 1. Este livro não tem
  nenhum dos dois. `#E8A317` é usado aqui **como realce de luz quente**, não como o "ouro que
  chega"; `#D9CB8A` **não é usado**.
- 🔇 **§2.4 do livro 1 — a regra das três luzes (caps. 7 × 8 × 9).** **INERTE.** Ela separa
  três "instantes anteriores" em sequência que só existem no livro 1. A disciplina de luz
  deste livro é outra e está em **§1.2b** (luz quente no rosto, sempre) e em **D5** (as duas
  cavernas).
- ✅ **§2.5 do livro 1 — dupla luz sem astros (X14):** **ATIVA**, e reforçada — nenhum sol,
  nenhuma lua e nenhum disco no céu em nenhuma página deste livro. A **esfera celeste de
  Atlas** (D4) é o único corpo estrelado, e é objeto em quadro, não astro no céu.

---

## 4. Character sheets a gerar

**8 folhas.** Critério herdado do livro 1: ganha sheet quem é recorrente **na ilustração** e
quem tem **custo de continuidade** se falhar — não quem é recorrente no texto.

| # | Sheet | Aparições | Por que ganha folha | Ordem |
|---|---|---|---|---|
| 1 | `sheet-equidna` | caps. 1, 8A, 8-última | 🔴 **A folha de referência de continuidade do livro.** Três aparições, uma delas uma **rima idêntica obrigatória** (D9). Se este rosto falhar, falham a primeira e a última página do livro. **É também a imagem que vai ser ANEXADA** nas conversas seguintes (§2.1) | **P0 — produzir primeiro** |
| 2 | `sheet-cerbero` | caps. 7, 8A, **capa** | 🔴 É **o rosto do livro** (decisão da quarta capa) e está em três peças, uma delas a capa. Precisa passar nas **duas perguntas** do §1.4 antes de qualquer cena | **P0** |
| 3 | `sheet-heracles` | caps. 4, 6-vinheta, 7 — **uma folha, dois estados** (sem pele / com a pele) | Três aparições + a transição de estado mais delicada do livro (D3). Mesmo padrão do Hermes adulto+bebê do livro 1 | P1 |
| 4 | `sheet-leao-nemeia` | caps. 6 (vivo), 6-vinheta (a pele), 8A | A **pele** tem de sair deste sheet, ou a marca emocional do livro não fecha entre os caps. 6 e 7 | P1 (junto com a 3) |
| 5 | `sheet-cerbero` ✔ | — | *(já contado)* | — |
| 6 | `sheet-ortro` | caps. 3, 8A | Duas aparições, e é a **única criatura contável** do livro — a folha existe para travar "duas, exatamente duas" contra a fórmula não-contável de todo o resto | P2 |
| 7 | `sheet-ladon` | caps. 4, 8A | Duas aparições + é o caso-teste da fórmula das três camadas **e o plano B de todas as outras** (§1.5b) | P2 |
| 8 | `sheet-tifao` | cap. 8A | Aparição única, **mas ganha folha por exceção declarada**: a cabeça-que-ganie é a peça mais difícil do livro (traduzir som em postura) e não pode ser descoberta durante a geração de uma full-bleed | P3 |
| 9 | `sheet-esfinge` | caps. 5, 8A | Aparição nítida única, **mas ganha folha por exceção declarada**: é o segundo rosto mais difícil do livro (dignidade sem sedução, expressão de "quem pergunta") e reaparece ao fundo no 8A | P3 |

*(A numeração salta porque a linha 5 registra que Cérbero já foi contado. Total real: **8
folhas** — Equidna, Cérbero, Héracles, Leão, Órtro, Ladon, Tifão, Esfinge.)*

**Sem sheet, por aparição única — a página aprovada vira a referência:** Dragão da Cólquida ·
Medeia · Jasão · Atlas · Édipo · Euritião · Hespérides · Hidra · Quimera · Molorco (não
ilustrado).

⚠️ **Divergência declarada ao gate:** Tifão e Esfinge aparecem **uma vez cada** e, pelo
critério estrito do livro 1, não ganhariam folha. Ganham aqui porque **carregam a premissa da
inversão em sua forma mais difícil**, e descobrir a solução durante uma full-bleed de 5
figuras custa mais que uma folha 4:3. Custo declarado: 2 gerações extras.

**Regra herdada, sem exceção:** **sem sheet aprovado, nenhuma cena daquele personagem é
briefada.** Sheets em 4:3; cenas e capa em 1:1.

---

## 5. Plano de cenas — 9 full-bleeds + capa (+ 3 peças contidas)

Teto herdado por analogia (R4.2): **≤5 figuras nítidas por full-bleed**.

🔴 **Coluna nova — AS TRÊS ALAVANCAS.** O guia v1 dizia "toda cena usa pelo menos três
alavancas" e isso não era verificável. Agora **cada peça nomeia quais três** (numeração de
§1.2), e a validação confere as três nomeadas — não uma contagem genérica.

| Peça | Página | Momento | Em quadro (nítidos) | Contagem | **3 ALAVANCAS** | **OBRIGATORIAMENTE fora** | Função emocional |
|---|---|---|---|---|---|---|---|
| **`00-capa`** | capa | — | Cérbero | **1** ✔ | **1 postura** (sentado) · **4 escala** (portão cortado pela borda) · **5 válvula** (a cauda no arco) | qualquer herói, qualquer arma, tipografia | *"eu quero conhecer esse cachorro"* — a promessa da inversão feita antes de abrir o livro |
| **`01-equidna-a-caverna-e-as-portas`** | p. 10 | **depois** das partidas — nada em curso | Equidna | **1** ✔ | **2 trabalho** (guardando) · **3 olhar** (para fora e para a frente) · **6 recorte** (a cauda entra e sai) | Tifão · Héracles · qualquer herói · qualquer arma · **qualquer criatura nítida** nas cinco marcas do mapa (só lugar ou silhueta) · qualquer gesto de despedida | **Um mapa se abrindo.** A casa é boa, a porta é dela, e o mundo lá fora ganhou guarda. Zero luto, zero presságio |
| **`02-dragao-da-colquida`** | p. 14 | **o instante em que a mandíbula toca o chão** | Dragão · Medeia · Jasão · o carvalho com o Velo | **4/5** ✔ | **1 postura** (mandíbula cedendo) · **4 escala** (o corpo mede o bosque) · **6 recorte** (os anéis somem na mata) | 🔴 **nenhuma arma, em nenhum plano** · sangue · ferida · corpo · qualquer coisa que insinue morte · Orfeu (é do cap. 7) · gestual de feiticeira | **Descanso.** O capítulo que desarma a antecipação de morte do livro. O bicho exausto que finalmente dorme |
| **`03-ortro-o-turno-de-trabalho`** | p. 18 | **o turno**, ao entardecer, o rebanho descendo para a água | Órtro · Euritião · o gado vermelho (friso) · Eritia como paisagem | **≤5** ✔ | **2 trabalho** (contando o rebanho) · **3 olhar** (uma cabeça baixa, outra no horizonte) · **1 postura** (de pé, parado, em turno) | 🔴 **Héracles** · a clava · qualquer sombra ameaçadora · sangue · corpo · Gerião (dono ausente) · número legível de vacas · **cauda de serpente** | **Rotina, e ela é bonita.** A morte não se ilustra: a página é o dia comum de que ele foi tirado |
| **`04-ladon-e-o-pedido-da-almofada`** | p. 22 | **"durante"** — Atlas já com o céu de volta, Héracles ainda com uma maçã na mão | Atlas · Héracles (**sem a pele**) · uma cabeça de Ladon · as três maçãs · Hespérides *(5ª, opcional)* | **4–5/5** ✔ | **1 postura** (Ladon olha sem reagir) · **6 recorte** (o corpo na folhagem) · **4 escala** (Atlas e a esfera) | 🔴 **a pele do Leão** (nasce no cap. 6) · flecha · ferida · dragão caído · **mapa-múndi/globo com continentes** (D4) · cabeça contável · clava erguida · deserto | **Comédia de negociação.** Ri-se *com* Atlas, nunca *dele*. A porta mais bem guardada do mundo não foi tocada |
| **`05-a-pergunta-da-esfinge`** | p. 24 | a Esfinge acabou de abrir as asas e **está perguntando**; ninguém se mexe | Esfinge · Édipo · a estrada · Tebas ao fundo | **≤4/5** ✔ | **2 trabalho** (ela pergunta) · **3 olhar** (de quem espera resposta) · **4 escala** (a coluna dá a altura) | 🔴 **a beira do abismo como assunto** · 🔴 **a pedra/rochedo do despenhadeiro, mesmo vazia ou ao longe** (§5.1) · osso · viajante caído · sombra de ameaça no chão · coroa · trono · qualquer coisa que revele a resposta | **O livro para e o leitor joga.** A única porta que não abre pela força |
| **`06-o-leao-antes`** | p. 28 | **antes de tudo** — o leão vivo, deitado no capim curto, olhando a estrada | o Leão | **1** ✔ | **1 postura** (deitado) · **3 olhar** (a estrada, não o leitor) · **4 escala** (o vale alto atrás) | 🔴 **Héracles** · clava · flecha · sombra ameaçadora · rugido · dentes · bote · contraluz de vilão · floresta, ruínas, rebanhos (as fontes não dão) | **O dono da casa, em casa.** A invulnerabilidade lida como couro de pedra, não como ferocidade |
| **`07-cerbero-o-abraco-sem-armas`** | p. 33 | **o abraço** — braços em volta da **cabeça** (Apolod. 2.5.12), a fera cedendo | Héracles (com a pele, manto) · Cérbero · a cauda-dragão como massa própria · o portão | **4/5** ✔ | **1 postura** (cedendo) · **5 válvula** (a cauda, periférica) · **4 escala** (o portão cortado) | 🔴 **nenhuma arma na mão de ninguém** · sangue · ferimento visível · dor no rosto de Héracles · alma, morto ou figura ao fundo · coleira, focinheira, chamas, baba, olhos vermelhos, língua de fora, sorriso, olhos de filhote, proporções de mascote · **rosto-sobre-rosto** (D3) | **A única imagem do livro em que Héracles e uma criatura se tocam sem que uma morra.** No chão, nítidos: **o arco e a clava largados** — são o assunto tanto quanto o abraço |
| **`08a-tifao`** | p. 36 | **antes** de qualquer confronto — ele está de pé, não avança | Tifão | **1** ✔ | **1 postura** (de pé, não avança) · **3 olhar** (a cabeça que ganie) · **4 escala** (a altura da figura) | 🔴 **Zeus** · o raio · combate · fogo consumindo terra · corpo ferido · qualquer arma · o Etna · **brilho em mais de uma cabeça** · **par de pontos luminosos** · **qualquer brilho vermelho** | **O pai, e ele ganie.** A cabeça baixa que olha para a criança é o assunto emocional da página e a chave da inversão |
| **`08b-o-retrato-de-origem`** | p. 38 | **o tempo do nascimento da prole** — retrato de família, nunca "o dia" | Equidna (centro) · Órtro · Cérbero · Hidra · Quimera | **5/5** ✔ | **2 trabalho** (é um retrato: todos posando, ninguém em ação) · **3 olhar** (todos os rostos legíveis, luz quente) · **6 recorte** (os corpos grandes saem de quadro) | 🔴 **Tifão** (tem a própria página) · **qualquer legenda ou composição que declare que todos nasceram juntos** · porta, portão, paisagem externa · tristeza · presságio · sombra pesando · ar de despedida · carne, osso, boca vermelha | **"Esta é a família."** O antes de tudo, sem uma gota de luto. Ladon ao fundo contornando a caverna; **Esfinge e Leão mais atrás, menores e menos definidos** (outra geração — **nunca recém-nascidos ao lado dos demais**), ambos fora da contagem |

### 5.1 Peças contidas (não full-bleed, mas obrigatórias)

| Peça | Onde | Conteúdo | Fora de quadro |
|---|---|---|---|
| **Vinheta 6.1 — "as duas bocas"** | cap. 6 | A caverna **vista de fora**, encosta na horizontal, **as duas bocas na mesma imagem**: a da direita entulhada por mão humana, a da esquerda aberta e **só escuro**. A clava **no chão, largada** | 🔴 **o Leão** · qualquer coisa legível dentro do negro (silhueta, olho, movimento) · **a clava em golpe** |
| **Vinheta 6.2 — "a pele"** (🔴 OBRIGATÓRIA, espaço reservado no `miolo.typ` — D1) | cap. 6 | Héracles **de costas**, descendo a colina, a pele como **manto de corpo inteiro**, do ombro ao chão. Ao longe, baixinho, **os telhados de Cleonas** | 🔴 **rosto-sobre-rosto** (D3) · esfolamento · o corpo do leão sendo carregado · troféu erguido |
| **A última página do livro** (p. 40 — D9) | cap. 8 | **A caverna, no enquadramento exato da p. 10**, mesmo rosto sem uma ruga a mais. Só Equidna. O traço de luz de manhã cortando o chão é o único movimento. **Gerada com a p. 10 aprovada ANEXADA como referência (§2.1)** | 🔴 **qualquer filho** · qualquer silhueta · o mapa de portas no alto · olhar para a saída · mão estendida · ombros caídos · o Etna |

#### 🔴 5.1a A PEDRA DA ESFINGE (p. 26) — fora de quadro

> **A pedra de onde a Esfinge se lança, no fim da história dela, NÃO APARECE em página
> nenhuma deste livro. Nem vazia, nem ao longe, nem como silhueta no horizonte.**

Racional (adequação etária): o guia v1 dizia que "a beira do abismo não é assunto", e isso
deixava aberta a pedra vazia ao fundo — que é pior, porque é exatamente a composição que
**convida o adulto a explicar o que aconteceu ali** e deixa a criança com uma pergunta sem
resposta na página. **Fora de quadro é diferente de discreto.** `[MUST NOT APPEAR]` da p. 26:
`no cliff, no precipice, no drop, no empty high rock`.

#### 🔴 5.1b A CAUDA-DRAGÃO NO CAP. 7 — as travas

A cauda é a **válvula do perigo** da página (alavanca 5) e por isso existe; mas ela é a segunda
coisa que o olho da criança encontra, e ganha as mesmas travas da capa:

1. **"Sem dentes à mostra" vale para ela também.** A regra estava escrita para as cabeças de
   cão e deixava a cauda de fora. Agora é explícita: **a cauda não mostra dente.**
2. **Ela AGARRA/PRENDE, não CRAVA.** O gesto é de **enrolar no braço** — contenção, não
   mordida. `the tail COILS AROUND his forearm and holds; it does not bite, no teeth, no
   puncture, no blood`.
3. **Periférica em tamanho e em posição:** ocupa a margem do quadro, nunca o centro de leitura,
   e é menor que qualquer uma das cabeças nítidas.
4. **O rosto de Héracles está virado para o CÃO, não para a cauda.** Se ele olha para a cauda,
   a página vira "ele está sendo atacado" — que é a leitura que o capítulo inteiro desmonta.

#### 🔴 5.1c A VINHETA DO ETNA — decidida

O guia v1 dizia *"se entrar, é vinheta pequena de canto"* e nunca escreveu o brief — uma peça
condicional sem especificação, que é como se produz uma imagem ruim às pressas na Fase 3b.

**Decisão: a vinheta ENTRA, e ganha o brief que faltava.**

| Peça | Onde | Conteúdo | Fora de quadro |
|---|---|---|---|
| **Vinheta 8.1 — "a montanha que ferve"** | cap. 8, canto inferior da página **seguinte** à `08a` · **NUNCA na página final** | Uma montanha vista **de longe e de dia**, ocre e terracota, com **um único fio fino de fumaça branca** saindo do alto e se desfazendo. Paisagem calma, luz alta e seca, sem ninguém em quadro. Lê-se como *"ele está ali embaixo, e a montanha só respira"* | 🔴 **Tifão** ou qualquer parte dele · fogo, chama, lava, brasa, faísca · vermelho · céu escuro ou de tempestade · fuga, ruína, casa, gente · qualquer rosto na fumaça ou na rocha |

⚠️ Nota de fonte: o Etna é de **Píndaro, *Pít.* 1.15–28**, não de Hesíodo — declarado na página
de Fontes. **Contido: ferve, não aterroriza.**

### 5.2 Contratos de continuidade — verificados imagem a imagem

1. **D9 — a rima da caverna:** p. 10 e p. 40 são **a mesma imagem com uma diferença só** (na
   p. 10 há o mapa de portas na faixa alta; na p. 40 não há). **Gerar as duas na mesma sessão,
   do mesmo sheet, uma logo após a outra — e a p. 40 COM A P. 10 ANEXADA (§2.1).** O piloto 2
   provou que a mesma sessão é **necessária e insuficiente**.
2. **D5 — as duas cavernas:** Equidna (vertical, funda, uma boca, descida, traço de luz de
   manhã) × Nemeia (horizontal, rasa, passante, duas bocas, luz alta e seca). Cruzar as duas
   imagens lado a lado na validação. Some-se a elas uma terceira paisagem que também não pode
   se confundir: o **bosque da Cólquida** (mata aberta e vertical, com água ao lado, noite
   quente) e uma quarta, **Eritia** (aberta e marítima, sol baixo).
   ⚠️ **Achado do piloto 2:** a paleta da caverna de Equidna **variou entre gerações**
   (azul-petróleo × ocre quente). **A paleta da caverna é fixada aqui: ocre quente** —
   `#C88A3D` na rocha, `#8C3410` na sombra, `#1B1613` só no fundo do vão, `#EDD9B4` no traço
   de luz. É **casa boa**; caverna fria contradiz o capítulo.
3. **O portão do mundo de baixo** é o mesmo no cap. 7 e no cap. 8A, e **Cérbero é o mesmo
   desenho, mais novo** no 8A.
4. **A pele** do cap. 6 (vinheta 2) e a do cap. 7 são **o mesmo objeto**, do mesmo sheet.
5. **O rosto de Equidna** é idêntico nas três aparições (1, 8A, 8-última) — por **referência
   anexada**, não por repetição de prompt.
6. **Órtro é o único contável do livro.** Todo o resto obedece a D2.

### 5.3 Ordem de produção

**P0** sheets Equidna + Cérbero → **P1** `01` e a última página (juntas, D9, **com anexo**) →
**P2** sheets Héracles + Leão → **P3** `07` (o teste "cachorro" trava a capa) → **P4** capa →
**P5** sheets Órtro, Ladon, Tifão, Esfinge → **P6** cenas `02`–`06` → **P7** `08a` e `08b` (o
retrato de origem é a página de 5 figuras, e depende de 5 sheets aprovados) → **P8** vinhetas
do cap. 6 e a vinheta 8.1 do Etna.

Racional: as duas peças que decidem o livro são **o rosto de Equidna** (abre e fecha) e **o
Cérbero da capa**. Se qualquer das duas travar, trava antes de 9 páginas terem sido gastas.
**E D9 é testada em P1** — o gatilho de rebaixamento do §2.1 dispara ali, não na página 40.

---

## 6. A capa — Cérbero é o rosto do livro

Requisito **duro** do spec (§Requisitos herdados, item 7, quarta-capa): a capa vende por
Cérbero e pela adivinha; **não promete Hidra nem Quimera**. O grid é o da série
(`references/serie-padroes.md`), idêntico entre livros: título da série no topo, título do
livro abaixo, ilustração central com moldura cultural, **arco Mucha cujo perfil interno é
meandro** — o arco é o elemento serial; **o que muda por livro é o ornamento que o preenche**.

**Composição:**

- **Figura única, frontal, dentro do arco: Cérbero SENTADO no umbral do portão**, de frente,
  ocupando a altura do arco. **Duas cabeças nítidas e legíveis** (a fórmula das três camadas
  na sua forma mais econômica — a capa é onde a legibilidade importa mais), e atrás delas a
  **massa contínua molhado-sobre-molhado** do §1.5(b), sem contorno, sem olhos, dissolvendo
  para o creme.
- **Uma orelha começando a baixar.** É a alavanca principal da amabilidade (Horácio), é
  fonte, e é o traço que faz o leitor de 4 anos dizer "cachorro" à distância de uma prateleira.
- **A escala faz o trabalho do susto:** o portão atrás dele é **cortado pela borda de cima** e
  o alto do arco. O adulto entende que a coisa é enorme; a criança vê um cachorro esperando.
- **A cauda de dragão** aparece **enrolada em torno do ARCO MUCHA, virando ornamento** — o
  arco é art nouveau por definição, e é lá que a metamorfose forma↔ornamento é legítima
  (§1.3a). 🔴 **Ela NÃO enrola na faixa geométrica e NÃO vira palmeta.**
- **As serpentes do dorso** viram **friso ORIENTALIZANTE** (Banda B, §1.3a) — perfis
  enfileirados sobre campo de rosetas, em banda separada da faixa geométrica. **Não entram na
  Banda A.**
- **Ornamento do arco (o que muda por livro):** o perfil interno alterna **meandro e palmetas
  em forma de perfil de serpente** — a assinatura visual desta família. Serial no formato,
  próprio no motivo. **Esta é a única metamorfose autorizada, e é no arco.**
- **Luz e paleta:** ocre `#C88A3D` e creme `#EDD9B4` no pelo, terracota `#C1440E` na pedra,
  fundo de papel `#F6EFE2`. **Nenhum vermelho de sangue, nenhum fogo, nenhum contraluz de
  vilão.**
- **Nenhuma arma, nenhum herói, ninguém mais em quadro.** Contagem: **1 figura nítida** ✔.
- **A arte de capa é gerada SEM tipografia** (`no text, no lettering`). Título da série,
  título do livro e autoria são compostos em Typst pelo `mito-diagramador` (Fase 4), na zona
  reservada do **terço superior**, sobre fundo de baixo contraste. **Nenhuma letra sai do
  gerador — nem como enfeite.**

### 🔴 6.1 AS TRÊS TRAVAS DA CAPA (adequação etária — vinculantes)

A capa é a única peça do livro que age **à distância de uma prateleira**, sobre uma criança que
não escolheu olhar. As três travas são condição de entrega, não preferência de composição:

1. **O NEGRO FICA NA BASE E NAS LATERAIS — nunca atrás da cabeça.**
   O vão negro de verniz `#1B1613` (o ponto mais escuro da página) fica **na base do portão e
   nas laterais**. 🔴 **A cabeça nítida se recorta contra CREME `#EDD9B4` ou contra o fundo de
   papel `#F6EFE2` recebendo luz quente — NUNCA contra o preto.** Cabeça clara contra vão
   escuro é a composição de "monstro saindo da caverna", e ela reprova a capa sozinha.
2. **O OLHAR É LEVEMENTE FORA DO EIXO.**
   Atento, presente, com pupila — mas dirigido a **algo um pouco à direita ou à esquerda de
   quem olha**, nunca confrontando o leitor de frente. Olhar frontal e travado de um animal
   grande é confronto, mesmo com o rosto mais amável do mundo.
3. **A CAUDA-DRAGÃO É PADRÃO, NÃO CRIATURA.**
   Enrolada no arco, resolvida como ornamento: **sem boca, sem dente, sem olho voltado para o
   leitor.** Ela é a segunda coisa que o olho da criança encontra depois do rosto, e é onde o
   perigo mora **na cerâmica**, não no rosto. Isso é a hierarquia X5 fazendo exatamente o que
   ela existe para fazer.

### 🔴 6.2 Prova de leitura da capa

Mostrar a capa sem tipografia a um leitor de 4 anos, pelo **protocolo §1.4a** (pergunta aberta,
sem texto, sem nomear o animal, sem alternativas):
- **P1 "o que é isso?" → "cachorro" ✅ · "monstro" ❌ · "fofinho" ❌**
- **P2 "você ia querer ficar perto dele?" → negativa ❌**

⚠️ **A capa não passa para a Fase 4 sem este veredito escrito** — e, enquanto não houver leitor
real nomeado (§1.4b), ela vai ao dono **etiquetada "aguardando teste com leitor real"**, com o
veredito do proxy registrado como proxy no `log-geracao.md`. **Ela não é considerada validada.**

⚠️ **Pendências seriais que a capa herda e não resolve** (donos: `mito-editor-chefe` e
`mito-diagramador`, Fase 4/5): a **rotulagem/numeração de spin-off** no grid; a **tipografia
da série**, ainda `[a definir]` em `serie-padroes.md`. A arte não depende de nenhuma das
duas; o grid final depende.

---

## 7. Barra de validação — o checklist deste livro

Herda os 9 itens do livro 1 §7 (cena certa · personagem fiel atributo por atributo · estilo da
série · camada cultural na camada certa · teto R4.2 · legível para 4 anos · proibições do
capítulo · técnica · entrega 2492×2492). **Acrescenta quatro itens, próprios da inversão:**

10. **Teste da premissa (D7/D8) — as DUAS perguntas, protocolo §1.4a:** a criança nomeia o
    animal ou a pessoa? *E* diria que quer ficar perto dele? "monstro" ❌ · "fofinho" ❌ ·
    negativa na pergunta 2 ❌. **Registrar a palavra verbatim, e o rótulo "proxy" se for proxy.**
11. **Teste do não-contável (D2):** um adulto chega a um número em 10 segundos? Então
    reprovada. Fileira de cabeças separadas e equidistantes = o defeito do Cem-Mãos =
    reprovada. **Segunda reprova nesta linha dispara o plano B (§1.5b), não a terceira rodada.**
12. **Régua de Equidna (D6):** varrer a lista negativa de §1.5(c) item a item. **Um item
    presente reprova a imagem inteira**, sem discussão de mérito de composição.
13. **Contratos de continuidade (§5.2):** cruzar a candidata com a peça-par (p. 10 × p. 40;
    as quatro paisagens; o portão; a pele; o rosto de Equidna).

🔴 **O antigo item 14 ("todo elemento visível é rastreável a [FONTE] ou [NOSSO]") foi
ELIMINADO (A5).** Ele é **inverificável** numa aquarela de 2048 px com folhagem: ninguém
consegue auditar cada folha, cada dobra de tecido e cada mancha de tinta contra uma ficha. A
rastreabilidade continua sendo o **racional do §3** — que é onde ela é útil, na hora de
**escrever** o prompt — e deixa de ser checklist de gate.

### 🔴 7.1 `[MUST NOT APPEAR]` — ≤7 itens verificáveis, por peça (A5)

O guia v1 acumulava ~60 proibições explícitas para serem conferidas por uma pessoa olhando um
JPEG. **Isso não é rigor, é teatro** — e foi exatamente o que deixou passar, no piloto 1, uma
violação óbvia ("figuras humanas em silhueta" apesar de `no human figure` estar no prompt).

> **Cada peça leva no prompt um bloco `[MUST NOT APPEAR]` de NO MÁXIMO 7 ITENS**, escolhidos
> pelo `mito-diretor-arte` entre as proibições da coluna "obrigatoriamente fora" da tabela §5.
> **Critério de escolha: o item tem de ser verificável a olho nu, em 5 segundos, por quem não
> leu o guia.** ("nenhuma arma" ✅ · "nenhum elemento não rastreável à ficha" ❌.)
>
> O resto das proibições **permanece no guia como racional** — consulta na hora de briefar,
> não linha de checklist na hora de validar.

**Reprovação vem com direção concreta** ("baixe a orelha esquerda; a quarta cabeça fechou
contorno e virou contável"), nunca com adjetivo. **Máximo 3 rodadas por imagem**; travou, vai
ao gate com as candidatas — ou dispara o plano B, se a reprova for por contagem.

---

## 8. Conflitos declarados entre as decisões fixadas e o guia herdado

Nenhum é fatal; todos precisam ficar escritos, porque a hierarquia herdada é vinculante e este
guia a está esticando.

1. **A hierarquia X5 supunha personagens humanos.** "Rostos frontais ou de três quartos, olhos
   legíveis, emoção lida por uma criança de 4 anos" foi escrita para deuses e heróis. Neste
   livro **as protagonistas são criaturas**, e várias não têm rosto humano.
   **Resolução adotada:** X5 vale integralmente e se estende — *rosto* passa a significar
   **face legível da criatura** (cão, leão, serpente, esfinge), com a mesma exigência de
   expressão e de olhos com pupila. Continua **proibido** personagem da história em perfil
   rígido de figura negra, olho de frente em rosto de perfil, anatomia linear de vaso, rosto
   inexpresso ou mascarado. **A cerâmica continua emoldurando; Mucha continua atuando.**
2. **"Figura em silhueta só como ornamento de borda ou multidão de fundo" × as camadas 2 e 3
   da fórmula não-contável.** As cabeças dissolvidas e as cabeças-ornamento **não são
   personagens em silhueta** — são partes de um personagem nítido, e a multidão-ornamento vive
   no **friso orientalizante (Banda B)**, exatamente onde o livro 1 a permite. **Não há
   violação**, mas o ilustrador vai ter a impressão de que há; fica registrado para não virar
   objeção na Fase 3b.
3. **Ladon "enrolado na árvore" é iconografia, não fonte** — liberado por decisão registrada
   no dossiê e reafirmado aqui, e coerente com a moldura de vaso ático que o livro já herda.
   Análogo declarado à "extensão arqueológica" que o livro 1 abriu para Minos e Ariadne.
   **Diferença importante:** no livro 1 aquilo ficava em ornamento e vinheta; aqui está numa
   **full-bleed**. Risco maior, declarado ao gate.
4. **Órtro contra D2.** A regra do livro é "não contáveis", e Órtro tem **exatamente duas**
   cabeças, por fonte explícita (Apolod. 2.5.10). Não é exceção arbitrária: **D2 nomeia três
   criaturas** (Cérbero, Hidra, Ladon) e Órtro não está entre elas. Registrado para que a
   validação não reprove a página certa por aplicar a regra errada.
5. **O critério de sheet do livro 1 × Tifão e Esfinge.** Aparição única normalmente não ganha
   folha (o livro 1 cortou Hera, Ártemis e Hefesto por isso). Aqui duas aparições únicas ganham,
   por carregarem a premissa da inversão em sua forma mais difícil. **Divergência declarada ao
   gate**, custo: 2 gerações extras.
6. ✅ **RESOLVIDO — a pendência dos `objectID` do Met.** Estava aberta desde a fundação do
   livro 1 e foi fechada pelo `mito-historiador-arte` nesta fase. As 12 referências deste livro
   estão em **§9**, todas com licença lida na página do próprio acervo. **Correção propagada ao
   §1.3 do guia do livro 1** — ver §9.4. **Causa provável do bloqueio original, registrada
   para não voltar:** o guia herdado anotou `14.130.12` e `14.130.14`, que são **números de
   acesso, não `objectID`**; consultar `/objects/14.130.12` devolve **HTTP 400**. Metade da
   "pendência de proxy" era erro de tipo de identificador.
7. 🔴 **NOVO — a Esfinge de perfil × a hierarquia X5.** Na iconografia grega a esfinge é
   **sempre de perfil**, com uma asa em foice. A X5 exige **rosto legível com dois olhos**, e a
   D7 exige que a criança goste dela na primeira olhada — o que um perfil não entrega.
   **Resolução: X5 vence, e a divergência é declarada** (§3.7). O livro desenha a esfinge
   frontal ou de três quartos, e **REF-04** (cabeça de terracota frontal, Met `254589`) é a
   prova de que o rosto frontal de esfinge grega existe no acervo antigo. Não é invenção sem
   lastro; é a escolha do lastro menos comum, por motivo declarado.
8. 🔴 **NOVO — a Quimera etrusca dentro de um livro de camada ática.** A única peça antiga em
   domínio público que resolve a **forma** canônica da Quimera é **etrusca** (Arezzo, ca. 400
   a.C.). Ela entra como **fonte de FORMA, com rótulo obrigatório**, nunca como referência de
   estilo (§3.9, §9.2). **A camada cultural do livro continua sendo cerâmica ática.** O mesmo
   vale, em grau menor, para a hídria **ceretana** do Louvre E 701 (REF-01).
9. **Pendência de credencial, herdada e não resolvida:** Chromium dirigido por agente × API com
   chave. **Os pilotos rodaram no Chrome do dono, autenticado, e nenhum prompt foi recusado** —
   o caminho existe. Mas o gerador **não expõe seed** e "Refazer" **não regenera** (provado por
   hash MD5): a consistência é obrigação de **sheet + descrição verbatim + referência anexada**
   (§2.1). Risco a registrar de novo no gate da Fase 3b.

---

## 9. Referências visuais — o que pode ser anexado ao gerador

Incorpora `ilustracoes/referencias-visuais.md` (dono: `mito-historiador-arte`, 12 referências
com **licença lida na página do próprio acervo**). Este §9 é o resumo vinculante; o arquivo
completo traz o "o que ela ensina / o que NÃO copiar" de cada peça e **é leitura obrigatória
antes de anexar qualquer arquivo**.

### 9.1 Regras de uso — antes de anexar qualquer coisa

1. **Só entra no gerador o que tem CC0 ou domínio público verificado na página do acervo.**
2. 🔴 **BRITISH MUSEUM É CC BY-NC-SA — ESTUDO, NUNCA ANEXAR.** Nenhuma peça do BM entra como
   asset, nem "só uma vez, é referência". **NC é NC.** Onde o BM tem a melhor peça (Ladon,
   hídria de Meidias E224), a linha fica como **SEM referência licenciada** (§9.3).
3. **Fotografia CC BY-SA de usuário do Commons também não entra** — o livro é obra derivada
   comercial e a cláusula SA contamina. Só PD/CC0.
4. **Nunca mais de DUAS referências por prompt**, e nunca duas de estilos conflitantes
   (REF-06 coríntio + REF-08 proto-ático juntas: os estilos brigam).
5. **A instrução negativa acompanha sempre a imagem.** Anexar REF-05 sem dizer "não copiar a
   pose ferida e o sangue" é entregar ao gerador exatamente a página reprovada.
6. **Rotulagem de proveniência obrigatória** onde a peça não é ática (etrusca, ceretana,
   calcídica) — no prompt e no `log-geracao.md`.
7. **Toda referência anexada entra no `log-geracao.md`**, por peça e por geração: qual REF, por
   quê, e o que se pediu para ela ensinar.
8. 🔴 **Precedente que não se repete:** o log do livro 1 registra alguém propondo anexar
   imagens de **Age of Mythology** — obra protegida. **Nunca.** Jogo, filme, arte de artista
   contemporâneo, wiki de fandom e "achado no Pinterest" estão fora, sem discussão de mérito.

### 9.2 A tabela

| REF | Obra · acervo | Licença | Status | Serve a |
|---|---|---|---|---|
| **01** | Hídria **ceretana** fig. negras, Héracles/Cérbero/Euristeu, Pintor da Águia, ca. 530–520 a.C. · **Louvre E 701** | DP | ✅ anexável · ⚠️ **CERETANA, não ática** — fonte iconográfica, não de estilo | Cérbero: **serpentes do dorso resolvidas como laçada ornamental**; a prova antiga da camada 3. Também gramática de serpente para **Ladon** |
| **02** | Ânfora bilíngue **ática**, Héracles e Cérbero, Pintor de Andokides, ca. 530–520 a.C. · **Louvre F 204** | CC0 | ✅ anexável · **ÁTICA — é ela que carrega o estilo** | O desenho grego de **cão** (peito, patas, garupa, orelha). **É a referência de "cachorro" de que o teste D8 depende** |
| **03** | Capitel/acrotério em **esfinge**, mármore ático, ca. 530 a.C. · **Met `248501`** | CC0 | ✅ anexável · ática | Anatomia exata da esfinge **grega** (rosto de mulher, peito e patas de leoa, asa, cauda) · **ela SENTA** · rosto calmo. **A coluna/capitel é o tipo antigo** (§3.7) |
| **04** | Cabeça de terracota de mulher, provavelmente esfinge, gr., 1.º q. séc. V a.C. · **Met `254589`** | CC0 | ✅ anexável | O rosto **FRONTAL** de esfinge grega — o antídoto contra o gerador entregar perfil de vaso (§8.7) |
| **05** | **Quimera de Arezzo**, bronze, ca. 400 a.C. · Mus. Arch. Naz. Florença, inv. 1 | DP | ✅ anexável **com rótulo obrigatório** · 🔴 **ETRUSCA** | A forma canônica: cabeça de cabra **brotando do dorso**, cauda-serpente. ❌ pose ferida, rugido, sangue, crina em chamas, bronze lustroso |
| **06** | **Olpe coríntio**, ca. 630–610 a.C. · **Met `246565`** | CC0 | ✅ anexável — **a referência de moldura nº 1** | 🔴 **O FRISO ORIENTALIZANTE (Banda B, §1.3a)**: perfis enfileirados sobre campo de rosetas. **Precedente antigo de toda a camada 3.** Também o **leão** calmo em perfil |
| **07** | **Dinos coríntio**, ca. 630–615 a.C. · **Met `256846`** | CC0 | ✅ anexável | Mesma gramática em superfície curva larga — útil para a faixa da capa |
| **08** | Ânfora de pescoço **proto-ática**, 2.º quartel séc. VII a.C. · **Met `248578`** | CC0 | ✅ anexável | Ramo proto-ático: desenho **solto e grande**, mais próximo da aquarela. ⚠️ nunca junto de REF-06 |
| **09** | Cratera funerária ática, **Oficina de Hirschfeld**, ca. 750–735 a.C. · **Met `248904`** | CC0 | ✅ anexável | 🔴 **A FAIXA GEOMÉTRICA INTOCÁVEL (Banda A)**: meandro, ziguezague, losango, e a disciplina de registrar em faixas. ❌ as figuras geométricas de silhueta; ❌ a cena de velório |
| **10** | **Owen Jones, *The Grammar of Ornament*** (1856) — pranchas gregas | DP / CC0 | ✅ anexável | O motivo **plano, limpo e repetido** (meandro, palmeta, gavinha), que a peça fotografada não dá. Anexar **junto** de REF-09: a peça dá autoridade, a prancha dá forma. ❌ o chapado vitoriano |
| **11** | **Alphonse Mucha, *Zodiac*** (litografia, 1896) | DP | ✅ anexável | **O arco Mucha** — o halo circular preenchido por motivo repetido, que é o elemento serial da capa. ❌ a mulher de cartaz como personagem; ❌ tipografia; ❌ contorno preto duro |
| **12** | Hídria **calcídica** fig. negras, Zeus e Tifão, ca. 550–540 a.C. · Munique inv. 596 | DP | 🔴 **ESTUDO — NÃO ANEXAR** | Mostra **ponto por ponto tudo o que a ficha §3.6 proíbe** (asas, pernas-de-serpente, gigante humanoide, Zeus com o raio). **Uso autorizado:** citar na página de Fontes como a divergência declarada. Se entrar na conversa, a página está perdida |

**Ordem de anexo por peça:**
`00-capa` e `07` → REF-02 + REF-01 · `05` e `08b`(esfinge) → REF-03 + REF-04 · `06` → REF-06 ·
`08b`(quimera) → REF-05 ⚠️ com rótulo etrusco · **moldura de todas as páginas** → REF-09 +
REF-10 · **capa, o arco** → REF-11 · `04` e `08b`(Ladon) → REF-01 + REF-06 (montagem declarada)
· `08a` (Tifão) → **nenhuma imagem anexada**.

Equidna, Héracles, Órtro, Dragão da Cólquida, Medeia, Jasão, Atlas, Édipo e Euritião **não
levam referência de acervo** — são figura humana e cão, que a fórmula Mucha/aquarela resolve, e
a ficha congelada já é a especificação. A camada de acervo entra neles **só pela moldura**.

### 9.3 🔴 Ladon — sem referência licenciada, montagem declarada

Toda peça antiga boa do tema está no **British Museum (NC)** ou fotografada sob **CC BY-SA**.
Não há imagem de Ladon em CC0/DP anexável. **Ladon é construído por:**

1. **descrição verbatim** da ficha §3.5 (o *drákōn*, a escamação, o corpo na folhagem) —
   incluindo a leitura de escamação transcrita **em palavras** a partir de REF-12, que
   **continua proibida de anexar**;
2. **REF-01** — a serpente resolvida como **laçada ornamental** (✅ anexável);
3. **REF-06 / REF-10** — palmeta e gavinha, onde as cabeças viram ornamento (✅ anexáveis).

Registrar no `log-geracao.md` como **montagem declarada**. Risco rebaixado pela ordem de
produção: Ladon é P5 e aparece em duas peças, uma delas ao fundo em sombra — se a montagem
falhar, falha **depois** de Equidna e Cérbero terem travado o livro.

### 9.4 ✅ Correção propagada ao guia do livro 1 (§1.3)

**Autorizada pelo orquestrador** e **executada nesta fase** em
`producao/grega/guia-de-estilo.md` §1.3 — arquivo congelado, edição registrada aqui e no
`guia-changelog-3a.md`. Das 4 referências herdadas:

| # herdado | Veredito | Correção aplicada |
|---|---|---|
| 1 | ✅ **confirmada** | Ânfora panatenaica, Pintor de Euphiletos: `objectID` **248902** (acesso 14.130.12), CC0 |
| 2 | ✅ **confirmada** | Cratera de Hirschfeld: `objectID` **248904** (acesso 14.130.14), CC0 — é a **REF-09** |
| 3 | 🔴 **nunca foi uma obra — era uma INSTRUÇÃO DE BUSCA** ("kylix/lekythos… busca: Hermes, Atena, Perseu"), e **passou por dois gates** | Fechada por substituição. **Fixado pelo `mito-diretor-arte`: `objectID` 247946** — *Terracotta calyx-krater*, Pintor de Spreckles, ática de figuras vermelhas, ca. 450 a.C., acesso 07.286.66, CC0. (Alternativa verificada e não escolhida: 248093, Pintor da Nekyia.) |
| 4 | 🔴 **nunca foi do Met** — estava sob o cabeçalho "todas do Met Open Access", e **o Met não tem Mucha** | Reclassificada: a obra é PD e está em Wikimedia Commons — é a **REF-11** (*Zodiac*, 1896) |

**Nota de método propagada junto:** `14.130.12` e `14.130.14` são **números de acesso**, não
`objectID`; a API do Met devolve **HTTP 400** para eles. Foi o que travou a verificação na
fundação do livro 1.
