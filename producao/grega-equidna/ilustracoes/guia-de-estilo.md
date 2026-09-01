# Guia de estilo visual — *Equidna e as portas do mundo* (livro 2, spin-off da Grécia)

> **Fase 3a — direção de arte.** Dono: `mito-diretor-arte`. Produzido em 2026-09-01.
> **Congelado.** Nenhuma cena pode ser briefada, gerada ou validada contra outra versão deste
> arquivo. Toda alteração exige gate.
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
> `.claude/skills/squad-mitologia/references/estilo-ilustracao.md` e `pipeline-impressao.md`.
>
> Consumidores: `mito-ilustrador` (Fase 3b), `mito-diagramador` (Fase 4).

---

## 0. Correção herdada, obrigatória antes da primeira geração

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
alavancas autorizadas, e toda cena deste livro usa pelo menos três:

| # | Alavanca | Como se aplica | Por que funciona sem infantilizar |
|---|---|---|---|
| 1 | **POSTURA** | A criatura está **parada, sentada, deitada ou cedendo** — nunca em bote, nunca em investida, nunca avançando para o leitor. Cérbero senta no umbral; o Leão deita no capim; o Dragão da Cólquida deita a mandíbula; Ladon olha sem reagir; Órtro trabalha. | A criança lê intenção pela postura antes de ler o rosto. Bicho parado = bicho que não vem. E todas as quatro posturas acima são **fato de fonte**, não suavização. |
| 2 | **O QUE ELA ESTÁ FAZENDO** | Toda criatura é desenhada **no meio do seu trabalho**, não no meio de um confronto. Órtro conta o rebanho; a Esfinge pergunta; Equidna guarda a porta. | Trabalho é a coisa mais legível do mundo para 4 anos, e é literalmente o tema do livro (guardar). Substitui "fofura" por "ocupação". |
| 3 | **O OLHAR** | Olhos **abertos, com pupila, focados em alguma coisa dentro ou fora do quadro** — atentos, nunca vazios e nunca fixos no leitor com hostilidade. Exceção declarada: **a cabeça que ganie de Tifão** é a única que olha diretamente para a criança, e olha manso. | Olho com direção = ser com mente. Olho sem pupila = monstro. A diferença é de dois traços e decide a página. |
| 4 | **ESCALA EM VEZ DE CARETA** | O que dá tamanho ao perigo é **o tamanho da criatura e a altura do cenário** (o portão, a pedra alta, a árvore, a caverna), nunca dente, garra, baba ou contraluz. | Preserva a grandeza que a fonte descreve ("huge", "great and awful") sem gastar o rosto nisso. O rosto fica livre para ser legível. |
| 5 | **A VÁLVULA DO PERIGO** | Quando a cena precisa de risco, ele mora em **um único elemento periférico, não no rosto**: a cauda-dragão de Cérbero (o único agente hostil da fonte), o peso do céu em Atlas, o escuro do vão em Nemeia. | Segrega o susto. As cabeças ficam livres para ser amáveis, e o adulto continua vendo que a coisa é séria. |
| 6 | **O RECORTE — o que fica fora de quadro** | O corpo grande **entra e sai de quadro** (a cauda de Equidna, os anéis do Dragão, o corpo de Ladon na folhagem, o alto do portão de Cérbero). A criança nunca mede a criatura inteira. | É a mesma regra das cabeças não contáveis aplicada ao corpo: o que não se mede não se transforma em inventário. E mantém a escala sem esmagar a página. |

### 1.3 O que a MOLDURA faz × o que a AQUARELA faz (hierarquia X5, aplicada à inversão)

A hierarquia herdada do livro 1 não muda uma vírgula; ela **ganha um trabalho novo**:

- **A cerâmica ática (moldura, faixa, friso, ornamento, paleta)** é o que diz *"isto é um
  mito antigo, isto é sério"*. Ela carrega a **antiguidade e a dignidade** da criatura. É
  também onde a multidão pode virar padrão: cabeças de Ladon como palmeta, serpentes do dorso
  de Cérbero como friso — **ornamento, jamais anatomia contável**. A moldura é o adulto da
  página.
- **A aquarela Mucha (rosto, olho, gesto, pelo, drapeado)** é o que diz *"isto é alguém"*.
  Ela carrega a **amabilidade**. É a única camada autorizada a produzir doçura, e produz por
  **transparência e borda molhada** — pelo macio, luz quente atravessando, sem contorno duro
  de cartoon.
- Consequência operacional: **a doçura nunca é um traço de desenho, é um tratamento de
  pintura.** Se o ilustrador tiver de "fazer o bicho mais fofo", a resposta certa é *mais
  aquarela, luz mais quente, postura mais baixa* — nunca *olho maior, cabeça maior*.

### 1.4 O teste de aceitação da premissa (vale para toda criatura do livro)

Herdado do state (decisão 8) e generalizado. Mostrar a arte **sem texto** a um leitor de 4 anos:

- resposta que nomeia **o animal ou a pessoa** ("cachorro", "leão", "moça", "cobra grande") → ✅
- resposta **"monstro"** → ❌ refazer (falhou a amabilidade)
- resposta **"fofinho" / "bichinho"** → ❌ refazer (virou desenho animado)

Para o cap. 7 este teste é **duro e nomeado no state**. Para as demais criaturas é a barra
de leitura padrão do livro.

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

**(b) Cabeças NÃO CONTÁVEIS — a fórmula única do livro.** Regra dura do state, válida para
**Cérbero, Hidra e Ladon** (e estendida por coerência a **Tifão**, que tem o mesmo problema
em 824–825). O precedente que a criou: `10b` v3 e v4 do livro 1 foram **reprovadas** por
entregar o Cem-Mãos com **braços contáveis** (10 num caso) em vez de silhueta em arabesco.

> **FÓRMULA DAS TRÊS CAMADAS (colar em todo prompt de criatura poli-cefálica):**
> 1. **Camada nítida — 1 a 3 cabeças** em foco, rosto legível e amável. É onde mora a
>    premissa da inversão. Nunca 4 ou mais nítidas: 4 já se conta.
> 2. **Camada dissolvida — as demais** perdendo-se em **pelo, sombra, folhagem, movimento e
>    profundidade de campo**. Nenhuma delas fecha um contorno inteiro; nenhuma tem os dois
>    olhos visíveis; nenhuma se separa do vizinho por um vão de fundo. **A borda molhada da
>    aquarela é a ferramenta**: onde a criança tentaria contar, a tinta sangrou.
> 3. **Camada de ornamento — a multidão vira padrão** na moldura de vaso ático e no motivo
>    (palmetas que são perfis de serpente, friso que é dorso). Ali é lícito repetir muitas
>    vezes, porque **ornamento não se conta, se lê como textura**.
>
> **Teste de reprovação, mecânico:** se um adulto conseguir chegar a um número — qualquer
> número — olhando a imagem por 10 segundos, **reprovada**. Se o gerador entregar uma fileira
> de cabeças enfileiradas, separadas e equidistantes, **reprovada** (foi exatamente o defeito
> do Cem-Mãos).
> **Texto casado:** o miolo nunca diz um número ("as bocas", "mais cabeças do que se consegue
> contar"). Arte e texto contam a mesma coisa.

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
- **Lista negativa dura, executável (dossiê cap. 1 §2.3, adotada verbatim):**
  ❌ decote · ❌ cintura marcada · ❌ quadril evidenciado · ❌ boca entreaberta · ❌ olhar de
  canto · ❌ pose sinuosa "de sereia" · ❌ nudez parcial · ❌ drapeado colado ao corpo ·
  ❌ presas, língua bífida, olhos sem pupila, boca em bote, sangue · ❌ asas, coroa, chifres,
  múltiplas cabeças, veneno visível · ❌ ombros caídos, mão estendida para a saída, olhar
  para trás ("mãe abandonada") · ❌ tristeza no rosto (a regra-de-luto raciona a dor a 2
  frases no livro inteiro, e nenhuma delas é uma imagem).
- **A palavra "ninfa" da fonte é categoria de criatura, não erotismo.** Está registrado no
  dossiê de Tifão §2.2 e reafirmado aqui **como regra de arte**: a palavra `nymph` **não
  entra no prompt**. O bloco canônico de Equidna (§3.1) já está redigido sem ela.

---

## 2. As 9 decisões de arte fixadas — incorporadas como regras duras

Vêm de `producao/state/grega-equidna.json` §`decisoes_de_arte_fixadas`. **Não são reabertas
nem interpretadas neste guia.** Aqui elas viram regra executável e ganham o teste que as
verifica na validação.

| # | Decisão fixada (gate) | Regra dura neste guia | Teste de reprovação |
|---|---|---|---|
| **D1** | Full-bleed do cap. 6 = leão **VIVO** no capim curto; caverna de duas bocas vira vinheta; pele vestida é **obrigatória** com espaço reservado no `miolo.typ` | A página inteira do cap. 6 é o leão vivo olhando a estrada. As duas vinhetas (caverna / pele) são peças separadas e **ambas obrigatórias** | Leão morto, ferido, carregado ou ausente da full-bleed → reprovada. Vinheta da pele faltando → o capítulo não fecha |
| **D2** | **Cabeças NÃO CONTÁVEIS**: Cérbero, Hidra, Ladon (precedente Cem-Mãos reprovado no livro 1) | Fórmula das três camadas, §1.5(b). Estendida a **Tifão** por coerência de fórmula | Qualquer número atingível em 10 s → reprovada |
| **D3** | Pele do Leão como **manto/silhueta, NUNCA rosto-sobre-rosto** | A cabeça do leão jamais sobre a cabeça de Héracles. A pele cai do ombro ao chão (Diodoro 4.11.4: cobre o corpo inteiro). ⚠️ A fórmula "escalpo como elmo" é de **outro leão** (Apolod. 2.4.10) e está proibida no livro | Cabeça do leão como capuz/elmo → reprovada |
| **D4** | Atlas segura uma **ESFERA celeste**, nunca mapa-múndi | Esfera estrelada, sem continentes, sem meridianos de globo terrestre, sem cartografia | Qualquer continente visível → reprovada (anacronismo) |
| **D5** | As **DUAS cavernas** precisam ser visualmente distintas | **Equidna:** vertical, funda, sob pedra oca, **uma boca só**, lê-se como **descida**; luz = um traço de manhã cortando o chão; casa boa. **Nemeia:** horizontal, rasa, **passante, duas bocas na mesma imagem**, lê-se como **atravessar**; luz alta e seca. Rocha, cor, ângulo de câmera e formato do vão divergem de propósito | Se um leitor de 4 anos puder achar que é a mesma casa → reprovada |
| **D6** | **Equidna:** dignidade materna, sem sensualizar | §1.5(c) integral + bloco canônico §3.1 | Qualquer item da lista negativa presente → reprovada, sem discussão de mérito |
| **D7** | **Premissa NOVA:** as criaturas são protagonistas, rosto legível e amável na primeira olhada | §1.2 (seis alavancas) + §1.4 (teste de leitura) | "monstro" ou "fofinho" → refazer |
| **D8** | **Teste do cap. 7:** o leitor de 4 anos deve dizer "cachorro" | Prova de leitura obrigatória, sem texto, antes de a página ir à diagramação | "monstro" ❌ · "fofinho" ❌ → refazer |
| **D9** | **Última página = a caverna aberta com Equidna, no enquadramento do cap. 1** (contrato feito com a criança no cap. 3) | **Rima visual dura:** mesmo enquadramento, mesma caverna, **o mesmo rosto sem uma ruga a mais**. É o que torna "não morre nem envelhece" visível sem o texto gastar a frase | Qualquer diferença de idade, ruga, luz ou ângulo entre p. 10 e p. 40 → reprovada. **Produzir as duas na mesma sessão, do mesmo sheet** |

---

## 3. Descrições canônicas CONGELADAS

> **Regra de uso (herdada do livro 1 §4):** colar **verbatim**, em inglês, no bloco
> `[CHARACTERS]` de todo prompt em que o personagem apareça. **Nunca parafrasear.** Se a IA
> não acertar, muda-se a **estratégia de geração** (sheet anexada, mais variações, edição) —
> **não se afrouxa a descrição**.
>
> **Rótulo de autorização:** cada ficha traz, abaixo, o que é **[FONTE]** (está no texto
> antigo) e o que é **[NOSSO]** (escolha da série, compatível com a fonte mas não afirmada
> por ela). O spec exige a distinção — ela é o que impede inventar atributo "porque fica
> bonito". Onde este bloco e um dossiê divergirem, **este bloco prevalece**.

### 3.1 Equidna — 🔴 a ficha mais delicada do livro

`character-sheets/sheet-equidna.png` · caps. **1, 8A (retrato de origem), 8-última página**

```
ECHIDNA: a goddess, neither human nor Olympian — a third kind of being. From the waist up a
woman with bright, attentive, living eyes and a calm beautiful face, rendered as a PORTRAIT,
frontal or three-quarter, art nouveau watercolour: serene, present, maternal, dignified. Her
hair is gathered and pinned, never loose in the wind. Her torso is COVERED by a simple
loose-falling tunic with NO marked waist, from the neck down to where the human body meets
the serpent; that junction is ALWAYS hidden by the falling cloth or by the shadow of the
cave, and is NEVER the subject of the image. From the waist down she is a HUGE snake, great
and awful, with SPECKLED skin — large soft patches, not realistic reptile scales — and the
serpent body ENTERS AND LEAVES THE FRAME so the whole length is never measurable. She is
always framed at medium or American shot, AT A CHILD'S EYE LEVEL, always inside her deep
cave. Her posture is the posture of GUARDING: weight settled, shoulders level, gaze out and
forward. Age reads as a serene adult of no determinable age — never a girl, never an old
woman, and IDENTICAL in every appearance.
```
- **[FONTE]** (*Teog.* 295–305): deusa, terceira coisa · metade mulher de olhos vivos e faces
  belas · metade serpente enorme, "great and awful", de pele malhada · escala grande · sempre
  na caverna funda sob a pedra oca · **guardando** (304) · **não envelhece** (305).
- **[NOSSO]:** idade lida como adulta serena · a leitura materna dos "olhos vivos" · beleza de
  retrato · o torso coberto e a junção escondida · o cabelo recolhido · a cor das manchas
  (dentro da paleta hex herdada) · o enquadramento serial à altura da criança.
- ✂️ **Cortado de arte, texto, glossário e aparato:** "comedora de carne crua" (*Teog.* 301).
- 🔴 **Lista negativa de §1.5(c) é parte da ficha.** Reprovação sem discussão de mérito.
- ⚠️ **D9:** o rosto do cap. 1 e o do fecho do cap. 8 são **o mesmo rosto, sem uma ruga a
  mais**. O rosto do retrato de origem (8A) é **exatamente o mesmo**.

### 3.2 Cérbero — o rosto do livro

`character-sheets/sheet-cerbero.png` · caps. **7, 8A (mais novo), CAPA**

```
CERBERUS: an enormous dog sitting at the gate of the world below. He has MORE HEADS THAN CAN
BE COUNTED: two or three in sharp focus with fully readable, likeable dog faces, art nouveau
watercolour, and the rest dissolving away into fur, shadow and movement so that no one can
ever arrive at a number — no row of separate equidistant heads, no head with a complete
closed outline behind the first ones. Along his BACK, not his neck, run the heads of snakes
of all sorts, resolved as ornamental rhythm. His TAIL IS A DRAGON and it moves with a will of
its own — the tail carries all the danger of the picture. His ears are black and heavy and
CAN FALL — a lowered ear is the sign of a dog that yields. His voice is bronze: he does not
bark, he resounds. He SITS. That is what he does.
```
- **[FONTE]:** cauda de dragão · serpentes **no dorso** (Apolod. 2.5.12) · voz de bronze
  (*Teog.* 311) · orelhas pretas que baixam (Hor. *Odes* 2.13.34–35) · sentado no portão ·
  reage e cede, não ataca · nenhum número canônico (50 / 3 / 100 nas fontes → não contáveis).
- **[NOSSO]:** cor e textura do pelo · a leitura "cão grande esperando" · quais cabeças ficam
  nítidas.
- ✂️ **Cortado:** "come carne crua" (*Teog.* 311), mesma régua de Equidna.
- ❌ **Sem fonte, proibidos:** coleira · focinheira · olhos vermelhos · baba · chamas · língua
  de fora · sorriso · olhos de filhote · proporções de mascote · dentes à mostra.
- ⚠️ **Continuidade:** o Cérbero do cap. 8A é o **mesmo desenho, mais novo** — mesma fórmula
  de cabeças, mesma cauda. **Não redesenhar a criatura entre capítulos.**

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
becoming a cartoon. The two heads do DIFFERENT THINGS AT THE SAME TIME: one lowered, counting
the herd; the other raised, turned to the horizon of the sea. He is a working dog on his
shift, never a beast. He has NO serpent tail.
```
- **[FONTE]:** duas cabeças (Apolod. 2.5.10). **É o único número explícito da fonte no livro,
  e por isso a única criatura contável** — a regra D2 não se aplica a ele.
- **[NOSSO]:** porte, cor, pelo, e a leitura "duas cabeças fazendo coisas diferentes" — a
  fonte é **muda** sobre isso, e é justamente esse silêncio que autoriza a expressão.
- ❌ **A cauda de serpente dos vasos NÃO deve ser usada** — sem lastro textual antigo.
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
focus, at the front, with a readable and LIKEABLE face that simply watches without reacting;
every other head dissolves into the leaves as ORNAMENTAL PATTERN — palmette-like profiles
inside the foliage and inside the Attic border, never a countable row of discrete heads. He
speaks with many and divers sorts of voices at once, and the murmur reads as movement in the
leaves. He is IMMORTAL: he is never wounded, never bleeding, never fallen, never attacking.
```
- **[FONTE]** (Apolodoro 2.5.11): *drákōn* · **imortal** · cem cabeças · fala com muitas vozes
  diferentes (**o único da família que fala**) · filho de Tifão e Equidna · fica entre os
  hiperbóreos, aos pés de Atlas · três maçãs.
- **[NOSSO]:** que cabeça é a nítida · a cor · a leitura amável do rosto.
- ⚠️ **"Enrolado na árvore" é ICONOGRAFIA DECLARADA, não passagem.** Nem Apolodoro, nem
  Hesíodo, nem Apolônio dizem isso. **Liberado para a arte** — o livro herda a moldura de
  vaso ático, e a citação visual é coerente com a própria linguagem do livro. **Proibido no
  texto como "as fontes contam".**
- ⚠️ **Nome:** "Ladon" só existe na fonte **não adotada** (Apolônio 4.1396). Nota obrigatória
  na página de Fontes — não afeta a arte.
- 🔴 **A versão da morte por flechas não existe neste livro.** Nenhuma flecha, nenhuma ferida,
  nenhum dragão caído em nenhuma página.

### 3.6 Tifão

`character-sheets/sheet-tifao.png` · cap. **8A**

```
TYPHON: a vast standing figure with strong hands and tireless planted feet. SERPENT HEADS
GROW FROM HIS SHOULDERS — from the shoulders, not from a neck, and they are not human. Dark
flickering tongues; a glint of fire under the brows of some of them. The heads are NOT
COUNTABLE: three or four sharp in the foreground, all the rest dissolving into shadow and
movement. ONE head, low, near the ground, WHINES LIKE A PUPPY: neck curved down, small mouth
slightly open, large gentle eyes, turned TOWARD THE READER — it is the only head that looks
at the child. He does not advance; he is standing. NO wings, NO serpent legs, NO human giant
form.
```
- **[FONTE]** (*Teog.* 823–835): cabeças de serpente **nascendo dos ombros** · línguas escuras
  · fogo sob as sobrancelhas · vozes múltiplas, entre elas **o ganido de filhotes,
  "maravilhoso de ouvir" (833)** · mãos fortes, pés incansáveis.
- **[NOSSO]:** a tradução do **som** de filhote em **postura** de filhote — a fonte dá o som,
  a arte dá o pescoço curvo e o olho manso. É a chave da inversão neste capítulo, e é
  declarada como escolha.
- ❌ **Fora do canônico hesiódico:** asas · pernas-de-serpente · forma humanoide gigante
  (iconografia vascular posterior).
- ❌ **Linhas vermelhas:** nada de Zeus em quadro · nada de raio · nada de combate · nada de
  fogo consumindo terra · nada de corpo ferido ("maimed wreck", 857) · nenhuma arma.
- **Etna:** não entra nesta página. Se entrar, é **vinheta pequena de canto** na página
  seguinte, e **nunca** na página final. Contido: ferve, não aterroriza.
  (⚠️ o Etna é de **Píndaro, Pít. 1.15–28**, não de Hesíodo — nota da página de Fontes.)

### 3.7 A Esfinge

`character-sheets/sheet-esfinge.png` · caps. **5, 8A (ao fundo, menor e menos definida)**

```
THE SPHINX: the face of a WOMAN, the breast, feet and tail of a LIONESS, and the WINGS OF A
BIRD, spread. She SITS on a high rock above a road. Her face is the most expressive face in
the book after Echidna's: the face of someone who IS ASKING A QUESTION — curious, attentive,
alert. NOT threatening, NOT seductive — the same rule of dignity as Echidna. Art nouveau
watercolour, frontal or three-quarter. Sunlight passes through the feathers of the wings.
```
- **[FONTE]** (Apolodoro 3.5.8): rosto de mulher · peito, patas e cauda de leoa · **asas de
  ave** · **sentada** no alto · a estrada e Tebas · o enigma **aprendido com as Musas** (o que
  autoriza a leitura amável: a pergunta não é dela).
- **[NOSSO]:** a expressão de "quem está perguntando" · a cor · a luz atravessando as penas.
- 🔴 **As asas são OBRIGATÓRIAS** — é o que a separa da esfinge egípcia. A referência visual
  **não é Gizé**: é a esfinge de vaso ático e de estela funerária grega.
  ❌ Proibidos: touca *nemes* · barba postiça · deitada sem asas · areia · pirâmide.
- ⚠️ A mesma régua de não-sensualização de Equidna se aplica ao rosto.
- ⚠️ **Composição:** a beira do abismo **não é assunto** em página nenhuma (o destino dela é
  elidido; Apolodoro 3.5.8 vai só à página de Fontes). Nenhum osso, nenhum viajante caído,
  nenhuma sombra de ameaça no chão.

### 3.8 O Leão de Nemeia

`character-sheets/sheet-leao-nemeia.png` · caps. **6 (vivo + a pele), 8A (ao fundo)**

```
THE NEMEAN LION: a great lion, calm and present, lying in the short grass of the hills,
WATCHING THE ROAD. Art nouveau watercolour, at a child's eye level, likeable at first glance
WITHOUT becoming a mascot — no puppy eyes, no cute proportions. The fact from the source is
INVULNERABILITY, not ferocity: his hide must read as STONE LEATHER, dense and closed, and
that density is what the drawing has to say. NO roar, NO bared teeth, NO crouch to spring, NO
villain backlight.
```
- **[FONTE]** (Apolodoro 2.5.1): besta **invulnerável** (ἄτρωτον) · o vale de Nemeia · Hera o
  criou ali · o pedido é **a pele**.
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
long neck giving way. He is not a fierce beast tamed — he is an EXHAUSTED creature who is
finally resting. NO tongue out, NO bared teeth, NO drool.
```
- **[FONTE]** (Apolônio, *Argonáutica* IV ~127–178): tamanho imenso · anéis desenrolando-se
  pelo bosque · **olhos agudos e insones** (*áypnos*), o atributo definidor · a mandíbula que
  baixa ao chão · os anéis que se desenrolam.
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
OEDIPUS: small, at the foot of the rock, on the road, seen from three-quarters behind — a
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

**Hidra e Quimera** (cap. 8A apenas)
```
THE HYDRA: heads rising like reeds from the water, NOT COUNTABLE — the three-layer formula.
THE CHIMAERA: lion in front, goat in the middle, serpent behind — three heads, this creature
IS countable, it is her canonical form (Teog. 319-324). A single thread of smoke, NO open
flame.
```
⚠️ **Só existem no retrato de origem.** Não têm capítulo, não aparecem em mais nenhuma página,
e a quarta capa **não as promete** (requisito duro do spec).

**Personagens do livro 1:** **nenhum é reutilizado.** Nem Zeus nem Hermes aparecem em cena
neste livro (Zeus tem uma frase no cap. 8, e ela é a elipse; Atena leva as maçãs no corrido do
cap. 4, fora do brief de imagem). As sheets 4:3 do livro 1 ficam disponíveis, **não usadas**.
⚠️ Se o gate reabrir e puser Zeus em quadro, a sheet do livro 1 é a referência — não se
redesenha o personagem.

---

## 4. Character sheets a gerar

**8 folhas.** Critério herdado do livro 1: ganha sheet quem é recorrente **na ilustração** e
quem tem **custo de continuidade** se falhar — não quem é recorrente no texto.

| # | Sheet | Aparições | Por que ganha folha | Ordem |
|---|---|---|---|---|
| 1 | `sheet-equidna` | caps. 1, 8A, 8-última | 🔴 **A folha de referência de continuidade do livro.** Três aparições, uma delas uma **rima idêntica obrigatória** (D9). Se este rosto falhar, falham a primeira e a última página do livro | **P0 — produzir primeiro** |
| 2 | `sheet-cerbero` | caps. 7, 8A, **capa** | 🔴 É **o rosto do livro** (decisão da quarta capa) e está em três peças, uma delas a capa. Precisa passar no teste "cachorro" antes de qualquer cena | **P0** |
| 3 | `sheet-heracles` | caps. 4, 6-vinheta, 7 — **uma folha, dois estados** (sem pele / com a pele) | Três aparições + a transição de estado mais delicada do livro (D3). Mesmo padrão do Hermes adulto+bebê do livro 1 | P1 |
| 4 | `sheet-leao-nemeia` | caps. 6 (vivo), 6-vinheta (a pele), 8A | A **pele** tem de sair deste sheet, ou a marca emocional do livro não fecha entre os caps. 6 e 7 | P1 (junto com a 3) |
| 5 | `sheet-cerbero` ✔ | — | *(já contado)* | — |
| 6 | `sheet-ortro` | caps. 3, 8A | Duas aparições, e é a **única criatura contável** do livro — a folha existe para travar "duas, exatamente duas" contra a fórmula não-contável de todo o resto | P2 |
| 7 | `sheet-ladon` | caps. 4, 8A | Duas aparições + é o caso-teste da fórmula das três camadas (cem cabeças) | P2 |
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

| Peça | Página | Momento | Em quadro (nítidos) | Contagem | **OBRIGATORIAMENTE fora** | Função emocional |
|---|---|---|---|---|---|---|
| **`00-capa`** | capa | — | Cérbero | **1** ✔ | qualquer herói, qualquer arma, tipografia | *"eu quero conhecer esse cachorro"* — a promessa da inversão feita antes de abrir o livro |
| **`01-equidna-a-caverna-e-as-portas`** | p. 10 | **depois** das partidas — nada em curso | Equidna | **1** ✔ | Tifão · Héracles · qualquer herói · qualquer arma · **qualquer criatura nítida** nas cinco marcas do mapa (só lugar ou silhueta) · qualquer gesto de despedida | **Um mapa se abrindo.** A casa é boa, a porta é dela, e o mundo lá fora ganhou guarda. Zero luto, zero presságio |
| **`02-dragao-da-colquida`** | p. 14 | **o instante em que a mandíbula toca o chão** | Dragão · Medeia · Jasão · o carvalho com o Velo | **4/5** ✔ | 🔴 **nenhuma arma, em nenhum plano** · sangue · ferida · corpo · qualquer coisa que insinue morte · Orfeu (é do cap. 7) · gestual de feiticeira | **Descanso.** O capítulo que desarma a antecipação de morte do livro. O bicho exausto que finalmente dorme |
| **`03-ortro-o-turno-de-trabalho`** | p. 18 | **o turno**, ao entardecer, o rebanho descendo para a água | Órtro · Euritião · o gado vermelho (friso) · Eritia como paisagem | **≤5** ✔ | 🔴 **Héracles** · a clava · qualquer sombra ameaçadora · sangue · corpo · Gerião (dono ausente) · número legível de vacas · cauda de serpente | **Rotina, e ela é bonita.** A morte não se ilustra: a página é o dia comum de que ele foi tirado |
| **`04-ladon-e-o-pedido-da-almofada`** | p. 22 | **"durante"** — Atlas já com o céu de volta, Héracles ainda com uma maçã na mão | Atlas · Héracles (**sem a pele**) · uma cabeça de Ladon · as três maçãs · Hespérides *(5ª, opcional)* | **4–5/5** ✔ | 🔴 **a pele do Leão** (nasce no cap. 6) · flecha · ferida · dragão caído · **mapa-múndi/globo com continentes** (D4) · cabeça contável · clava erguida · deserto | **Comédia de negociação.** Ri-se *com* Atlas, nunca *dele*. A porta mais bem guardada do mundo não foi tocada |
| **`05-a-pergunta-da-esfinge`** | p. 24 | a Esfinge acabou de abrir as asas e **está perguntando**; ninguém se mexe | Esfinge · Édipo · a estrada · Tebas ao fundo | **≤4/5** ✔ | 🔴 **a beira do abismo como assunto** · osso · viajante caído · sombra de ameaça no chão · coroa · trono · qualquer coisa que revele a resposta | **O livro para e o leitor joga.** A única porta que não abre pela força |
| **`06-o-leao-antes`** | p. 28 | **antes de tudo** — o leão vivo, deitado no capim curto, olhando a estrada | o Leão | **1** ✔ | 🔴 **Héracles** · clava · flecha · sombra ameaçadora · rugido · dentes · bote · contraluz de vilão · floresta, ruínas, rebanhos (as fontes não dão) | **O dono da casa, em casa.** A invulnerabilidade lida como couro de pedra, não como ferocidade |
| **`07-cerbero-o-abraco-sem-armas`** | p. 33 | **o abraço** — braços em volta da **cabeça** (Apolod. 2.5.12), a fera cedendo | Héracles (com a pele, manto) · Cérbero · a cauda-dragão como massa própria · o portão | **4/5** ✔ | 🔴 **nenhuma arma na mão de ninguém** · sangue · ferimento visível · dor no rosto de Héracles · alma, morto ou figura ao fundo · coleira, focinheira, chamas, baba, olhos vermelhos, língua de fora, sorriso, olhos de filhote, proporções de mascote · **rosto-sobre-rosto** (D3) | **A única imagem do livro em que Héracles e uma criatura se tocam sem que uma morra.** No chão, nítidos: **o arco e a clava largados** — são o assunto tanto quanto o abraço |
| **`08a-tifao`** | p. 36 | **antes** de qualquer confronto — ele está de pé, não avança | Tifão | **1** ✔ | 🔴 **Zeus** · o raio · combate · fogo consumindo terra · corpo ferido · qualquer arma · o Etna | **O pai, e ele ganie.** A cabeça baixa que olha para a criança é o assunto emocional da página e a chave da inversão |
| **`08b-o-retrato-de-origem`** | p. 38 | **o tempo do nascimento da prole** — retrato de família, nunca "o dia" | Equidna (centro) · Órtro · Cérbero · Hidra · Quimera | **5/5** ✔ | 🔴 **Tifão** (tem a própria página) · **qualquer legenda ou composição que declare que todos nasceram juntos** · porta, portão, paisagem externa · tristeza · presságio · sombra pesando · ar de despedida · carne, osso, boca vermelha | **"Esta é a família."** O antes de tudo, sem uma gota de luto. Ladon ao fundo contornando a caverna; **Esfinge e Leão mais atrás, menores e menos definidos** (outra geração — **nunca recém-nascidos ao lado dos demais**), ambos fora da contagem |

### 5.1 Peças contidas (não full-bleed, mas obrigatórias)

| Peça | Onde | Conteúdo | Fora de quadro |
|---|---|---|---|
| **Vinheta 6.1 — "as duas bocas"** | cap. 6 | A caverna **vista de fora**, encosta na horizontal, **as duas bocas na mesma imagem**: a da direita entulhada por mão humana, a da esquerda aberta e **só escuro**. A clava **no chão, largada** | 🔴 **o Leão** · qualquer coisa legível dentro do negro (silhueta, olho, movimento) · **a clava em golpe** |
| **Vinheta 6.2 — "a pele"** (🔴 OBRIGATÓRIA, espaço reservado no `miolo.typ` — D1) | cap. 6 | Héracles **de costas**, descendo a colina, a pele como **manto de corpo inteiro**, do ombro ao chão. Ao longe, baixinho, **os telhados de Cleonas** | 🔴 **rosto-sobre-rosto** (D3) · esfolamento · o corpo do leão sendo carregado · troféu erguido |
| **A última página do livro** (p. 40 — D9) | cap. 8 | **A caverna, no enquadramento exato da p. 10**, mesmo rosto sem uma ruga a mais. Só Equidna. O traço de luz de manhã cortando o chão é o único movimento | 🔴 **qualquer filho** · qualquer silhueta · o mapa de portas no alto · olhar para a saída · mão estendida · ombros caídos · o Etna |

### 5.2 Contratos de continuidade — verificados imagem a imagem

1. **D9 — a rima da caverna:** p. 10 e p. 40 são **a mesma imagem com uma diferença só** (na
   p. 10 há o mapa de portas na faixa alta; na p. 40 não há). **Gerar as duas na mesma sessão,
   do mesmo sheet, uma logo após a outra.**
2. **D5 — as duas cavernas:** Equidna (vertical, funda, uma boca, descida, traço de luz de
   manhã) × Nemeia (horizontal, rasa, passante, duas bocas, luz alta e seca). Cruzar as duas
   imagens lado a lado na validação. Some-se a elas uma terceira paisagem que também não pode
   se confundir: o **bosque da Cólquida** (mata aberta e vertical, com água ao lado, noite
   quente) e uma quarta, **Eritia** (aberta e marítima, sol baixo).
3. **O portão do mundo de baixo** é o mesmo no cap. 7 e no cap. 8A, e **Cérbero é o mesmo
   desenho, mais novo** no 8A.
4. **A pele** do cap. 6 (vinheta 2) e a do cap. 7 são **o mesmo objeto**, do mesmo sheet.
5. **O rosto de Equidna** é idêntico nas três aparições (1, 8A, 8-última).
6. **Órtro é o único contável do livro.** Todo o resto obedece a D2.

### 5.3 Ordem de produção

**P0** sheets Equidna + Cérbero → **P1** `01` e a última página (juntas, D9) → **P2** sheets
Héracles + Leão → **P3** `07` (o teste "cachorro" trava a capa) → **P4** capa → **P5** sheets
Órtro, Ladon, Tifão, Esfinge → **P6** cenas `02`–`06` → **P7** `08a` e `08b` (o retrato de
origem é a página de 5 figuras, e depende de 5 sheets aprovados) → **P8** vinhetas do cap. 6.

Racional: as duas peças que decidem o livro são **o rosto de Equidna** (abre e fecha) e **o
Cérbero da capa**. Se qualquer das duas travar, trava antes de 9 páginas terem sido gastas.

---

## 6. A capa — Cérbero é o rosto do livro

Requisito **duro** do spec (§Requisitos herdados, item 7, quarta-capa): a capa vende por
Cérbero e pela adivinha; **não promete Hidra nem Quimera**. O grid é o da série
(`references/serie-padroes.md`), idêntico entre livros: título da série no topo, título do
livro abaixo, ilustração central com moldura cultural, **arco Mucha cujo perfil interno é
meandro** — o arco é o elemento serial; **o que muda por livro é o ornamento que o preenche**.

**Composição proposta:**

- **Figura única, frontal, dentro do arco: Cérbero SENTADO no umbral do portão**, de frente,
  ocupando a altura do arco. **Duas cabeças nítidas e legíveis** (a fórmula das três camadas
  na sua forma mais econômica — a capa é onde a legibilidade importa mais), a terceira já
  meio dissolvida em pelo e sombra, e nada além disso contável.
- **Uma orelha começando a baixar.** É a alavanca principal da amabilidade (Horácio), é
  fonte, e é o traço que faz o leitor de 4 anos dizer "cachorro" à distância de uma prateleira.
- **A escala faz o trabalho do susto:** o portão atrás dele é **cortado pela borda de cima** e
  o alto do arco. O adulto entende que a coisa é enorme; a criança vê um cachorro esperando.
- **A cauda de dragão** aparece **enrolada em torno da base do arco, virando ornamento** —
  entra na moldura, não no corpo. É onde o perigo mora, e na capa ele mora **na cerâmica**,
  não no rosto. Isso é a hierarquia X5 fazendo exatamente o que ela existe para fazer.
- **As serpentes do dorso** viram **friso** dentro da faixa do arco: a criatura e o ornamento
  se costuram, e é isso que diz "mito antigo" sem uma palavra.
- **Ornamento do arco (o que muda por livro):** em vez do meandro puro do livro 1, o perfil
  interno alterna **meandro e palmetas em forma de perfil de serpente** — a assinatura visual
  desta família. Serial no formato, próprio no motivo.
- **Luz e paleta:** negro de verniz `#1B1613` no vão do portão (o ponto mais escuro), ocre
  `#C88A3D` e creme `#EDD9B4` no pelo, terracota `#C1440E` na pedra, fundo de papel `#F6EFE2`.
  **Nenhum vermelho de sangue, nenhum fogo, nenhum contraluz de vilão.**
- **Nenhuma arma, nenhum herói, ninguém mais em quadro.** Contagem: **1 figura nítida** ✔.
- **A arte de capa é gerada SEM tipografia** (`no text, no lettering`). Título da série,
  título do livro e autoria são compostos em Typst pelo `mito-diagramador` (Fase 4), na zona
  reservada do **terço superior**, sobre fundo de baixo contraste. **Nenhuma letra sai do
  gerador — nem como enfeite.**
- 🔴 **Prova de leitura da capa, antes de tudo:** mostrar a capa sem tipografia a um leitor de
  4 anos. **"Cachorro" ✅ · "monstro" ❌ · "fofinho" ❌.** A capa não passa para a Fase 4 sem
  este veredito escrito.

⚠️ **Pendências seriais que a capa herda e não resolve** (donos: `mito-editor-chefe` e
`mito-diagramador`, Fase 4/5): a **rotulagem/numeração de spin-off** no grid; a **tipografia
da série**, ainda `[a definir]` em `serie-padroes.md`. A arte não depende de nenhuma das
duas; o grid final depende.

---

## 7. Barra de validação — o checklist deste livro

Herda os 9 itens do livro 1 §7 (cena certa · personagem fiel atributo por atributo · estilo da
série · camada cultural na camada certa · teto R4.2 · legível para 4 anos · proibições do
capítulo · técnica · entrega 2492×2492). **Acrescenta cinco itens, próprios da inversão:**

10. **Teste da premissa (D7):** um leitor de 4 anos, sem texto, nomeia o animal ou a pessoa?
    "monstro" ❌ · "fofinho" ❌.
11. **Teste do não-contável (D2):** um adulto chega a um número em 10 segundos? Então
    reprovada. Fileira de cabeças separadas e equidistantes = o defeito do Cem-Mãos = reprovada.
12. **Régua de Equidna (D6):** varrer a lista negativa de §1.5(c) item a item. **Um item
    presente reprova a imagem inteira**, sem discussão de mérito de composição.
13. **Contratos de continuidade (§5.2):** cruzar a candidata com a peça-par (p. 10 × p. 40;
    as quatro paisagens; o portão; a pele; o rosto de Equidna).
14. **Autorização de atributo:** todo elemento visível da criatura é rastreável a **[FONTE]**
    ou a um **[NOSSO]** declarado nesta ficha? Elemento não rastreável = invenção = reprovada.

**Reprovação vem com direção concreta** ("baixe a orelha esquerda; a quarta cabeça fechou
contorno e virou contável"), nunca com adjetivo. **Máximo 3 rodadas por imagem**; travou, vai
ao gate com as candidatas.

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
   na moldura, exatamente onde o livro 1 a permite. **Não há violação**, mas o ilustrador vai
   ter a impressão de que há; fica registrado para não virar objeção na Fase 3b.
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
6. **Pendência técnica herdada, ainda aberta:** os `objectID` das referências do Met continuam
   por verificar (a API estava bloqueada na sessão de fundação do livro 1). Tarefa do
   `mito-ilustrador` no início da Fase 3b, com a rede em "Full".
7. **Pendência de credencial, herdada e não resolvida:** Chromium dirigido por agente × API com
   chave. Sem conta, o Gemini recusa gerar imagem. E o gerador **não expõe seed** — a
   consistência é obrigação da sheet + descrição verbatim + referência anexada. Risco a
   registrar de novo no gate da Fase 3b.
