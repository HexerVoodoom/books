# Pacotes de geração — *Equidna e as portas do mundo* (livro 2)

> **Fase 3a, entregável de fecho.** Dono: `mito-ilustrador`. Produzido em 2026-09-01.
> **Escolha de formato declarada: ARQUIVO ÚNICO.** Um `pacotes/` com 22 arquivos separaria o
> `[BASE]` (que é idêntico em 22 prompts) de si mesmo e criaria 22 lugares para ele divergir —
> que é exatamente o defeito que o §0.1 do guia existe para impedir. Arquivo único, com o
> `[BASE]` escrito uma vez e citado por referência em cada pacote.
>
> **Fonte de verdade:** `guia-de-estilo.md` **v2** (congelado) · `referencias-visuais.md` ·
> `pilotos/relatorio-pilotos.md` · os 8 capítulos, seção "Cena da ilustração".
> **Nada aqui inventa cena, estilo ou atributo.** Onde este arquivo e o guia divergirem, o guia
> manda e este arquivo está errado.

---

## 0. Como usar este arquivo

### 0.1 O que é um pacote

Cada peça traz seis coisas, nesta ordem:

1. **PROMPT** — texto integral em inglês, pronto para colar. Já inclui `[BASE]`, `[CHARACTERS]`
   verbatim, `[SCENE]`, `[MUST NOT APPEAR]`, o bloco da banda ornamental quando houver, e a
   linha de proporção no fim.
2. **`[MUST NOT APPEAR]`** — ≤7 itens, já embutidos no prompt (regra §7.1).
3. **BANDA ORNAMENTAL** — bloco imperativo separado, só nas peças poli-cefálicas.
4. **REFERÊNCIA A ANEXAR** — da tabela §9.2, ou "nenhuma" com a razão.
5. **CHECKLIST DE APROVAÇÃO** — itens objetivos, decide aprovar/refazer.
6. **ORDEM E DEPENDÊNCIAS** — o que precisa estar aprovado antes; plano B quando aplicável.

### 0.2 `[BASE]` — colar no topo de TODO prompt, verbatim

```
[SERIES STYLE] Children's book full-page illustration, Alphonse Mucha art nouveau
composition with an ornamental border, soft watercolor rendering: translucent washes, wet
blooming edges, visible cold-press paper grain.
[GREEK CULTURAL LAYER — ORNAMENT AND PALETTE ONLY] The border is an Attic-vase band: Greek
key meander, palmettes and the Greek ornamental repertoire, painted in watercolour, never as
flat glossy slip. Palette of Attic pottery: terracotta #C1440E, glaze black #1B1613, clay
ochre #C88A3D, clay cream #EDD9B4, on a warm paper ground #F6EFE2, with Aegean blue #6FA8B8
and #1F5A6E for sea and sky.
[STRICT STYLE HIERARCHY — NON-NEGOTIABLE] The Attic ceramic governs ONLY the frame, the
ornament and the palette. Every character of the story is rendered 100% Mucha watercolour:
faces frontal or three-quarter, expressive, readable eyes, emotion legible to a four-year-old
child, hair and drapery in art nouveau arabesque. NEVER draw a story character as a rigid
black-figure profile, never a frontal eye on a profile face, never flat vase-painting
anatomy, never a blank or masked face. Silhouette figures are allowed only in the ornamental
border and for background crowds.
[LIGHT ON THE FACE — MANDATORY] No creature face is ever in backlight, in silhouette, or in
shadow that hides the eyes. Every sharp face receives the warm light of the page, ochre
#C88A3D and cream #EDD9B4. Both eyes of every sharp face must be plainly readable.
```

> ⚠️ **Um desvio declarado do `[BASE]` do livro 1:** "egg-and-dart" foi trocado por "the Greek
> ornamental repertoire", por ordem do **§1.3a** (ovas-e-dardos é ornamento de arquitetura, não
> de vaso — chamá-lo de ornamento de vaso era erro de rótulo). Nenhuma outra palavra mudou.
> O bloco `[LIGHT ON THE FACE]` é acréscimo do **§1.2b**, que é regra transversal deste livro.

### 0.3 As duas linhas de fechamento — nunca omitir

**Full-bleeds e capa** (§0.1, provado 3/3 nos pilotos: 2048×2048 exato):
```
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

**Character sheets** (única exceção autorizada, §0.1):
```
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

**Prompt sem linha de fechamento = reprovação automática de entrega.** Não se discute mérito
da imagem.

### 0.4 Redação POSITIVA — as duas camadas, verbatim

Colar assim, sem reescrever. O piloto 1 provou que o gerador **obedece contagem positiva com
teto** e **ignora negação de contabilidade**.

**Camada 1:**
```
EXACTLY THREE sharp heads in front, side by side and overlapping, each with a fully readable
and likeable face. Three. Not four, not five.
```
(Na capa: **DUAS**. Ver o pacote da capa.)

**Camada 2 — descrita PELA TÉCNICA:**
```
BEHIND them, ONE SINGLE CONTINUOUS MASS of wet-on-wet watercolour fur: one silhouette, one
body of paint, with soft bleeding edges everywhere and NO outline anywhere. The mass
DISSOLVES INTO THE LIGHT — into warm cream #EDD9B4 and ochre #C88A3D — never into black,
never into a dark gap. There are NO EYES in this mass at all.
```

⛔ **PROIBIDO escrever, em qualquer prompt deste livro:** "less detailed", "less defined",
"blurred", "out of focus", "in the background", "menos detalhada". Foi assim que a camada 2
virou anatomia contável no piloto 1.

### 0.5 Camada 3 — bloco imperativo SEPARADO (só peças poli-cefálicas)

No piloto 1 a camada 3 foi **ignorada por completo** por estar diluída como terceiro item de
uma lista. Passa a ser bloco próprio, com cabeçalho próprio, **colado depois de `[SCENE]` e
antes de `[MUST NOT APPEAR]`**:

```
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band, apart from the geometric border: an ORIENTALIZING ANIMAL FRIEZE
in the Corinthian manner — repeated animal profiles in flat silhouette, all walking the same
way, over a dense field of rosettes. This is where the many become texture. Ornament, never
anatomy. This band is SEPARATED from the geometric meander border by a plain fillet, and NO
creature of the story is ever drawn inside the geometric meander border itself.
```

### 0.6 Procedimento de sessão — obrigatório

1. **Aba do Gemini em primeiro plano.** Em segundo plano a geração trava.
2. **Uma conversa nova por variação.** "Refazer" **não regenera** (provado por hash MD5).
   Piso do §0.3 do guia: **3 conversas** para `sheet-equidna`, `sheet-cerbero`, `00-capa`,
   `01` e a p. 40; **2 conversas** para os demais full-bleeds e sheets; **1** para vinhetas.
3. **Clicar por `ref`**, nunca por coordenada. A 1ª tentativa de digitar costuma falhar; a 2ª
   pega. Conferir por screenshot que o texto entrou antes de enviar.
4. **Prompt digitado como parágrafo único** (quebras de linha viram espaço — `Enter` envia).
   Nenhuma palavra alterada, resumida ou reordenada. Travessões `—` podem ser digitados `-`.
5. Esperar **~50–60 s**. Recarregar a conversa pela URL antes de baixar. Baixar imediatamente,
   sem sair da conversa. Conferir MD5 contra o download anterior.
6. 🔴 **RECODIFICAÇÃO OBRIGATÓRIA (§0.2 do guia).** O Gemini entrega **JPEG com extensão de
   imagem** (`.jfif` / `.png`) e o **Typst rejeita com `Invalid PNG signature`**.
   - o arquivo do download vai **cru** para `ilustracoes/brutos/<conversa>.<ext>`;
   - recodificar para **PNG real** antes de virar asset em `ilustracoes/`;
   - **verificar a assinatura `\x89PNG`, não a extensão.** Um arquivo que falha a assinatura
     reprova o lote inteiro na abertura da Fase 4.
   - só depois entra o upscale declarado (Real-ESRGAN x4plus, 2048 → 2492 px, fator 1,22×).
7. **Ponto de parada:** ao fim da sessão, ou ao atingir **15 gerações na mesma aba**, parar,
   registrar no `log-geracao.md` e reabrir em sessão nova. Insistir em aba degradada é o padrão
   que custou o livro 1.
8. **Toda referência anexada entra no `log-geracao.md`**: qual REF, por quê, o que se pediu.

### 0.7 Plano B — gatilho único, vale para toda peça poli-cefálica

> **Se a peça reprovar DUAS vezes pelo item 11 (contagem), adota-se o DESENHO DE LADON na 3ª
> rodada: UMA cabeça nítida e todo o resto na folhagem / no pelo / no friso ornamental.**
> Não é decisão nova — está no guia §1.5b e §3.5. O rebaixamento entra no `log-geracao.md`
> nomeando a peça e a rodada. Teto de rodadas continua **3**.

**Redação do plano B, pronta para substituir a camada 1 + camada 2:**
```
ONE SINGLE HEAD is sharply in focus, at the front, with a fully readable and likeable face
receiving the warm light. Every other head is not drawn as a head at all: the many become
ORNAMENT — palmette-like profiles repeated inside the fur, the foliage and the separate
animal frieze, flat and rhythmic, the way a Corinthian band repeats. Ornament, never anatomy.
```

### 0.8 Checklist comum — vale para as 22 peças, não se repete em cada pacote

| # | Item | Reprova quando |
|---|---|---|
| C1 | Proporção | full-bleed ≠ quadrado · sheet ≠ 4:3 |
| C2 | Resolução | lado maior < 1024 px (ideal 2048) |
| C3 | Texto | qualquer letra, marca d'água, legenda, seta |
| C4 | Hierarquia X5 | personagem em perfil rígido de figura negra · olho frontal em rosto de perfil · rosto inexpresso ou mascarado |
| C5 | Camada cultural | criatura desenhada **dentro** da faixa geométrica (Banda A) |
| C6 | Luz no rosto (§1.2b) | rosto nítido em contraluz, silhueta ou sombra · olhos ilegíveis a 30 cm impressos |
| C7 | Teto R4.2 | mais de 5 figuras nítidas |
| C8 | Recodificação | arquivo entregue sem assinatura `\x89PNG` |
| C9 | Registro | geração sem linha no `log-geracao.md` (conversa, REF anexada, veredito) |

---

# PARTE I — CHARACTER SHEETS (8 peças)

> **Regra sem exceção:** sem sheet aprovado, **nenhuma cena daquele personagem é briefada**.
> Sheets em **4:3**; cenas e capa em **1:1**.

---

## S1 · `sheet-equidna` — P0, a primeira peça do livro

**Piso de variações: 3 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
ECHIDNA: a goddess, neither human nor Olympian — a third kind of being. From the waist up a
woman with bright, attentive, living eyes and a calm beautiful face, rendered as a PORTRAIT,
frontal or three-quarter, art nouveau watercolour: serene, present, maternal, dignified. Her
face receives the warm light of the scene; it is NEVER in backlight or shadow. Her hair is
gathered and pinned, never loose in the wind. Her torso is COVERED by a simple loose-falling
tunic WITH SLEEVES THAT COVER THE SHOULDERS and NO marked waist, from the neck down to where
the human body meets the serpent; that junction is ALWAYS hidden by the falling cloth or by
the shadow of the cave, and is NEVER the subject of the image. From the waist down she is a
HUGE snake, great and awful, with SPECKLED skin — LARGE, ROUNDED, SOFT PATCHES, never
realistic reptile scales and NEVER a diamond or zigzag pattern along the back. The serpent
body lies BESIDE AND BEHIND her, going INWARD into the cave: it never comes toward the
viewer and never crosses the bottom edge of the frame, and it ENTERS AND LEAVES THE FRAME so
the whole length is never measurable. She is always framed at medium or American shot, AT A
CHILD'S EYE LEVEL, always inside her deep cave. Her posture is the posture of GUARDING:
weight settled, shoulders level, gaze out and forward. Age reads as a serene adult of no
determinable age — never a girl, never an old woman, and IDENTICAL in every appearance.
[SHEET LAYOUT]
A character model reference sheet of this ONE single character, laid out on a plain warm
paper ground #F6EFE2. THREE studies of the SAME woman, the same face, the same age, the same
hair, the same tunic, side by side: (1) frontal medium shot, guarding, gaze out and forward;
(2) three-quarter view of the same figure; (3) a large head-and-shoulders study of the face
alone, calm and present, so the face can be matched exactly in later pictures. Between them,
one small study of the SPECKLED serpent skin — large, rounded, soft patches — and one small
study of the gathered and pinned hair. Consistent scale, consistent colour, even flat light,
no dramatic shadow anywhere.
[MUST NOT APPEAR]
No neckline or bare chest, no marked waist, no emphasised hip, no parted lips, no sideways
glance, no sinuous mermaid pose. No fangs, no forked tongue, no pupil-less eyes, no striking
open mouth. No diamond pattern and no zigzag band along the back. No wings, no crown, no
horns, no second head. No sadness, no drooping shoulders, no hand reaching for the exit.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens, escolhidos e verificáveis a olho nu

1. decote / peito nu · 2. cintura marcada ou quadril evidenciado · 3. boca entreaberta ou
olhar de canto · 4. presas, língua bífida, olhos sem pupila · 5. **padrão de losango ou
ziguezague nas costas** · 6. asas, coroa, chifres, segunda cabeça · 7. tristeza (ombros
caídos, mão para a saída).

*(Os itens 1–3 são a régua D6 comprimida; a lista negativa completa do §1.5(c) continua no guia
como racional de briefing e é varrida item a item no checklist abaixo — mas o que vai NO
PROMPT são estes 7.)*

### BANDA ORNAMENTAL
**Não se aplica** — Equidna não é poli-cefálica. Sheet não leva moldura ornamental (é folha de
referência, não asset de página).

### REFERÊNCIA A ANEXAR
**Nenhuma.** Razão declarada (§9.2, último parágrafo): a arte grega antiga **quase não
representa Equidna** e não há tipo canônico; a única figura vizinha é a anguípede, sempre em
combate. Não existe referência da qual divergir e não há CC0 utilizável. **A ficha congelada
é a especificação** — figura humana que a fórmula Mucha/aquarela resolve sozinha.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9 (§0.8), com C1 = **4:3**
- [ ] **Régua D6 varrida item a item** contra a lista completa do §1.5(c) — **um item presente
      reprova a imagem inteira, sem discussão de mérito de composição**
- [ ] Veste **cobre os ombros** (chamada do diretor saída dos pilotos: nas duas gerações a
      veste deixou ombros e braços nus)
- [ ] Junção corpo-serpente **coberta** pela veste ou pela sombra
- [ ] Manchas **grandes e arredondadas**; **zero** losango, zero ziguezague dorsal
- [ ] Corpo-serpente **ao lado e atrás**, indo para dentro; não cruza a borda inferior
- [ ] Cabelo **recolhido e preso**
- [ ] As três vistas são **a mesma mulher** — mesmo rosto, mesma idade, mesmo cabelo. Se as
      três vistas da própria folha já divergirem, a folha não serve de âncora: **refazer**
- [ ] **Teste de nomeação (§1.4a, protocolo integral):** P1 aberta *"o que é isso?"* →
      "moça" / "mulher" / "cobra grande" ✅ · "monstro" ❌ · "fofinho" ❌.
      P2 *"você ia querer ficar perto dela?"* → negativa ❌.
      Veredito registrado **verbatim** no `log-geracao.md`, com o rótulo **"proxy, sem leitor
      real"** enquanto o §1.4b durar

### ORDEM E DEPENDÊNCIAS
**P0 — é a primeira peça do livro.** Sem dependência de entrada.
**É a folha que vai ser ANEXADA** nas conversas de `01`, `08b` e da p. 40 (§2.1). Se ela
falhar, falham a primeira e a última página do livro — por isso ela vem antes de tudo.

---

## S2 · `sheet-cerbero` — P0, o rosto do livro · 🔴 POLI-CEFÁLICA

**Piso de variações: 3 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
CERBERUS: an enormous dog sitting at the gate of the world below. EXACTLY THREE sharp heads
in front, side by side and overlapping, each with a fully readable and likeable dog face in
art nouveau watercolour, each face receiving the warm light. Three. Not four, not five.
BEHIND them, ONE SINGLE CONTINUOUS MASS of wet-on-wet watercolour fur: one silhouette, one
body of paint, soft bleeding edges everywhere, NO outline anywhere, NO eyes at all in that
mass; it dissolves INTO THE LIGHT, into warm cream #EDD9B4 and ochre #C88A3D, never into
black and never into a dark gap. Along his BACK, not his neck, run the heads of snakes of all
sorts, resolved as ornamental rhythm. His TAIL IS A DRAGON and it moves with a will of its
own — the tail carries all the danger of the picture, and it has no open mouth, no visible
teeth and no eye turned to the viewer. His ears are black and heavy and CAN FALL — a lowered
ear is the sign of a dog that yields. His voice is bronze: he does not bark, he resounds. He
SITS. That is what he does.
[SHEET LAYOUT]
A character model reference sheet of this ONE single animal, on a plain warm paper ground
#F6EFE2. THREE studies of the SAME dog: (1) sitting, frontal, at a child's eye level, the
whole animal; (2) the same dog in three-quarter view, sitting; (3) a large study of the
THREE sharp faces alone, close, so the faces can be matched exactly in later pictures — in
this study ONE EAR IS CLEARLY FALLING, heavy and black, and that fallen ear must be the most
legible thing on the sheet. Beside them, one small separate study of the DRAGON TAIL as
ornament, closed mouth, and one small study of the ornamental snake rhythm along the back.
Consistent scale, consistent colour, even flat light.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band along the lower part of the sheet, apart from any geometric
border: an ORIENTALIZING ANIMAL FRIEZE in the Corinthian manner — repeated animal profiles
in flat silhouette, all walking the same way, over a dense field of rosettes. This is where
the many become texture. Ornament, never anatomy. This band is SEPARATED from any geometric
meander by a plain fillet, and NO creature is ever drawn inside the geometric meander itself.
[MUST NOT APPEAR]
No collar, no muzzle, no red eyes, no drool, no flames, no lolling tongue, no smile, no puppy
eyes, no mascot proportions, no bared teeth on any head and none on the tail. No crouch to
spring. No human figure, no hero, no weapon of any kind, no blood. No snake growing from a
NECK — the snakes run along the BACK only. No fourth sharp face.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens
1. coleira ou focinheira · 2. olhos vermelhos, baba, chamas · 3. língua de fora, sorriso,
olhos de filhote, proporções de mascote · 4. **dentes à mostra — nas cabeças E na cauda** ·
5. bote / investida · 6. qualquer figura humana, herói ou arma · 7. **serpente saindo do
pescoço** (é do dorso, e o piloto não errou nisso — mas é o erro clássico do tipo antigo).

### BANDA ORNAMENTAL
**SIM — bloco separado, colado como está acima.** No piloto 1 a camada 3 foi ignorada por
estar diluída na lista; foi a falha que mandou toda a multidão para a anatomia. **Se a banda
não aparecer na imagem, a peça reprova mesmo com as três cabeças certas** — porque sem ela a
fórmula perdeu a camada que absorve a multidão.

### REFERÊNCIA A ANEXAR
**REF-02** (ânfora bilíngue **ática**, Pintor de Andokides, Louvre F 204, CC0) —
**é ela que carrega o estilo e o desenho grego de CÃO** (peito, patas, garupa, orelha). É a
referência de "cachorro" de que o teste D8 depende.
**+ REF-01** (hídria **ceretana**, Louvre E 701, DP) — só para as **serpentes do dorso
resolvidas como laçada ornamental**.
**Nunca mais de duas.** 🔴 **Rótulo obrigatório no prompt e no log:** REF-01 é **ceretana, não
ática** — entra como fonte **iconográfica**, jamais de estilo.
**Instrução negativa que acompanha as imagens, obrigatória (§9.1.5):**
`From the attached images take ONLY the Greek drawing of a dog and the ornamental looping of
the snakes along the back. Do NOT copy the black-figure technique, do NOT copy the flat vase
anatomy, do NOT copy the hero, the weapons or the combat. Do NOT copy the head count.`

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **4:3**
- [ ] **Camada 1:** exatamente **três** rostos nítidos, sobrepostos, os três legíveis e amáveis
- [ ] **Camada 2:** massa **contínua**, uma silhueta só, **sem contorno fechado** em nenhuma
      forma de trás · **zero olhos** na massa · dissolve para **creme/ocre**, nunca para preto
      · **nenhum vão escuro de fundo** separando forma de forma
      *(as duas falhas exatas do piloto 1 — conferir estas duas antes de qualquer outra coisa)*
- [ ] **Camada 3:** o friso orientalizante **existe na imagem**, em banda própria, separado da
      faixa geométrica por filete
- [ ] **Teste do não-contável (item 11):** um adulto olha 10 s e **não chega a número nenhum**.
      Chegou a 5, a 7, a 9? **Reprovada.** Fileira equidistante? Reprovada
- [ ] **A orelha caindo é legível como orelha caindo** (falhou no piloto 1) — é a alavanca
      principal da amabilidade e a única com fonte
- [ ] Serpentes no **dorso**, não no pescoço · cauda-dragão sem boca aberta, sem dente, sem
      olho voltado ao leitor
- [ ] **Teste de nomeação (§1.4a):** P1 → **"cachorro"** ✅ · "monstro" ❌ · "fofinho" ❌ ·
      P2 → negativa ❌. Verbatim no log, rotulado "proxy"

### ORDEM E DEPENDÊNCIAS
**P0**, em paralelo com S1. Sem dependência de entrada.
**Trava a capa e a p. 33.** Nenhuma cena de Cérbero é briefada antes desta folha aprovada.
🔴 **PLANO B (§0.7):** duas reprovas pelo item 11 → 3ª rodada com **uma cabeça nítida** e todo
o resto no pelo e no friso. Registrar no log nomeando peça e rodada.

---

## S3 · `sheet-heracles` — P1, uma folha, dois estados

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
HERACLES (before the lion skin — chapter 4 only): a strong grown man, bearded, art nouveau
watercolour, face three-quarter and fully expressive. He carries a club, but NEVER raised and
NEVER in use. He wears NO lion skin — the skin does not exist yet in this book. He arrives
without any justifying gesture: the narrator does not judge him, and neither does the drawing.
Palette: terracotta #C1440E and bronze #A9773F.

HERACLES (with the lion skin — chapters 6 and 7): the same man, the same face, now wearing
the LION SKIN AS A FULL-LENGTH MANTLE covering him from shoulder to foot. The skin is a
CLOAK AND A SILHOUETTE. The lion's head is NEVER worn over his head, never as a hood, never
as a helmet, never face-over-face. Effort, when the scene has any, shows in his SHOULDERS AND
HANDS, never in his face and never in the face of the creature he touches.
[SHEET LAYOUT]
A character model reference sheet of ONE single man in TWO states, on a plain warm paper
ground #F6EFE2. LEFT HALF: the man WITHOUT the skin, standing, frontal, the club held low at
his side, and beside it a three-quarter view of the same figure. RIGHT HALF: THE SAME MAN,
THE SAME FACE, THE SAME BEARD, now wearing the lion skin as a full-length mantle from
shoulder to foot, standing, frontal, and beside it a three-quarter view. BETWEEN the two
halves, one large head-and-shoulders study of the face alone, BARE-HEADED, so the face can be
matched exactly in later pictures. The lion skin hangs on the shoulders and falls to the
ground: it is a cloak and a silhouette. THE LION'S HEAD HANGS DOWN AT HIS SHOULDER OR CHEST,
never over his own head. Consistent scale, consistent colour, even flat light.
[MUST NOT APPEAR]
The lion's head is never over his head: no hood, no helmet, no scalp worn, no face over face.
No raised club, no club in use, no drawn bow, no arrow in flight, no weapon being swung. No
triumphal pose, no trophy held up, no villain backlight. No lion skin on the left-hand
figure. No blood, no wound. No lion's body being carried.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **cabeça do leão sobre a cabeça dele** (capuz/elmo/escalpo — D3) · 2. clava erguida ou em
uso · 3. arco retesado / flecha em voo · 4. pose triunfal ou troféu erguido · 5. contraluz de
vilão · 6. **pele do leão na figura da esquerda** · 7. sangue, ferida, corpo do leão carregado.

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
**Nenhuma.** Razão declarada (§9.2): Héracles é **figura humana**, que a fórmula Mucha/aquarela
resolve, e a ficha congelada já é a especificação. **E há razão ativa para NÃO anexar:** toda
peça antiga boa dele o mostra **armado, em combate e com o escalpo sobre a cabeça** — que é,
ponto por ponto, o que D3 proíbe. Anexar REF-01 ou REF-02 aqui é entregar ao gerador a página
reprovada.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **4:3**
- [ ] 🔴 **D3:** a cabeça do leão **não está** sobre a cabeça dele em nenhuma das vistas.
      Um único quadro com capuz reprova a folha inteira
- [ ] A pele cai **do ombro ao chão** — manto de corpo inteiro, não pelego curto
- [ ] Os dois estados são **o mesmo homem**: mesmo rosto, mesma barba, mesmo porte
- [ ] A figura da esquerda está **sem a pele** (ela nasce no cap. 6)
- [ ] Clava presente mas **nunca erguida**
- [ ] Rosto **não julgado e não justificado**: nem herói glorificado, nem vilão
- [ ] Cor da pele do leão **casa com S4** — cruzar as duas folhas lado a lado (é a única
      continuidade de objeto do livro que atravessa dois capítulos)

### ORDEM E DEPENDÊNCIAS
**P1.** 🔴 **Depende de S4 (`sheet-leao-nemeia`) estar aprovada ANTES** — a pele tem de sair do
sheet do leão, mesma cor, mesma textura, mesmo desenho de pelo. **Gerar S4 primeiro, e anexar
S4 aprovada** na conversa de S3, com a instrução: `keep the fur colour and the fur texture of
the lion in the attached sheet exactly`.
*(O guia §5.3 põe as duas juntas em P1; esta é a ordem interna dentro do par.)*

---

## S4 · `sheet-leao-nemeia` — P1, gerar ANTES de S3

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
THE NEMEAN LION: a great lion, calm and present, lying in the short grass of the hills,
WATCHING THE ROAD. Art nouveau watercolour, at a child's eye level, his face receiving the
warm light, likeable at first glance WITHOUT becoming a mascot — no puppy eyes, no cute
proportions. The fact from the source is INVULNERABILITY, not ferocity: his hide must read as
STONE LEATHER, dense and closed, and that density is what the drawing has to say. NO roar, NO
bared teeth, NO crouch to spring, NO villain backlight.
[SHEET LAYOUT]
A character model reference sheet of this ONE single animal, on a plain warm paper ground
#F6EFE2. THREE studies of the SAME lion: (1) lying in short grass, seen from the side, calm,
the whole animal; (2) the same lion lying, seen frontally at a child's eye level, watching;
(3) a large head-and-mane study of the face alone, frontal, calm, both eyes readable. Beside
them, TWO small separate studies of the MATERIAL: one of the HIDE as stone leather — dense,
closed, matte, terracotta #C1440E with a glaze of slate #4A4A47, dry cream #EDD9B4 highlight,
a hide that does not shine; and one of the MANE, dense ochre #C88A3D glazed with bronze
#A9773F. These two material studies must be large and clear enough to be matched later.
Consistent scale, consistent colour, even flat light.
[MUST NOT APPEAR]
No roar, no open mouth, no bared teeth, no crouch to spring. No puppy eyes, no cute mascot
proportions. No villain backlight, no dark rim light. No hero, no human figure, no club, no
arrow, no weapon. No wound, no blood, no dead or fallen lion, no skinning, no lion's body
being carried. No forest, no ruins, no herds — the hills carry only short grass.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens
1. rugido / boca aberta / dentes à mostra · 2. bote · 3. olhos de filhote ou proporções de
mascote · 4. contraluz de vilão · 5. herói, figura humana, clava, flecha · 6. **leão ferido,
morto, caído, esfolado ou carregado** · 7. floresta, ruínas ou rebanhos (as fontes não dão).

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
**REF-06** (olpe coríntio, Met `246565`, CC0) — pelo **leão calmo em perfil, sem rugido**, dos
frisos coríntios. É o que a arte antiga dá de bom aqui.
🔴 **Declarar no log que o resto é [NOSSO]:** rosto **frontal** e postura **deitada** não têm
referência antiga possível. Essa parte é 100% Mucha/aquarela e está escrita como divergência.
**Instrução negativa obrigatória:**
`From the attached image take ONLY the calm walking lion in profile and the density of the
mane. Do NOT copy the flat black silhouette technique, do NOT copy the rosette field into the
lion itself, do NOT copy any other animal.`

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **4:3**
- [ ] O couro lê como **couro de pedra**: denso, fechado, **fosco — não reflete**. Se brilhar
      como pele de leão realista, a invulnerabilidade não foi dita e a folha falhou no que ela
      existe para resolver
- [ ] Rosto frontal, dois olhos legíveis, **amável sem virar mascote**
- [ ] Deitado, olhando **a estrada, não o leitor**
- [ ] Zero rugido, zero dente
- [ ] **Os dois estudos de matéria (couro e juba) existem e são legíveis** — é deles que sai a
      pele de S3, da vinheta 6.2 e da p. 33
- [ ] **Teste de nomeação (§1.4a):** P1 → **"leão"** ✅ · "monstro" ❌ · "fofinho" ❌ ·
      P2 → negativa ❌

### ORDEM E DEPENDÊNCIAS
**P1, primeira do par.** Sem dependência de entrada.
**Trava S3, a vinheta 6.2 e a p. 33** — a pele é a única continuidade de objeto que atravessa
dois capítulos do livro.

---

## S5 · `sheet-ortro` — P5, o único contável do livro

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
ORTHUS: a large dog with TWO HEADS — exactly two, this is the one countable creature in the
book. Art nouveau watercolour, both faces readable and likeable to a four-year-old without
becoming a cartoon, both faces receiving the warm light. The two heads do DIFFERENT THINGS AT
THE SAME TIME: one lowered, counting the herd; the other raised, turned to the horizon of the
sea. He is a working dog on his shift, never a beast. He has NO serpent tail.
[SHEET LAYOUT]
A character model reference sheet of this ONE single animal, on a plain warm paper ground
#F6EFE2. TWO heads, EXACTLY TWO. Two. Not three. THREE studies of the SAME dog: (1) standing,
three-quarter, the whole animal, one head lowered and one head raised; (2) the same dog seen
frontally, standing, at a child's eye level; (3) a large study of the TWO faces alone, close,
so the faces can be matched exactly in later pictures. Beside them, one small study of the
ORDINARY DOG TAIL — a plain furred dog tail — and one small study of the fur texture in clay
ochre #C88A3D with cream #EDD9B4 light. Consistent scale, consistent colour, even flat light.
[MUST NOT APPEAR]
No serpent tail, no scales on the tail, no snake anywhere on this animal. No third head. No
collar, no muzzle, no red eyes, no drool, no flames, no lolling tongue, no bared teeth. No
crouch to spring, no snarl. No puppy eyes, no mascot proportions. No hero, no human figure,
no club, no weapon of any kind. No blood, no wound, no shadow of threat.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **cauda de serpente / escama na cauda** · 2. terceira cabeça · 3. coleira ou focinheira ·
4. olhos vermelhos, baba, chamas, língua de fora · 5. dentes à mostra / rosnado / bote ·
6. olhos de filhote ou proporções de mascote · 7. qualquer figura humana, clava ou arma.

*(A cauda de serpente é o item 1 porque **a cerâmica antiga desenha Órtro com ela**, e o
gerador tende ao tipo antigo. A proibição é por **adequação (D7)**, não por falta de lastro —
§3.4, correção da régua dupla. Está no prompt duas vezes de propósito.)*

### BANDA ORNAMENTAL
**Não se aplica.** 🔴 **E é proibida aqui:** Órtro é a **única criatura contável** do livro, por
fonte explícita (Apolod. 2.5.10). Mandar multidão para ornamento nesta folha contradiz a peça.
**A regra D2 não se aplica a Órtro** — registrado em §8.4 do guia para que a validação não
reprove a página certa aplicando a regra errada.

### REFERÊNCIA A ANEXAR
**Nenhuma.** Razão declarada (§9.2): é cão, que a fórmula Mucha/aquarela resolve, e a ficha
congelada já é a especificação. **Razão ativa para não anexar:** as peças antigas de Órtro
trazem justamente a **cauda de serpente** que esta folha proíbe.
⚠️ **Rima de família autorizada:** Órtro e Cérbero são irmãos inteiros na fonte. A arte pode
rimar **textura de pelo e desenho do olho** entre os dois — **nunca o número de cabeças, nunca
a cauda**. Se quiser a rima, anexar **S2 aprovada** com a instrução:
`keep only the fur texture and the drawing of the eye from the attached sheet; this animal has
EXACTLY TWO heads and an ordinary furred dog tail.`

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **4:3**
- [ ] **Exatamente DUAS cabeças.** Três reprova. Uma reprova
- [ ] Cauda é **cauda de cão**, com pelo. Qualquer escama reprova
- [ ] **As duas cabeças fazem coisas diferentes** — uma baixa contando, uma erguida no
      horizonte. É a expressão que carrega o capítulo inteiro; duas cabeças fazendo a mesma
      coisa é uma folha reprovada, ainda que bonita
- [ ] Lê como **cão de trabalho em turno**, não como fera
- [ ] **Teste de nomeação (§1.4a):** P1 → **"cachorro"** ✅ · "monstro" ❌ · "fofinho" ❌ ·
      P2 → negativa ❌. **Este teste é especialmente duro aqui:** a legibilidade inteira de
      Órtro depende de a criança dizer "cachorro" na primeira olhada

### ORDEM E DEPENDÊNCIAS
**P5.** Sem dependência dura de entrada. Se for usada a rima de família, depende de **S2
aprovada**. Trava `03` e a presença de Órtro em `08b`.

---

## S6 · `sheet-ladon` — P5 · 🔴 POLI-CEFÁLICA (e o plano B de todas as outras)

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
LADON: an immortal DRAKON — a monumental serpent, never a western winged lizard, never wings,
never legs. He lives INSIDE the apple tree, his long body entering and leaving the foliage
and the ornamental border so it can never be followed to its end. ONE HEAD is sharply in
focus, at the front, with a readable and LIKEABLE face that simply watches without reacting,
and that face receives the warm light. Every other head is not drawn as a head at all: the
many become ORNAMENT — palmette-like profiles repeated inside the foliage and inside the
separate animal frieze, flat and rhythmic, the way a Corinthian band repeats. He speaks with
many and divers sorts of voices at once, and the murmur reads as movement in the leaves. He
is IMMORTAL: he is never wounded, never bleeding, never fallen, never attacking.
[SHEET LAYOUT]
A character model reference sheet of this ONE single creature, on a plain warm paper ground
#F6EFE2. THREE studies: (1) the serpent coiled in and around an apple tree, the body entering
and leaving the foliage so its length is never measurable; (2) a large study of the ONE sharp
head alone, three-quarter, both eyes readable, a face that simply watches without reacting;
(3) a study of the body inside the foliage, where the palmette-like profiles repeat as
ornament among the leaves. Beside them, one small study of the SCALE SKIN in forest green
#4E6B3C with deep Aegean #1F5A6E shadow and shoot green #8FB865 light, and one small study of
the three golden apples. Consistent scale, consistent colour, even flat light.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band along the lower part of the sheet, apart from any geometric
border: an ORIENTALIZING ANIMAL FRIEZE in the Corinthian manner — repeated serpent profiles
in flat silhouette, all facing the same way, over a dense field of rosettes, alternating with
palmettes. This is where the many become texture. Ornament, never anatomy. This band is
SEPARATED from any geometric meander by a plain fillet, and NO creature is ever drawn inside
the geometric meander itself.
[MUST NOT APPEAR]
No wings, no legs, no clawed feet — this is a Greek drakon, never a western dragon. No second
sharp head, no row of heads. No arrow, no wound, no blood, no fallen or dying serpent. No
open striking mouth, no bared fangs. No hero, no human figure, no weapon. No fire, no smoke.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **asas** · 2. **pernas ou patas** (dragão ocidental) · 3. segunda cabeça nítida / fileira de
cabeças · 4. flecha, ferida, sangue, dragão caído · 5. boca em bote, presas à mostra ·
6. herói, figura humana, arma · 7. fogo ou fumaça.

### BANDA ORNAMENTAL
**SIM.** E aqui ela é **o assunto**, não o acessório: Ladon é a criatura cuja multidão inteira
vive no ornamento. É por isso que ele é **a variante mais fácil da fórmula** e o **plano B de
toda peça poli-cefálica** (§1.5b, §3.5).

### REFERÊNCIA A ANEXAR — 🔴 MONTAGEM DECLARADA (§9.3)
**SEM REFERÊNCIA DA CRIATURA.** Toda peça antiga boa do tema está no **British Museum
(CC BY-NC-SA — ESTUDO, NUNCA ANEXAR)** ou fotografada sob CC BY-SA (a cláusula SA contamina a
obra derivada comercial). **NC é NC.**
Anexar **duas referências de GRAMÁTICA ORNAMENTAL**, não da criatura:
- **REF-01** (Louvre E 701, DP) — a serpente resolvida como **laçada ornamental**.
  ⚠️ rótulo: **ceretana**, não ática.
- **REF-06** (Met `246565`, CC0) — **palmeta e gavinha**, onde as cabeças viram ornamento.
  *(Alternativa: **REF-10**, pranchas gregas de Owen Jones, se se quiser o motivo mais limpo.
  ⚠️ **Nunca REF-06 junto de REF-08** — os estilos brigam.)*
**Registrar no `log-geracao.md` como MONTAGEM DECLARADA.**
**Instrução negativa obrigatória:**
`From the attached images take ONLY the ornamental looping of the serpent body and the
repeated palmette-and-tendril rhythm. Do NOT copy the black-figure technique, do NOT copy any
hero, weapon or combat, do NOT copy the Victorian flat colour.`

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **4:3**
- [ ] **Zero asas, zero pernas.** É *drákōn*, não dragão ocidental. Este é o erro mais provável
- [ ] **UMA cabeça nítida**, de rosto legível e amável, que **olha sem reagir**
- [ ] O corpo **entra e sai** da folhagem — não se consegue seguir até o fim
- [ ] O friso orientalizante **existe**, separado da faixa geométrica por filete
- [ ] Nenhuma ferida, nenhuma flecha, nenhum dragão caído — **ele é imortal e não é tocado**
- [ ] **Teste de nomeação (§1.4a):** P1 → "cobra grande" / "serpente" ✅ · "monstro" ❌ ·
      "fofinho" ❌ · P2 → negativa ❌

### ORDEM E DEPENDÊNCIAS
**P5.** Sem dependência de entrada. Trava `04` e a presença de Ladon ao fundo em `08b`.
🔴 **Esta folha é o plano B do livro inteiro.** Se ela travar, o plano B do §0.7 fica sem
desenho de referência — **por isso ela é gerada antes de `08a`, `08b` e das cenas P6.** Risco
rebaixado pela ordem: se a montagem declarada falhar, falha **depois** de Equidna e Cérbero
terem travado o livro.

---

## S7 · `sheet-tifao` — P5 · 🔴 POLI-CEFÁLICA · a peça mais difícil do livro

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
TYPHON: a vast standing figure with strong hands and tireless planted feet. SERPENT HEADS
GROW FROM HIS SHOULDERS — from the shoulders, not from a neck, and they are not human. Dark
flickering tongues. EXACTLY THREE sharp heads in the foreground, overlapping, each face
receiving the warm light. Three. Not four, not five. BEHIND them, ONE SINGLE CONTINUOUS MASS
of wet-on-wet watercolour, one silhouette, soft bleeding edges, NO outline, NO eyes at all in
that mass, dissolving INTO THE LIGHT, into warm cream #EDD9B4 and ochre #C88A3D, never into
black. ONE head, low, near the ground, WHINES LIKE A PUPPY: neck curved down, small mouth
slightly open, large gentle eyes, turned TOWARD THE READER — it is the only head that looks
at the child, and it looks gently. There is a single WARM AMBER GLOW under the brow of ONE
head only, and that head belongs to the dissolved mass, never to the sharp ones; the glow is
one soft area, never a pair of points. He does not advance; he is standing. NO wings, NO
serpent legs, NO human giant form.
[SHEET LAYOUT]
A character model reference sheet of this ONE single figure, on a plain warm paper ground
#F6EFE2. THREE studies: (1) the whole standing figure, frontal, feet planted, hands strong
and open at his sides, not advancing; (2) a large study of the THREE sharp serpent faces
alone, overlapping, each face warm-lit and readable; (3) THE MOST IMPORTANT STUDY ON THIS
SHEET — a large close study of THE HEAD THAT WHINES: low, near the ground, neck curved
downward, small mouth slightly open, large gentle eyes turned toward the reader, the
expression of a puppy asking. Beside them, one small study of the single soft amber glow
#E8A317 under one brow of the dissolved mass — ONE soft area, asymmetrical, never a pair of
points, and far away from the head that whines. Consistent scale, even flat light.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band along the lower part of the sheet, apart from any geometric
border: an ORIENTALIZING ANIMAL FRIEZE in the Corinthian manner — repeated serpent profiles
in flat silhouette, all facing the same way, over a dense field of rosettes. This is where
the many become texture. Ornament, never anatomy. This band is SEPARATED from any geometric
meander by a plain fillet, and NO creature is ever drawn inside the geometric meander itself.
[MUST NOT APPEAR]
No wings of any kind. No serpent legs, no snake-coil lower body. No giant humanoid single
bearded head. No red glow, no red eyes, no fire consuming the ground, no lightning bolt, no
Zeus, no weapon of any kind. No pair of glowing points anywhere. No glow near the head that
whines. No wound, no blood, no broken or maimed body. No mountain, no volcano.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **asas** · 2. **pernas-de-serpente** · 3. **forma de gigante humanoide de uma cabeça
barbada** · 4. **qualquer brilho vermelho** · 5. **par de pontos luminosos** · 6. **brilho
perto da cabeça que ganie** · 7. Zeus, raio, arma, corpo ferido.

*(Os itens 1–3 são exatamente a iconografia antiga — o anguípede alado. O gerador vai puxar
para lá sozinho. Os itens 4–6 são o **teto do fogo** do §3.6, e são FATAL-1 de adequação
etária: dois brilhos lado a lado leem como um rosto olhando para fora do livro, e é a única
forma de susto que atravessa a distância de uma prateleira.)*

### BANDA ORNAMENTAL
**SIM**, bloco separado como acima. Tifão foi estendido a D2 **por coerência de fórmula**
(§2, D2) — tem o mesmo problema de 824–825.

### REFERÊNCIA A ANEXAR
🔴 **NENHUMA IMAGEM ANEXADA. PROIBIDO ANEXAR.**
Razão (§9.2, REF-12): a única peça antiga do tema é a hídria **calcídica** de Munique inv. 596,
que mostra **ponto por ponto tudo o que a ficha §3.6 proíbe** — asas, pernas-de-serpente,
gigante humanoide, Zeus com o raio. **REF-12 é ESTUDO. Se ela entrar na conversa, o Gemini
devolve Tifão alado com pernas de cobra e a página está perdida.**
A ficha segue **Teog. 823–835**, e a fonte-espinha do livro é Hesíodo. Divergência **declarada**
na página de Fontes, não silenciada.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **4:3**
- [ ] Zero asas · zero pernas-de-serpente · zero gigante humanoide de uma cabeça
- [ ] Cabeças **nascendo dos ombros**, não de um pescoço, e **não humanas**
- [ ] Camada 1: exatamente **três** nítidas · Camada 2: massa contínua, sem contorno, **zero
      olhos**, dissolve para creme/ocre · Camada 3: friso existe
- [ ] 🔴 **A cabeça que ganie está lá e funciona:** pescoço curvo, boca pequena entreaberta,
      olhos grandes e mansos, **virada para o leitor**, e **olha manso**. É o assunto emocional
      da página e a chave da inversão. Se ela não emocionar, a folha reprova mesmo com todo o
      resto certo
- [ ] 🔴 **Teto do fogo, os 5 itens do §3.6:** brilho em **uma** cabeça só · essa cabeça é da
      massa **dissolvida** · **âmbar `#E8A317`/`#C88A3D`, nunca vermelho** · **área difusa,
      ímpar, assimétrica — jamais um par de pontos** · **nenhum brilho perto da cabeça que
      ganie**
- [ ] **Teste do não-contável (item 11)**
- [ ] **Teste de nomeação (§1.4a):** P1 → "cobra" / "gente grande com cobras" ✅ ·
      "monstro" ❌ · P2 → negativa ❌

### ORDEM E DEPENDÊNCIAS
**P5.** Sem dependência de entrada. Trava `08a`.
**Ganha folha por exceção declarada** (aparição única): a cabeça-que-ganie é a peça mais
difícil do livro — traduzir **som** em **postura** — e não pode ser descoberta durante a
geração de uma full-bleed. Custo declarado ao gate: 1 geração extra.
🔴 **PLANO B (§0.7)** aplicável: duas reprovas por contagem → uma cabeça nítida.
⚠️ **A cabeça que ganie NÃO é a cabeça nítida do plano B por acaso — ela É a candidata
natural.** Se o plano B disparar aqui, a cabeça mantida é a que ganie.

---

## S8 · `sheet-esfinge` — P5, o segundo rosto mais difícil

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
THE SPHINX: the face of a WOMAN, the breast, feet and tail of a LIONESS, and the WINGS OF A
BIRD, spread. She SITS on the CAPITAL OF A SHORT IONIC COLUMN standing beside a road, front
paws straight, body settled. Her face is the most expressive face in the book after Echidna's:
the face of someone who IS ASKING A QUESTION — curious, attentive, alert, frontal or
three-quarter, and it receives the warm light. NOT threatening, NOT seductive — the same rule
of dignity as Echidna. Art nouveau watercolour. Sunlight passes through the feathers of the
wings.
[SHEET LAYOUT]
A character model reference sheet of this ONE single creature, on a plain warm paper ground
#F6EFE2. THREE studies of the SAME sphinx: (1) sitting on the capital of a short Ionic
column, seen frontally, wings spread, front paws straight, the whole creature; (2) the same
creature in three-quarter view, sitting, wings spread; (3) a large head-and-shoulders study
of the FACE ALONE, FRONTAL, both eyes fully readable — the face of someone who is asking a
question: curious, attentive, alert, calm, no adornment, no make-up, no pose. Beside them,
one small study of a WING with sunlight passing through the feathers. Consistent scale,
consistent colour, even flat light.
[MUST NOT APPEAR]
No nemes headcloth, no false beard, no pyramid, no sand, no desert — this is a Greek sphinx,
never an Egyptian one. No wingless lying sphinx. No cliff, no precipice, no empty high rock.
No bones, no fallen traveller, no shadow of threat on the ground. No parted lips, no sideways
glance, no seductive pose, no neckline. No bared teeth, no claws raised. No crown, no throne.
Warm, wonder-filled, gentle, suitable for ages 4-7. Character model reference sheet, 4:3
landscape composition, figures on a plain warm paper ground #F6EFE2.
No text, no watermark, no lettering, no labels, no arrows, no annotations.
```

### `[MUST NOT APPEAR]` — 7 itens
1. touca *nemes* / barba postiça · 2. pirâmide, areia, deserto · 3. deitada sem asas ·
4. **penhasco, precipício, pedra alta vazia** · 5. osso, viajante caído, sombra de ameaça ·
6. boca entreaberta, olhar de canto, pose sedutora, decote · 7. dentes à mostra ou garras
erguidas.

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
**REF-03** (capitel/acrotério em esfinge, mármore **ático**, Met `248501`, CC0) — a **anatomia
exata** da esfinge grega (rosto de mulher, peito e patas de leoa, asa, cauda), **ela SENTA**, e
**a coluna/capitel é o tipo antigo**.
**+ REF-04** (cabeça de terracota, Met `254589`, CC0) — **o rosto FRONTAL**, que é o antídoto
contra o gerador entregar perfil de vaso.
**Instrução negativa obrigatória:**
`From the attached images take the anatomy of the Greek sphinx, the seated posture, the Ionic
capital and the frontal face. Do NOT copy the profile view, do NOT copy the single
sickle-shaped wing above the head, do NOT copy the stone or marble material — this creature is
painted in watercolour, alive, with both eyes readable.`

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **4:3**
- [ ] 🔴 **Asas presentes e ABERTAS.** São o que a separa da esfinge egípcia — **obrigatórias**
- [ ] 🔴 **Rosto FRONTAL ou de três quartos, dois olhos legíveis.** Perfil reprova
      *(divergência declarada §8.7: na iconografia a esfinge é sempre de perfil; aqui X5 vence,
      e REF-04 prova que o rosto frontal de esfinge grega existe no acervo antigo)*
- [ ] Sentada sobre **capitel de coluna jônica curta**, não sobre rocha
      *(a "pedra alta" do guia v1 não é o tipo antigo — a iconografia venceu)*
- [ ] **Expressão de quem ESTÁ PERGUNTANDO** — curiosa, atenta, esperando resposta. Não
      ameaçadora, **não sedutora**: mesma régua de dignidade de Equidna
- [ ] Luz atravessando as penas
- [ ] Zero penhasco, zero abismo, zero osso
- [ ] **Teste de nomeação (§1.4a):** P1 → "moça com asas" / "leoa" / "bicho com cara de gente"
      ✅ · "monstro" ❌ · P2 → negativa ❌

### ORDEM E DEPENDÊNCIAS
**P5.** Sem dependência de entrada. Trava `05` e a presença ao fundo em `08b`.
**Ganha folha por exceção declarada** (aparição nítida única): dignidade sem sedução +
expressão de "quem pergunta" é o segundo rosto mais difícil do livro. Custo: 1 geração extra.

---

# PARTE II — FULL-BLEEDS (9 peças) E CAPA (1)

---

## F1 · `01-equidna-a-caverna-e-as-portas` — p. 10 · P1

**Piso: 3 conversas novas.** 🔴 **É a peça-mãe da D9: dela sai o anexo da p. 40.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha ECHIDNA de S1, integral e verbatim]
[SCENE — action, emotion, setting, composition, light]
The moment is AFTER the departures. Nothing is in progress: nobody waves, nobody looks back,
nobody is halfway down a road. Echidna stands at the MOUTH OF HER CAVE, in medium shot, at a
child's eye level, frontal. The posture is GUARDING, never farewell: weight settled,
shoulders level, gaze out and forward. THE CAVE IS THE SUBJECT: deep, high-roofed, under a
hollow rock, WITH ONE SINGLE MOUTH, and it reads as A GOOD HOUSE, never as a hole. Its stone
is warm ochre #C88A3D, its shadow dark terracotta #8C3410, glaze black #1B1613 only in the
deepest hollow. A SINGLE TRACE OF MORNING LIGHT enters through the mouth and cuts across the
floor in cream #EDD9B4 — it is the only movement in the picture. Her serpent body lies beside
and behind her, going inward into the cave, entering and leaving the frame. HIGH IN THE UPPER
BAND OF THE PAGE, small and far, the world with its doors opens like a MAP: a distant island
with red cattle, a stone gate, the dark water of a marsh, a red mountain, a tree of golden
apples. These five marks are PLACES ONLY — landscape, or shadow — and no creature is drawn
sharply in any of them. Warm morning light throughout. The feeling is a map opening: no
mourning, no omen, no shadow weighing on anyone.
[MUST NOT APPEAR]
No neckline, no marked waist, no parted lips, no sideways glance, no sinuous pose. No diamond
pattern and no zigzag band along the back. No sharply drawn creature anywhere in the five
distant marks of the map. No hero, no Typhon, no human figure, no weapon of any kind. No
waving, no farewell gesture, no hand reaching for the exit, no looking back. No drooping
shoulders and no sadness on her face. No sun, no moon, no disc in the sky.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. decote / cintura marcada / pose sinuosa · 2. losango ou ziguezague dorsal · 3. **criatura
nítida em qualquer das cinco marcas do mapa** · 4. herói, Tifão, figura humana, arma ·
5. **aceno, gesto de despedida, mão para a saída, olhar para trás** · 6. ombros caídos /
tristeza · 7. sol, lua ou disco no céu (§2.5 do livro 1, ATIVA e reforçada).

### BANDA ORNAMENTAL
**Não se aplica** — peça de uma figura, não poli-cefálica. A moldura sai do `[BASE]`.

### REFERÊNCIA A ANEXAR
🔴 **SIM — `sheet-equidna` (S1) APROVADA.** Esta é a primeira execução do mecanismo do §2.1, e
é o que o livro 1 declarou e **nunca executou** (as 21 imagens saíram sem anexo nenhum).
**Instrução que acompanha o anexo, obrigatória:**
`The woman in this picture is EXACTLY the woman in the attached reference sheet: the same
face, the same age, the same hair, the same tunic, the same speckled skin. Do not redesign
her. Keep her identical.`
*(Referência de acervo: **nenhuma** — §9.2 último parágrafo. A camada de acervo entra só pela
moldura, que já vem no `[BASE]`.)*

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] **Régua D6 varrida item a item** (§1.5c) — um item presente reprova
- [ ] **Rosto idêntico ao de S1.** Se for outra mulher, o anexo não segurou → é o **gatilho do
      §2.1**: duas falhas de anexo rebaixam D9 **por escrito no log**, e o rebaixamento é
      descoberto AQUI, em P1, não na página 40
- [ ] **Paleta da caverna = OCRE QUENTE.** `#C88A3D` na rocha, `#8C3410` na sombra, `#1B1613`
      só no fundo do vão, `#EDD9B4` no traço de luz. **Caverna azul/fria reprova** — é casa
      boa, e caverna fria contradiz o capítulo (achado do piloto 2)
- [ ] **O traço de luz de manhã está lá** e corta o chão. Ele sumiu na geração B do piloto 2;
      é o "único movimento" nomeado no brief
- [ ] **Uma boca só**, vertical, funda, lê-se como **descida** (D5 — cruzar com a vinheta 6.1)
- [ ] Corpo-serpente **entra e sai de quadro**. Se os anéis couberem inteiros no quadro,
      reprova (foi a falha da geração A do piloto 2, que furou a própria ficha)
- [ ] As **cinco marcas** do mapa existem, pequenas, na faixa alta, **sem criatura nítida**
- [ ] Contagem R4.2: **1 figura nítida**
- [ ] Zero luto, zero presságio — o tom é de **mapa se abrindo**
- [ ] **Teste de nomeação (§1.4a)**, as duas perguntas, verbatim no log

### ORDEM E DEPENDÊNCIAS
**P1.** 🔴 **Depende de S1 aprovada.**
🔴 **A p. 40 é gerada NA MESMA SESSÃO, logo depois, ANEXANDO ESTA PÁGINA APROVADA** (§2.1 e
§5.2.1). Ver pacote **A1**. Não separar as duas em sessões diferentes — o piloto 2 provou que
"mesma sessão" é **necessária e insuficiente**, e sem o anexo não há caminho nenhum.

---

## F2 · `02-dragao-da-colquida` — p. 14 · P6

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
THE DRAGON OF COLCHIS: an immense serpent whose COILS unroll backwards and disappear into the
dense wood — the body measures the whole forest, and the coils are NOT COUNTABLE and cannot
be followed to their end. His defining attribute is his EYES: sharp and sleepless, the eyes
that never close. In this picture they are CLOSED at last. His huge head fills the low
foreground with the JAW JUST TOUCHING THE GROUND at this exact second: heavy eyelids, the
long neck giving way, the head receiving the warm light. He is not a fierce beast tamed — he
is an EXHAUSTED creature who is finally resting. NO tongue out, NO bared teeth, NO drool.

MEDEA: a YOUNG GIRL, small beside the dragon's head, standing right next to it, ONE HAND
RESTING ON ITS MUZZLE and the other holding a freshly cut JUNIPER SPRIG — the iconic object
of the scene, it must be legible. Her mouth is slightly open: she is still singing. Face
three-quarter, fully expressive. NO witch gestures, NO raised pot, NO cauldron, NO smoke.
Art nouveau watercolour.

JASON: at the back, recessed, smaller in the frame, the GOLDEN FLEECE in his arms or in the
gesture of lifting it from the branch. The posture of someone who is afraid — the source says
so, and the picture must say it too. NO weapon.
[SCENE — action, emotion, setting, composition, light]
A night wood of tall open trees beside a river — the grove of Ares. The dark is a WARM dark,
never a dark of terror: the night here is the ally of the song. At the back stands the OAK
with the GOLDEN FLEECE still hanging from it, alight — it is the only strong light source in
the picture and it comes from above, like a small dawn caught in a branch, warm gold #E8A317.
The dragon's enormous head fills the low foreground, the jaw touching the ground at this exact
second, eyes closed, the long neck giving way; the head receives the warm gold light and both
closed eyelids are plainly readable. His coils unroll backwards and vanish among the trees.
Medea stands right beside the head, small, one hand on the muzzle, the juniper sprig legible
in the other hand, still singing. Jason is far back and smaller, the Fleece in his arms,
afraid. THE GIRL WHO SINGS HOLDS THE CENTRE OF THE PAGE; THE HERO HOLDS THE MARGIN. This
forest is open and vertical with water beside it — it must never be mistaken for a cave.
[MUST NOT APPEAR]
No weapon of any kind, on any plane of the picture: no sword, no spear, no bow, no knife. No
blood, no wound, no body, nothing that hints at death. No open mouth, no bared teeth, no
lolling tongue, no drool on the dragon. No fire, no torch, no cauldron, no raised pot, no
smoke, no witch gesture. No cave, no cave mouth. No crest and no three tongues on the dragon.
No sun, no moon, no disc in the sky.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **qualquer arma, em qualquer plano** · 2. sangue, ferida, corpo · 3. boca aberta, dentes,
língua, baba no dragão · 4. fogo, tocha, caldeirão, pote erguido, fumaça, gestual de
feiticeira · 5. caverna ou boca de caverna (contrato D5) · 6. **crista e três línguas** (são de
Ovídio, fonte não adotada) · 7. sol, lua ou disco.

### BANDA ORNAMENTAL
**Não se aplica.** Os **anéis** não contáveis não são cabeças — a técnica aqui é o
desaparecimento na mata, não a fórmula das três camadas. **Não colar o bloco de banda nesta
peça** (colar seria pedir ao gerador uma multidão que a cena não tem).

### REFERÊNCIA A ANEXAR
**Nenhuma.** Razão declarada: o tipo antigo mais famoso (taça de Douris, Vaticano) mostra o
dragão **engolindo Jasão, de bocarra aberta** — cena de horror que o livro não conta e que o
anexo reintroduziria. Medeia e Jasão são figura humana (§9.2, último parágrafo). A camada de
acervo entra só pela moldura do `[BASE]`.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **Zero armas, varrido plano a plano.** Este é o capítulo que desarma a antecipação de
      morte do livro inteiro
- [ ] **Olhos FECHADOS** e as pálpebras pesadas legíveis — o atributo definidor é "os olhos que
      nunca fecham", e a página é o instante em que fecham
- [ ] **A mandíbula toca o chão neste segundo** — cedendo, não pousada há muito
- [ ] Lê como **exausto que descansa**, não como fera domada
- [ ] Os anéis **somem na mata** e não se seguem até o fim
- [ ] **O ramo de zimbro está legível** — é o objeto icônico da cena
- [ ] **Medeia no centro de leitura, Jasão na margem.** Se o herói dominar a página, reprova:
      é hierarquia de composição, não gentileza
- [ ] Escuro **quente**, não escuro de terror
- [ ] **D5/§5.2.2:** este bosque é **mata aberta e vertical com água ao lado** — cruzar contra
      `01` e a vinheta 6.1; não pode se confundir com nenhuma caverna
- [ ] Contagem R4.2: 4 figuras nítidas (dragão, Medeia, Jasão, o carvalho com o Velo)
- [ ] **Teste de nomeação (§1.4a):** P1 → "cobra grande" / "dragão" ✅ · "monstro" ❌ ·
      P2 → negativa ❌

### ORDEM E DEPENDÊNCIAS
**P6.** Sem sheet de entrada (aparição única — **a própria página aprovada vira a referência**
de Dragão, Medeia e Jasão). Nenhuma peça posterior depende dela.

---

## F3 · `03-ortro-o-turno-de-trabalho` — p. 18 · P6

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha ORTHUS de S5, integral e verbatim]

EURYTION: the herdsman, at the back and to the left, with his STAFF over his shoulder, plain
working clothes. He is a WORKMATE, not an extra: his gaze and Orthus's are on the same herd.
Face three-quarter and expressive.
[SCENE — action, emotion, setting, composition, light]
The island of Erytheia at the far west, at day's end, low sun over the Ocean. The moment is
THE SHIFT: the herd is going down to the water. Orthus is the protagonist of the picture, in
the foreground on the right, standing, at his post — ONE HEAD LOWERED, counting the herd, THE
OTHER RAISED, turned to the horizon of the sea. Eurytion is at the back on the left with his
staff over his shoulder, his gaze on the same herd. THE RED CATTLE come down to the water in
a FRIEZE, their number never legible: bodies in saturated terracotta #C1440E in the
late-afternoon light, flank shadows in dark terracotta #8C3410, warm gold #E8A317 along the
backs. The red of the cattle and the red of the sunset rhyme. This landscape is OPEN AND
MARITIME, wide and bright — it must never be mistaken for a cave. The feeling is ROUTINE, AND
ROUTINE IS BEAUTIFUL: an ordinary working day, warm and unhurried.
[MUST NOT APPEAR]
No hero, no Heracles, no human figure other than the herdsman. No club, no bow, no weapon of
any kind. No threatening shadow anywhere on the ground. No blood, no wound, no body, no
fallen animal. No serpent tail and no scales on the dog. No third head on the dog. No
countable, legible number of cattle. No dark red #9E2B2B on the cattle. No cave, no cave
mouth.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **Héracles / qualquer figura humana além do boieiro** · 2. clava, arco, qualquer arma ·
3. **sombra ameaçadora no chão** · 4. sangue, ferida, corpo, animal caído · 5. **cauda de
serpente / escama no cão** · 6. terceira cabeça · 7. **número legível de vacas**.

*(O `#9E2B2B` fica no prompt como 8ª linha técnica de cor, não como item de contagem —
é vermelho-minoico, cor de Creta no livro 1, e não pertence a este capítulo.)*

### BANDA ORNAMENTAL
**Não se aplica, e é proibida.** Órtro é o **único contável** do livro. O friso que existe aqui
é **o friso do gado descendo para a água** — que é composição de cena, não a Banda B.

### REFERÊNCIA A ANEXAR
🔴 **`sheet-ortro` (S5) APROVADA**, com a instrução:
`The dog in this picture is EXACTLY the dog in the attached reference sheet: the same two
heads, the same fur, the same ordinary furred tail. Do not redesign him. He has EXACTLY TWO
heads and NO serpent tail.`
**Referência de acervo: nenhuma** (§9.2) — cão e figura humana, que a fórmula resolve, e as
peças antigas de Órtro trazem a cauda de serpente proibida.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] **Exatamente duas cabeças**, cauda de cão, **zero escama**
- [ ] **Uma cabeça baixa contando, uma erguida no horizonte** — é a expressão que carrega o
      capítulo; duas cabeças fazendo a mesma coisa reprova
- [ ] Órtro é **o protagonista do quadro**, em primeiro plano à direita
- [ ] Euritião lê como **colega de trabalho**, não figurante: o olhar dele e o de Órtro no
      mesmo rebanho
- [ ] 🔴 **O gado é vermelho de FIM DE TARDE**, não terracota apagado — é a única cor nomeada do
      capítulo e o título vive dela. `#C1440E` saturada / `#8C3410` sombra / `#E8A317` lombo.
      **Nunca `#9E2B2B`**
- [ ] **Número de vacas não legível** — a fonte não diz quantas e a imagem não afirma o que o
      texto não afirma
- [ ] Zero Héracles, zero clava, **zero sombra ameaçadora**. A morte não se ilustra: a página é
      o dia comum de que ele foi tirado
- [ ] **§5.2.2:** paisagem **aberta e marítima**, distinta das duas cavernas e do bosque
- [ ] Contagem R4.2: ≤5 nítidos
- [ ] **Teste de nomeação (§1.4a):** P1 → **"cachorro"** ✅ · P2 → negativa ❌

### ORDEM E DEPENDÊNCIAS
**P6.** Depende de **S5 aprovada**. Nenhuma peça posterior depende dela (a aparição de Órtro em
`08b` sai de S5, não daqui).

---

## F4 · `04-ladon-e-o-pedido-da-almofada` — p. 22 · P6 · 🔴 POLI-CEFÁLICA (variante fácil)

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha LADON de S6, integral e verbatim]

[colar a ficha HERACLES (before the lion skin — chapter 4 only) de S3, integral e verbatim]

ATLAS: a giant in the foreground, back under the STARRED CELESTIAL SPHERE — a sphere, NEVER a
world map, NEVER a globe with continents. The weight is legible in the body: shoulders,
knees, the ground sinking. His face has just understood. TIRED AND CLEVER, never ridiculous —
the reader laughs WITH the situation, never AT Atlas. Art nouveau watercolour.
[SCENE — action, emotion, setting, composition, light]
The moment is DURING the exchange, not before it: Atlas already has the sky back on his
shoulders, and Heracles still has one apple in his hand and a CUSHION in the other, on his way
out. Atlas is in the foreground, back under the starred celestial sphere — a sphere of stars,
smooth, with NO continents, NO coastlines, NO meridians of a terrestrial globe. Two of the
THREE GOLDEN APPLES are still on the ground between the two figures and the third is in
Heracles's hand: countable, golden, the only pure gold in the picture. AT THE BACK STANDS THE
APPLE TREE, and ONE HEAD OF LADON is sharply in focus among the leaves, watching the scene
without reacting, its face readable, likeable and warm-lit; the rest of his body enters and
leaves the foliage and the ornamental border so it can never be followed to its end. The
Hesperides stand at the margin as a chorus in silhouette. The sky is the sky of the FAR
NORTH, never a desert. The feeling is a COMEDY OF NEGOTIATION: the best-guarded door in the
world was never touched.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band, apart from the geometric border: an ORIENTALIZING ANIMAL FRIEZE
in the Corinthian manner — repeated serpent profiles in flat silhouette, all facing the same
way, over a dense field of rosettes, alternating with palmettes. This is where the many
become texture. Ornament, never anatomy. This band is SEPARATED from the geometric meander
border by a plain fillet, and NO creature of the story is ever drawn inside the geometric
meander border itself.
[MUST NOT APPEAR]
No lion skin anywhere on Heracles — the skin does not exist yet in this book. No arrow, no
bow drawn, no wound, no blood, no fallen or dying dragon. No world map, no globe with
continents, no coastlines, no meridians — the sphere carries stars only. No second sharp head
of Ladon, no row of heads. No raised club, no weapon in use. No desert, no sand. No Atlas
made ridiculous, no mockery.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. 🔴 **a pele do Leão em Héracles** (ela nasce no cap. 6; vesti-la aqui fura a marca emocional
do livro) · 2. flecha, arco retesado, ferida, dragão caído · 3. 🔴 **mapa-múndi / globo com
continentes / meridianos** (D4 — qualquer continente visível reprova por anacronismo) ·
4. segunda cabeça nítida de Ladon / fileira · 5. clava erguida ou arma em uso · 6. deserto,
areia · 7. Atlas ridicularizado.

### BANDA ORNAMENTAL
**SIM**, bloco separado. É por ela que passa a multidão de Ladon.

### REFERÊNCIA A ANEXAR
🔴 **`sheet-ladon` (S6) APROVADA** — e **só ela**.
`The serpent in this picture is EXACTLY the creature in the attached reference sheet: the same
one sharp head, the same face, the same scale skin. Do not redesign him.`
**Referência de acervo: NÃO anexar nesta peça.** Razão: o teto é de **duas referências por
prompt**, o sheet já consome uma, e a segunda vaga não vale gastar com REF-01/REF-06 (a
montagem declarada do §9.3 já foi feita **dentro** de S6 — o sheet é o produto dela). Anexar
REF-01 aqui reintroduziria Héracles armado em combate na conversa, que é o oposto do capítulo.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **D4:** esfera **estrelada**, zero continente, zero meridiano, zero litoral
- [ ] 🔴 **Héracles SEM a pele do leão**
- [ ] **UMA cabeça de Ladon nítida**, olhando **sem reagir**; o resto na folhagem e na moldura
- [ ] Ladon **não ferido, não sangrando, não caído** — é imortal e não é tocado
- [ ] **Cena "durante":** Atlas já com o céu, Héracles ainda com uma maçã e a almofada
- [ ] **As três maçãs contáveis e douradas** — duas no chão, uma na mão. É o único ouro puro
- [ ] **Ri-se COM Atlas, nunca dele.** Cansado e esperto, nunca ridículo
- [ ] Céu do **extremo norte**, não deserto
- [ ] Hespérides em silhueta na margem — **5ª figura opcional, primeira a cortar** se a
      composição encher (teto R4.2)
- [ ] Contagem R4.2: 4–5 nítidos
- [ ] **Teste do não-contável (item 11)** aplicado a Ladon
- [ ] **Teste de nomeação (§1.4a)** aplicado a Ladon

### ORDEM E DEPENDÊNCIAS
**P6.** Depende de **S6 aprovada** e de **S3 aprovada** (estado "sem pele").
🔴 **Risco declarado ao gate (§8.3):** "Ladon enrolado na árvore" é **iconografia declarada, não
passagem de fonte** — liberado para a arte, **proibido no texto como "as fontes contam"**. No
livro 1 a extensão arqueológica ficava em ornamento e vinheta; **aqui está numa full-bleed.**
🔴 **PLANO B (§0.7):** Ladon **já é** o plano B. Se esta peça reprovar 2× por contagem, o que
resta é reduzir a presença dele a **corpo na folhagem sem cabeça nítida**, com o rosto legível
migrando para a moldura — e isso vai ao gate, não se decide na hora.

---

## F5 · `05-a-pergunta-da-esfinge` — p. 24 · P6

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha THE SPHINX de S8, integral e verbatim]

OEDIPUS: small, at the foot of the column, on the road, seen from three-quarters behind — a
traveller with a walking staff and a dusty cloak. NO crown, NO throne, nothing that pulls in
the rest of his story.
[SCENE — action, emotion, setting, composition, light]
The Sphinx has just opened her wings and SHE IS ASKING. Nobody moves. She is large in the
frame, seated on the capital of a short Ionic column that stands beside the road, wings
spread, front paws straight, body settled, her face frontal or three-quarter and fully lit,
the face of someone waiting for an answer. Oedipus is small at the foot of the column, on the
road, seen from three-quarters behind, a walking staff in his hand and a dusty cloak on his
shoulders. THE ROAD is wide and empty, descending in a curve; THEBES is far at the back,
walls and roofs, with nobody coming out. High dry sunlight passes through the feathers of the
wings. The ground is level around the column and the road; the land is open and gentle. The
feeling is that THE BOOK STOPS AND THE READER PLAYS: nothing in the picture reveals the
answer.
[MUST NOT APPEAR]
No cliff, no precipice, no drop, no empty high rock, no ravine, no abyss — the ground stays
level. No bones, no fallen traveller, no shadow of threat on the ground. No nemes headcloth,
no false beard, no pyramid, no sand. No crown, no throne, no royal robe. No parted lips, no
sideways glance, no seductive pose. No bared teeth, no raised claws. No man, no animal and no
object that could be read as the answer to a riddle.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. 🔴 **penhasco, precipício, despenhadeiro, pedra alta vazia** (§5.1a — "fora de quadro é
diferente de discreto") · 2. osso, viajante caído, sombra de ameaça no chão · 3. touca *nemes*,
barba postiça, pirâmide, areia · 4. coroa, trono, manto real · 5. boca entreaberta, olhar de
canto, pose sedutora · 6. dentes à mostra, garras erguidas · 7. **qualquer coisa que revele a
resposta do enigma**.

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
🔴 **`sheet-esfinge` (S8) APROVADA** — e **só ela**.
`The sphinx in this picture is EXACTLY the creature in the attached reference sheet: the same
face, frontal, both eyes readable, the same spread wings, seated on an Ionic capital. Do not
redesign her, and do not turn her to profile.`
**REF-03/REF-04 já foram consumidas em S8** e não se repetem aqui — teto de duas referências
por prompt, e o sheet aprovado é a referência mais forte que existe.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **§5.1a:** zero penhasco, **nem vazio, nem ao longe, nem como silhueta no horizonte**.
      O chão fica plano. Uma pedra alta vazia ao fundo **reprova a peça** — é a composição que
      convida o adulto a explicar o que aconteceu ali
- [ ] Asas **abertas** · rosto **frontal ou três quartos**, dois olhos legíveis
- [ ] Sentada sobre **capitel jônico**, não sobre rocha
- [ ] **Expressão de quem está perguntando**, não ameaçadora, **não sedutora**
- [ ] Édipo **pequeno**, de três quartos por trás, com bastão e capa de poeira. Sem coroa, sem
      trono, sem nada que puxe o resto da história dele
- [ ] Estrada **larga e vazia**; Tebas ao fundo **sem ninguém saindo**
- [ ] Luz alta atravessando as penas
- [ ] **Nada na imagem revela a resposta**
- [ ] Contagem R4.2: ≤4 nítidos
- [ ] **Teste de nomeação (§1.4a)**

### ORDEM E DEPENDÊNCIAS
**P6.** Depende de **S8 aprovada**.
⚠️ **A última página do capítulo (p. 26) é a estrada aberta sem a Esfinge** — e, por §5.1a, ela
**não é uma peça deste plano**: o brief do cap. 5 dizia "a pedra pode aparecer vazia ao longe",
e o guia v2 **fechou essa porta**. A p. 26 não tem arte própria neste plano de 18 peças; se o
gate quiser uma, ela volta como peça nova, com `no cliff, no precipice, no drop, no empty high
rock` no `[MUST NOT APPEAR]`. **Registrado como divergência entre o cap. 5 e o guia v2.**

---

## F6 · `06-o-leao-antes` — p. 28 · P6

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha THE NEMEAN LION de S4, integral e verbatim]
[SCENE — action, emotion, setting, composition, light]
The moment is BEFORE EVERYTHING. The lion is ALIVE, lying in the short grass of the hills of
Nemea, WATCHING THE ROAD. He fills the page, in medium shot, AT A CHILD'S EYE LEVEL, calm,
large and present, his face frontal and fully lit, both eyes readable. His hide reads as
STONE LEATHER: dense, closed, matte, terracotta #C1440E glazed with slate #4A4A47, dry cream
#EDD9B4 highlight — a hide that does not shine. THE ROAD is far and empty, in the direction
of his gaze; there is nobody on it. The valley behind him is high: hills of short grass and
wind, and nothing else — no forest, no ruins, no herds. The light is HIGH AND DRY, the
opposite of the light of Echidna's cave. The feeling is THE OWNER OF THE HOUSE, AT HOME:
what the source gives is INVULNERABILITY, not ferocity.
[MUST NOT APPEAR]
No Heracles, no hero, no human figure anywhere. No club, no bow, no arrow, no weapon of any
kind. No threatening shadow on the ground. No roar, no open mouth, no bared teeth, no crouch
to spring. No villain backlight, no dark rim light against the sky. No forest, no ruins, no
herds, no trees. No wound, no blood, no dead or fallen lion. No cave and no cave mouth in
this picture.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **Héracles / qualquer figura humana** · 2. clava, arco, flecha, arma · 3. sombra ameaçadora ·
4. rugido, boca aberta, dentes, bote · 5. **contraluz de vilão** · 6. floresta, ruínas,
rebanhos, árvores (as fontes não dão) · 7. leão ferido, morto ou caído.

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
🔴 **`sheet-leao-nemeia` (S4) APROVADA** — e só ela.
`The lion in this picture is EXACTLY the lion in the attached reference sheet: the same face,
the same mane, the same stone-leather hide. Do not redesign him.`
**REF-06 já foi consumida em S4** e não se repete.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **D1:** o leão está **VIVO**. Leão morto, ferido, carregado ou ausente da full-bleed
      → reprovada
- [ ] Couro lê como **couro de pedra**, fosco e denso. **A densidade é o que o desenho tem de
      dizer** — se a página disser ferocidade em vez de invulnerabilidade, reprova
- [ ] Rosto frontal, dois olhos legíveis, à altura da criança
- [ ] Olhando **a estrada**, não o leitor
- [ ] Estrada longe e **vazia**; vale de **capim curto e vento, e nada mais**
- [ ] **Luz alta e seca** — o contrário da luz da caverna de Equidna (contrato D5)
- [ ] Contagem R4.2: **1**
- [ ] **Teste de nomeação (§1.4a):** P1 → **"leão"** ✅ · P2 → negativa ❌

### ORDEM E DEPENDÊNCIAS
**P6.** Depende de **S4 aprovada**.
⚠️ **O capítulo 6 não fecha só com esta peça:** D1 torna **obrigatórias** as duas vinhetas
(A2 "as duas bocas" e A3 "a pele"), com espaço reservado no `miolo.typ`. **Vinheta da pele
faltando → o capítulo não fecha.** Ver Anexo.

---

## F7 · `07-cerbero-o-abraco-sem-armas` — p. 33 · P3 · 🔴 POLI-CEFÁLICA

**Piso: 2 conversas novas** (mas é a peça que **trava a capa** — na prática, gerar até passar).

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha CERBERUS de S2, integral e verbatim]

[colar a ficha HERACLES (with the lion skin — chapters 6 and 7) de S3, integral e verbatim]
[SCENE — action, emotion, setting, composition, light]
THE EMBRACE. The two of them side on, in profile to each other, filling the width of the
page: Heracles has HIS ARMS AROUND CERBERUS'S HEAD — around the HEAD, not the neck — his own
face pressed into the fur. NEITHER of them shows a tooth. The effort is in HIS SHOULDERS AND
HANDS, never in his face and never in the dog's. The dog REACTS AND YIELDS: he is never
crouched to spring, never lunging. ONE EAR IS BEGINNING TO FALL. HERACLES'S FACE IS TURNED
TOWARD THE DOG. The lion skin hangs from his shoulders to the ground as a mantle and a
silhouette; the lion's head hangs at his shoulder and is NEVER over his own head. THE DRAGON
TAIL is at the margin of the frame, smaller than any of the sharp heads and never at the
centre of reading: it COILS AROUND HIS FOREARM AND HOLDS; it does not bite, no teeth, no
puncture, no blood. LOW IN THE FOREGROUND, sharp and easy to see without searching: THE BOW
AND THE CLUB LYING ON THE GROUND, put down. THE GATE rises behind them, tall, CUT OFF BY THE
TOP EDGE OF THE FRAME — the size of the dog and the height of the gate are what carry the
weight, never teeth. The world below is EMPTY AND QUIET: no soul, no dead, no figure at the
back. Dark of stone and of depth, glaze black #1B1613, never a dark of terror. The sharp
heads are lit warm and stand out against cream #EDD9B4, never against the black.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band, apart from the geometric border: an ORIENTALIZING ANIMAL FRIEZE
in the Corinthian manner — repeated animal profiles in flat silhouette, all walking the same
way, over a dense field of rosettes. This is where the many become texture. Ornament, never
anatomy. This band is SEPARATED from the geometric meander border by a plain fillet, and NO
creature of the story is ever drawn inside the geometric meander border itself.
[MUST NOT APPEAR]
No weapon in anyone's hand — the bow and the club are on the ground. No blood, no visible
wound, no pain on Heracles's face. No soul, no dead, no figure in the background. No collar,
no muzzle, no flames, no drool, no red eyes, no lolling tongue, no smile, no puppy eyes, no
mascot proportions, no bared teeth on any head and none on the tail. No lion's head over
Heracles's head, no hood, no helmet, no face over face. No human figure in silhouette
anywhere in the picture. No fourth sharp head.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **arma na mão de alguém** (o arco e a clava estão no chão) · 2. sangue, ferida visível, dor
no rosto de Héracles · 3. alma, morto ou figura ao fundo · 4. coleira, focinheira, chamas,
baba, olhos vermelhos, língua de fora, sorriso, olhos de filhote, proporções de mascote ·
5. **dentes à mostra — nas cabeças E na cauda** (§5.1b.1) · 6. **rosto-sobre-rosto** (D3) ·
7. 🔴 **figura humana em silhueta em qualquer lugar do quadro**.

*(O item 7 está aqui porque foi **a violação que passou no piloto 1**: apareceram figuras
humanas em silhueta escura nos painéis laterais apesar de `no human figure` estar no prompt.
Item verificável em 5 segundos, e é o que o §7.1 pede.)*

### BANDA ORNAMENTAL
**SIM**, bloco separado. Sem ela, a multidão volta para a anatomia.

### REFERÊNCIA A ANEXAR
🔴 **`sheet-cerbero` (S2) APROVADA** + **`sheet-heracles` (S3) APROVADA**.
Duas referências — **o teto**. **REF-02/REF-01 NÃO entram aqui**: já foram consumidas dentro de
S2, e trariam de volta Héracles **armado e em combate**, que é o oposto exato desta página.
`Both characters are EXACTLY the characters in the attached reference sheets: the same dog,
the same three sharp faces, the same fur, the same dragon tail; the same man, the same face,
the same lion-skin mantle. Do not redesign either of them.`

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **Os braços estão em volta da CABEÇA, não do pescoço** (Apolod. 2.5.12 — é a
      frase-âncora do livro, e o brief tem de dizer o mesmo que o corrido)
- [ ] 🔴 **O arco e a clava estão no chão, nítidos, e se veem sem procurar.** São o assunto da
      página tanto quanto o abraço
- [ ] 🔴 **D3:** cabeça do leão **nunca** sobre a cabeça de Héracles
- [ ] Camadas 1, 2 e 3 conferidas como em S2 (três nítidas · massa contínua sem contorno e sem
      olhos, dissolvendo para o creme · friso presente)
- [ ] **Teste do não-contável (item 11)**
- [ ] **Cauda-dragão, as 4 travas do §5.1b:** sem dente · **enrola e prende, não crava** ·
      periférica em tamanho e posição, menor que qualquer cabeça nítida · **o rosto de Héracles
      está virado para o CÃO, não para a cauda**
- [ ] **Cabeça nítida contra CREME, nunca contra o vão negro**
- [ ] Portão **cortado pela borda de cima** (falhou no piloto 1 — a alavanca 4 não operou)
- [ ] **Uma orelha começando a baixar**, legível como orelha caindo
- [ ] Mundo de baixo **vazio e quieto**: zero alma, zero morto, zero figura ao fundo
- [ ] **Zero figura humana em silhueta** em qualquer painel ou canto
- [ ] Contagem R4.2: 4 nítidos
- [ ] 🔴 **D8 — Teste do "cachorro", protocolo §1.4a, OBRIGATÓRIO antes da diagramação:**
      P1 → **"cachorro"** ✅ · "monstro" ❌ · "fofinho" ❌ · P2 → negativa ❌. **Verbatim no
      `log-geracao.md`, com o rótulo "proxy, sem leitor real"**

### ORDEM E DEPENDÊNCIAS
**P3.** Depende de **S2 e S3 aprovadas** (e S3 depende de S4).
🔴 **Esta peça TRAVA A CAPA** (§5.3): o teste "cachorro" é feito aqui primeiro, e a capa só é
gerada depois que ele passa. Racional: a capa age à distância de uma prateleira e não se
descobre a solução de Cérbero nela.
🔴 **PLANO B (§0.7)** aplicável.
⚠️ **Continuidade:** este portão é o mesmo de `08b`, e o Cérbero é **o mesmo desenho, mais
velho**. Não redesenhar a criatura entre capítulos.

---

## F8 · `08a-tifao` — p. 36 · P7 · 🔴 POLI-CEFÁLICA

**Piso: 2 conversas novas.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha TYPHON de S7, integral e verbatim]
[SCENE — action, emotion, setting, composition, light]
The moment is BEFORE any confrontation. He is STANDING; he does not advance. He fills the
page in height, hands strong and open, feet planted and tireless. The serpent heads grow from
his shoulders. THREE sharp heads in the foreground, overlapping, each face warm-lit and
readable. Behind them the single continuous wet-on-wet mass, one silhouette, dissolving into
cream #EDD9B4 and ochre #C88A3D. LOW, NEAR THE GROUND, ONE HEAD WHINES LIKE A PUPPY: the neck
curved down, the small mouth slightly open, large gentle eyes turned toward the reader — the
only head that looks at the child, and it looks gently. THIS HEAD IS THE SUBJECT OF THE PAGE.
The corner of the page around it is clean: no glow anywhere near it. Far from it, under the
brow of ONE head of the dissolved mass, there is a single soft amber area #E8A317 — one
diffuse asymmetrical patch, never a pair of points, never red. The light is HIGH AND WARM,
with no villain backlight and no red anywhere. The feeling is THE FATHER, AND HE WHINES.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band, apart from the geometric border: an ORIENTALIZING ANIMAL FRIEZE
in the Corinthian manner — repeated serpent profiles in flat silhouette, all facing the same
way, over a dense field of rosettes. This is where the many become texture. Ornament, never
anatomy. This band is SEPARATED from the geometric meander border by a plain fillet, and NO
creature of the story is ever drawn inside the geometric meander border itself.
[MUST NOT APPEAR]
No Zeus, no other figure, no lightning bolt, no combat, no weapon of any kind. No fire
consuming the ground, no flame, no ember, no spark. No wounded, broken or maimed body. No
wings, no serpent legs, no giant humanoid single bearded head. No glow on more than one head.
No pair of glowing points anywhere. No red glow, no red eyes, no red anywhere in the light.
No mountain, no volcano, no smoke.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **Zeus / qualquer outra figura / raio / combate / arma** · 2. fogo consumindo terra, chama,
brasa, faísca · 3. corpo ferido ("maimed wreck", 857) · 4. asas, pernas-de-serpente, gigante
humanoide · 5. 🔴 **brilho em mais de uma cabeça** · 6. 🔴 **par de pontos luminosos** ·
7. 🔴 **qualquer brilho vermelho**.

*(Os itens 5–7 são o teto do fogo, FATAL-1 de adequação etária. O Etna também está proibido
nesta página — mas entra no prompt como linha técnica, não gasta uma das 7 vagas, porque a
vinheta A4 existe e resolve o vulcão na página seguinte.)*

### BANDA ORNAMENTAL
**SIM**, bloco separado.

### REFERÊNCIA A ANEXAR
🔴 **`sheet-tifao` (S7) APROVADA — e NENHUMA IMAGEM DE ACERVO. PROIBIDO ANEXAR REF-12.**
`The figure in this picture is EXACTLY the figure in the attached reference sheet: the same
shoulders, the same three sharp faces, the same head that whines. Do not redesign him.`
Razão, repetida porque é fatal: REF-12 mostra ponto por ponto tudo o que a ficha proíbe. Se
ela entrar na conversa, **a página está perdida**.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] Zero Zeus, zero raio, zero combate, zero arma, zero corpo ferido
- [ ] Zero asas, zero pernas-de-serpente, zero gigante humanoide
- [ ] Camadas 1, 2 e 3 conferidas · **teste do não-contável (item 11)**
- [ ] 🔴 **A cabeça que ganie é o assunto da página** e olha manso para a criança
- [ ] 🔴 **Teto do fogo, os 5 itens:** um brilho só · na massa dissolvida · âmbar, nunca
      vermelho · **área ímpar e assimétrica, jamais um par** · **nada perto da cabeça que
      ganie**
- [ ] Ele **não avança** — está de pé
- [ ] Zero Etna nesta página
- [ ] Contagem R4.2: **1**
- [ ] **Teste de nomeação (§1.4a)**

### ORDEM E DEPENDÊNCIAS
**P7.** Depende de **S7 aprovada**.
🔴 **PLANO B (§0.7):** se disparar, a cabeça nítida mantida **é a que ganie**.

---

## F9 · `08b-o-retrato-de-origem` — p. 38 · P7 · 🔴 POLI-CEFÁLICA (a mais cara do livro)

**Piso: 2 conversas novas.** É a página de **5 figuras nítidas** e depende de **5 sheets**.

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha ECHIDNA de S1, integral e verbatim]

[colar a ficha ORTHUS de S5, integral e verbatim]

[colar a ficha CERBERUS de S2, integral e verbatim]

THE HYDRA: EXACTLY THREE sharp heads rising like reeds from the water, side by side and
overlapping; behind them ONE SINGLE CONTINUOUS MASS of wet-on-wet watercolour with soft
bleeding edges, no outline and no eyes, dissolving into the light of the water, never into
black.

THE CHIMAERA: a LION seen from the side, calm and lying, and this is her canonical form: a
GOAT'S HEAD GROWS OUT OF THE MIDDLE OF HER BACK, from the spine itself, turned to the side —
NOT a third neck beside the lion's, NOT three heads in a row. Her TAIL ENDS IN A SERPENT'S
HEAD, at the back, low and quiet. Three heads in three different places on one body. She IS
countable. A single thread of smoke, NO open flame.
[SCENE — action, emotion, setting, composition, light]
This is A FAMILY PORTRAIT, not the scene of a day: everyone is posing, nobody is in action,
and nothing declares that they were all born together. The time is the time of the birth of
the brood — the BEFORE of everything, without a drop of mourning. ECHIDNA IS AT THE CENTRE,
seated, her serpent half entering and leaving the frame, her face serene and maternal and
warm-lit, EXACTLY THE SAME FACE as in the first picture of the book. Around her, all faces
readable and all faces lit: ORTHUS with his two heads, one of them asleep; CERBERUS as a
younger dog — the SAME drawing, younger — with his sharp faces and his dragon tail; THE HYDRA
rising like reeds from water at one side; THE CHIMAERA lying calm at the other, a single
thread of smoke. The great bodies enter and leave the frame so nothing is measurable. AT THE
BACK AND IN SHADOW, outside the count: LADON, long, running around the back wall of the cave;
and FURTHER BACK STILL, SMALLER AND LESS SHARPLY DRAWN, THE SPHINX AND THE LION — they belong
to another generation and must never look like newborns beside the others. The cave is the
same deep, high-roofed, SINGLE-MOUTHED cave of the first picture, warm ochre #C88A3D, and
there is no door, no gate and no outside landscape: HERE NOBODY IS GUARDING ANYTHING YET.
This is the before.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band, apart from the geometric border: an ORIENTALIZING ANIMAL FRIEZE
in the Corinthian manner — repeated animal profiles in flat silhouette, all walking the same
way, over a dense field of rosettes. This is where the many become texture. Ornament, never
anatomy. This band is SEPARATED from the geometric meander border by a plain fillet, and NO
creature of the story is ever drawn inside the geometric meander border itself.
[MUST NOT APPEAR]
No Typhon and no father figure anywhere. No door, no gate, no outside landscape, no map. No
sadness, no omen, no shadow weighing on anyone, no air of farewell. No flesh, no bone, no red
mouth, no blood. No open flame on the Chimaera. No goat's head on a third neck beside the
lion's, and no three heads in a row on the Chimaera. No newborn Sphinx and no newborn Lion
beside the others.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. 🔴 **Tifão** (tem a própria página) · 2. porta, portão, paisagem externa, mapa · 3. tristeza,
presságio, sombra pesando, ar de despedida · 4. carne, osso, boca vermelha, sangue · 5. chama
aberta na Quimera · 6. 🔴 **cabeça de cabra num terceiro pescoço / três cabeças enfileiradas na
Quimera** · 7. 🔴 **Esfinge ou Leão como recém-nascidos ao lado dos demais**.

### BANDA ORNAMENTAL
**SIM**, bloco separado. Duas criaturas poli-cefálicas na mesma página (Cérbero e Hidra) —
sem a Banda B, a multidão de ambas vai para a anatomia.

### REFERÊNCIA A ANEXAR — decisão declarada, com conflito real
🔴 **O teto de duas referências colide com uma página de 5 personagens.** A resolução, e a razão:
- **anexar `01-equidna-a-caverna-e-as-portas` APROVADA** (a p. 10) — não o sheet. Ela carrega
  **rosto de Equidna + caverna + paleta** de uma vez, que é a continuidade mais cara da página
  (§5.2.5 e §5.2.2);
- **+ `sheet-cerbero` (S2) APROVADA** — porque Cérbero é a segunda continuidade dura ("o mesmo
  desenho, mais novo") e é poli-cefálico.
- **NÃO anexar** REF-05 (Quimera de Arezzo) nesta peça: o teto é dois, e a forma da Quimera
  está **descrita verbatim** na ficha (cabra brotando do dorso, cauda-serpente). Se a Quimera
  sair errada em 2 rodadas — cabeças enfileiradas —, **aí sim** trocar S2 por **REF-05**, com o
  🔴 **rótulo obrigatório: peça ETRUSCA, ca. 400 a.C., NÃO É GREGA; entra como fonte de FORMA,
  jamais de estilo**, e com a instrução negativa: `do NOT copy the wounded rearing pose, the
  roar, the wound in the thigh, the blood, the flaming mane or the polished bronze.`
  Registrar a troca no `log-geracao.md`.
- **Órtro, Ladon, Esfinge e Leão entram por descrição verbatim** — não cabem no teto, e três
  deles estão ao fundo, em sombra ou menores.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **Contagem R4.2 = 5 nítidos, EXATOS** (Equidna, Órtro, Cérbero, Hidra, Quimera). Ladon,
      Esfinge e Leão ficam **fora da contagem**, ao fundo e em sombra. Um sexto rosto nítido
      reprova
- [ ] **Rosto de Equidna idêntico ao da p. 10** — cruzar as duas imagens lado a lado
- [ ] **Cérbero é o mesmo desenho, mais novo.** Não redesenhado
- [ ] Órtro com **duas cabeças, uma dormindo**
- [ ] Hidra: três nítidas + massa contínua dissolvendo **na luz da água**, nunca no preto
- [ ] 🔴 **Quimera na forma canônica:** leão de lado, **cabeça de cabra brotando do MEIO DO
      DORSO**, cauda terminando em cabeça de serpente. **Três cabeças em três lugares
      diferentes de um corpo só.** Três pescoços lado a lado **reprova** — foi o defeito da
      redação v1. Ela **é contável**, e isso está certo
- [ ] Um fio de fumaça, **zero chama aberta**
- [ ] 🔴 **Esfinge e Leão mais atrás, MENORES e menos definidos** — são de outra geração
- [ ] **A caverna é a mesma do cap. 1**, uma boca, ocre quente. **Sem porta, sem portão, sem
      paisagem externa** — aqui ninguém guarda nada ainda
- [ ] Zero Tifão · zero tristeza · zero presságio · **nada declara que nasceram todos juntos**
- [ ] **Teste do não-contável (item 11)** aplicado a Cérbero **e** à Hidra, separadamente
- [ ] **Teste de nomeação (§1.4a)** aplicado à página inteira

### ORDEM E DEPENDÊNCIAS
**P7, a última das full-bleeds.** 🔴 **Depende de 5 sheets aprovados** (S1, S2, S5, S6, S8) **e
da p. 10 aprovada**. É a peça mais cara do livro e por isso é a última — se ela travar, trava
depois de o livro inteiro já estar de pé.
🔴 **PLANO B (§0.7):** aplicável **por criatura**, não à página. Se a Hidra reprovar 2× por
contagem, é a Hidra que ganha uma cabeça nítida — não Cérbero, e não a página.

---

## F10 · `00-capa` — Cérbero é o rosto do livro · P4 · 🔴 POLI-CEFÁLICA

**Piso: 3 conversas novas.** É a peça que age **à distância de uma prateleira**, sobre uma
criança que não escolheu olhar.

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
CERBERUS: an enormous dog sitting at the gate of the world below. EXACTLY TWO sharp heads in
front, side by side and overlapping, each with a fully readable and likeable dog face in art
nouveau watercolour, each face receiving the warm light. Two. Not three, not four. BEHIND
them, ONE SINGLE CONTINUOUS MASS of wet-on-wet watercolour fur: one silhouette, one body of
paint, soft bleeding edges everywhere, NO outline anywhere, NO eyes at all in that mass; it
dissolves INTO THE LIGHT, into warm cream #EDD9B4 and ochre #C88A3D, never into black and
never into a dark gap. Along his BACK, not his neck, run the heads of snakes of all sorts,
resolved as ornamental rhythm. His TAIL IS A DRAGON. His ears are black and heavy and CAN
FALL — a lowered ear is the sign of a dog that yields. He SITS. That is what he does.
[SCENE — action, emotion, setting, composition, light]
A single figure, frontal, inside a MUCHA ARCH: Cerberus SITTING on the threshold of the gate,
filling the height of the arch, at a child's eye level. ONE EAR IS BEGINNING TO FALL, and it
is the most legible thing on the cover. HIS GAZE IS SLIGHTLY OFF-AXIS — attentive, present,
with clear pupils, but directed a little to one side of the viewer, never confronting the
viewer head-on. The gate behind him is CUT OFF BY THE TOP EDGE OF THE FRAME and by the top of
the arch, so his size is felt and never measured. THE DARKEST NOTE, glaze black #1B1613,
LIVES ONLY AT THE BASE AND AT THE SIDES — the sharp heads stand out against clay cream
#EDD9B4 and the warm paper ground #F6EFE2 receiving warm light, NEVER against black. THE
DRAGON TAIL CURLS AROUND THE MUCHA ARCH ITSELF AND BECOMES ORNAMENT: it has no mouth, no
tooth and no eye turned to the viewer — it is pattern, not creature. The inner profile of the
arch alternates GREEK KEY MEANDER with PALMETTES SHAPED LIKE SERPENT PROFILES. Fur in ochre
#C88A3D and cream #EDD9B4, stone in terracotta #C1440E, paper ground #F6EFE2. THE UPPER THIRD
OF THE PICTURE IS QUIET AND LOW IN CONTRAST, kept clear for typography that will be set
later. Nothing is written anywhere in the image.
[ORNAMENTAL BAND — MANDATORY, DRAW THIS]
A separate horizontal band, apart from the geometric meander of the arch: an ORIENTALIZING
ANIMAL FRIEZE in the Corinthian manner — repeated serpent profiles in flat silhouette, all
facing the same way, over a dense field of rosettes. THIS is where the snakes of his back
become texture. Ornament, never anatomy. This band is SEPARATED from the geometric meander by
a plain fillet, and NO creature is ever drawn inside the geometric meander itself. THE DRAGON
TAIL DOES NOT ENTER THIS BAND AND NEVER TURNS INTO A PALMETTE: it curls around the Mucha
arch, and only there.
[MUST NOT APPEAR]
No hero, no human figure, no weapon of any kind, nobody else in the frame. No letter, no word,
no title, no lettering of any kind, not even as decoration. No black behind the heads. No
collar, no muzzle, no red eyes, no drool, no flames, no lolling tongue, no smile, no puppy
eyes, no mascot proportions, no bared teeth. No mouth, no tooth and no eye on the dragon tail.
No third sharp head.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. **qualquer herói, figura humana ou arma** · 2. 🔴 **qualquer letra ou tipografia, nem como
enfeite** (nenhuma letra sai do gerador — o título é composto em Typst na Fase 4) ·
3. 🔴 **negro atrás da cabeça** (trava 1 do §6.1: cabeça clara contra vão escuro é a composição
de "monstro saindo da caverna" e reprova a capa sozinha) · 4. coleira, focinheira, olhos
vermelhos, baba, chamas · 5. língua de fora, sorriso, olhos de filhote, proporções de mascote ·
6. dentes à mostra · 7. 🔴 **boca, dente ou olho na cauda-dragão** (trava 3: ela é padrão, não
criatura).

### BANDA ORNAMENTAL
**SIM**, e aqui ela tem uma cláusula extra que não existe em nenhuma outra peça:
🔴 **a cauda-dragão NÃO entra na Banda B e NUNCA vira palmeta.** Ela enrola **no ARCO MUCHA**,
que é art nouveau por definição e é o único lugar onde a metamorfose forma↔ornamento é legítima
(§1.3a). As **serpentes do dorso** é que vão para a Banda B. **Metamorfose forma↔ornamento é
ART NOUVEAU e pertence ao ARCO MUCHA — não é gramática de vaso ático e nunca foi.**

### REFERÊNCIA A ANEXAR
🔴 **`sheet-cerbero` (S2) APROVADA** + **REF-11** (Mucha, *Zodiac*, 1896, DP) — **o arco Mucha**,
o halo circular preenchido por motivo repetido, que é o elemento serial da capa.
`From the attached Mucha lithograph take ONLY the circular arch filled with a repeated motif.
Do NOT copy the poster woman as a character, do NOT copy any typography, do NOT copy the hard
black outline.`
⚠️ **REF-09 + REF-10** (a faixa geométrica) são as referências de **moldura de todas as
páginas** — mas o teto é **duas por prompt**, e aqui as duas vagas estão gastas com o sheet e
com o arco. A faixa geométrica sai por descrição, do `[BASE]`. **Registrar a escolha no log.**

### CHECKLIST DE APROVAÇÃO — as três travas do §6.1 são condição de entrega
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **TRAVA 1 — o negro fica na BASE e nas LATERAIS.** A cabeça nítida se recorta contra
      creme `#EDD9B4` ou contra o papel `#F6EFE2`. **Cabeça contra o preto reprova a capa
      sozinha**
- [ ] 🔴 **TRAVA 2 — o olhar é levemente fora do eixo.** Atento, com pupila, dirigido um pouco
      ao lado de quem olha. **Olhar frontal e travado de um animal grande é confronto**, mesmo
      com o rosto mais amável do mundo
- [ ] 🔴 **TRAVA 3 — a cauda-dragão é padrão, não criatura:** sem boca, sem dente, sem olho
      voltado ao leitor, enrolada **no arco**
- [ ] **DUAS cabeças nítidas** (não três — a capa é onde a legibilidade importa mais) + massa
      contínua sem contorno e sem olhos
- [ ] **Uma orelha começando a baixar, e ela é a coisa mais legível da capa**
- [ ] **O portão é cortado pela borda de cima e pelo alto do arco**
- [ ] Arco Mucha com perfil interno alternando **meandro e palmetas em forma de perfil de
      serpente** — a assinatura visual desta família
- [ ] Serpentes do dorso na **Banda B**, não na Banda A
- [ ] **Zero tipografia.** Terço superior quieto e de baixo contraste, reservado
- [ ] Contagem: **1 figura nítida**
- [ ] 🔴 **§6.2 — Prova de leitura da capa, protocolo §1.4a:** P1 → **"cachorro"** ✅ ·
      "monstro" ❌ · "fofinho" ❌ · P2 → negativa ❌
- [ ] 🔴 **A capa NÃO passa para a Fase 4 sem este veredito escrito**, e enquanto não houver
      leitor real nomeado (§1.4b) ela vai ao dono **etiquetada "aguardando teste com leitor
      real"**. **Ela não é considerada validada.**

### ORDEM E DEPENDÊNCIAS
**P4.** Depende de **S2 aprovada** e de **`07` aprovada com o teste "cachorro" passado** — o
guia §5.3 é explícito: *"o teste 'cachorro' trava a capa"*.
🔴 **PLANO B (§0.7):** aqui ele é **quase gratuito** — a capa já usa a forma mais econômica da
fórmula (duas cabeças). Duas reprovas por contagem → **uma cabeça nítida**, e a capa continua
fazendo tudo o que precisa fazer.
⚠️ **Pendências seriais que a capa herda e não resolve** (donos: `mito-editor-chefe` e
`mito-diagramador`): rotulagem/numeração de spin-off no grid; tipografia da série, ainda
`[a definir]` em `serie-padroes.md`. **A arte não depende de nenhuma das duas.**

---

# ANEXO — as 4 peças fora da conta de 18

> **Declaração:** a tarefa pediu **18 pacotes** (8 sheets + 9 full-bleeds + capa), e os 18 estão
> acima. Mas quatro peças **obrigatórias** do guia ficam fora dessa conta e não têm pacote em
> lugar nenhum: a **p. 40** (D9 — sem ela o livro não fecha e a dependência que a tarefa pediu
> no item 6 não teria destino), as **duas vinhetas do cap. 6** (D1 — *"vinheta da pele faltando
> → o capítulo não fecha"*) e a **vinheta 8.1 do Etna** (decidida em §5.1c). Entregá-las como
> "não fechadas" seria deixar a Fase 3b sem quatro briefs que o guia declara obrigatórios.
> **Estão aqui, completas, e contadas separadamente: 22 pacotes no total.**

---

## A1 · `40-a-caverna-ultima-pagina` — p. 40 · P1 · 🔴 A PEÇA DA D9

**Piso: 3 conversas novas.** **Gerada na MESMA SESSÃO de F1, logo depois dela.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha ECHIDNA de S1, integral e verbatim]
[SCENE — action, emotion, setting, composition, light]
THIS IS THE ATTACHED PICTURE AGAIN, WITH ONE SINGLE CHANGE. Keep the attached image exactly:
the same woman, the same face without one line more, the same age, the same hair, the same
tunic, the same speckled skin, the same cave, the same framing, the same camera height, the
same warm ochre palette #C88A3D with dark terracotta #8C3410 shadow, the same single trace of
morning light cutting across the floor in cream #EDD9B4 — that trace of light is still the
only movement in the picture. THE ONE CHANGE: in the upper band of the attached image the
world opened like a map, with a distant island, a stone gate, dark water, a red mountain and
a tree of golden apples. HERE THERE IS NO MAP AT ALL. That upper band is now only the deep
stone of the cave and its warm light. Echidna is alone, still guarding, weight settled,
shoulders level, gaze out and forward. This is an image of PERMANENCE, not of longing.
[MUST NOT APPEAR]
No map of doors, no distant island, no gate, no dark water, no red mountain, no apple tree,
nothing at all in the upper band. No child of hers, no creature, no silhouette, nobody else.
No looking toward the exit, no hand reaching out, no drooping shoulders, no sadness. No
volcano, no mountain, no smoke. No neckline, no marked waist, no sinuous pose. No diamond
pattern and no zigzag band along the back. No sun, no moon, no disc in the sky.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. 🔴 **o mapa de portas na faixa alta** (é a única diferença permitida) · 2. 🔴 **qualquer
filho, criatura ou silhueta** · 3. olhar para a saída, mão estendida, ombros caídos ·
4. tristeza · 5. o Etna / qualquer montanha ou fumaça · 6. decote, cintura marcada, pose
sinuosa · 7. losango ou ziguezague dorsal.

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
🔴 **A P. 10 APROVADA (`01-equidna-a-caverna-e-as-portas`), anexada como imagem de referência.**
**Não o sheet. Não gerar do zero.** É o mecanismo do §2.1, e é a única via que resta: o Gemini
**não expõe seed** e **"Refazer" não regenera** (provado por hash MD5). O piloto 2 mediu o
custo de tentar por prompt: prompt idêntico + conversa nova = **duas mulheres diferentes**
(idade ~25 × ~33, caverna azul-petróleo × ocre quente, o feixe de luz presente numa e ausente
na outra). **Não existe caminho por prompt.**

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9, com C1 = **quadrado**
- [ ] 🔴 **D9 — cruzar p. 10 × p. 40 lado a lado, e a diferença tem de ser UMA:** o mapa saiu.
      Mesmo rosto **sem uma ruga a mais**, mesma idade aparente, mesma caverna, mesma paleta,
      mesmo enquadramento, mesma altura de câmera
- [ ] O **traço de luz de manhã** está lá e continua sendo o único movimento
- [ ] **Só Equidna.** Zero filho, zero silhueta, zero mapa
- [ ] Imagem de **permanência, não de saudade**
- [ ] **Régua D6** varrida item a item
- [ ] Zero Etna (a vinheta do vulcão é da página anterior, **nunca da página final**)

### ORDEM E DEPENDÊNCIAS · 🔴 O GATILHO DE REBAIXAMENTO
**P1, imediatamente depois de F1, na mesma sessão.** Depende de **F1 aprovada**.

> 🔴 **FALLBACK DECLARADO, COM GATILHO (§2.1):** **se o anexo falhar em DUAS tentativas** —
> isto é, se a p. 40 vier com outra mulher apesar da p. 10 anexada —, **D9 é rebaixada, POR
> ESCRITO no `log-geracao.md`**, de *"o mesmo rosto sem uma ruga a mais"* para
> **"o mesmo enquadramento, a mesma idade aparente e a mesma paleta de caverna"**.
> Isso ainda honra o contrato que o cap. 3 faz com a criança — que ela **reconheça** a caverna e
> a mãe na última página — e o texto sustenta o resto.
> **O que não se admite é descobrir isso na página 40.** É exatamente por isso que esta peça é
> **P1** e não a última: o gatilho dispara na segunda peça do livro, não depois de nove páginas
> gastas.

---

## A2 · `vinheta-6-1-as-duas-bocas` — cap. 6 · P8

**Piso: 1 conversa, com direito a 2ª se reprovar.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[SCENE — action, emotion, setting, composition, light]
A small contained vignette, not a full page. THE CAVE SEEN FROM OUTSIDE, on a hillside, and
the hillside runs HORIZONTALLY across the picture. The cave is a TUNNEL THROUGH THE ROCK — it
goes all the way through — and BOTH ITS MOUTHS ARE VISIBLE IN THE SAME IMAGE. THE RIGHT-HAND
MOUTH IS BLOCKED, filled with stones stacked by a human hand. THE LEFT-HAND MOUTH IS OPEN and
it is nothing but dark — glaze black #1B1613, the darkest note on the page, and NOTHING is
legible inside it. On the ground in front, A CLUB LIES PUT DOWN, left behind, resting flat.
The light is HIGH AND DRY over ochre and terracotta hills. This cave is HORIZONTAL, SHALLOW
AND PASSING THROUGH, and it reads as GOING ACROSS — it must be impossible to mistake it for a
deep vertical single-mouthed cave.
[MUST NOT APPEAR]
No lion, no animal, nothing alive anywhere in this picture. Nothing legible inside the black:
no silhouette, no eye, no shape, no movement. No club being swung, no club raised, no hand on
the club. No person, no figure, no hero. No blood, no wound, no body, no skinning. No deep
vertical cave, no single-mouthed cave. No forest, no ruins.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. 🔴 **o Leão / qualquer animal / qualquer coisa viva** · 2. 🔴 **qualquer coisa legível dentro
do negro** (silhueta, olho, forma, movimento) · 3. **a clava em golpe** ou erguida · 4. qualquer
pessoa ou figura · 5. sangue, ferida, corpo, esfolamento · 6. caverna funda vertical de uma
boca (contrato D5) · 7. floresta ou ruínas.

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
**Nenhuma.** É paisagem e rocha; não há personagem, não há iconografia antiga aplicável, e o
`[BASE]` já entrega moldura e paleta.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9
- [ ] 🔴 **D5 — cruzar esta imagem contra `01` lado a lado.** Nemeia: **horizontal, rasa,
      passante, duas bocas na mesma imagem, luz alta e seca**. Equidna: **vertical, funda, uma
      boca, descida, traço de luz de manhã**. **Se um leitor de 4 anos puder achar que é a mesma
      casa → reprovada.** Rocha, cor, ângulo de câmera e formato do vão divergem de propósito
- [ ] **As duas bocas estão na mesma imagem**; a da direita entulhada **por mão humana**
- [ ] **Nada legível no negro.** É a elipse desenhada — a criança vê o lugar, não o que
      aconteceu dentro
- [ ] **A clava está no chão, largada.** Nunca em golpe
- [ ] Zero leão

### ORDEM E DEPENDÊNCIAS
**P8.** Sem dependência de entrada. 🔴 **D1 torna esta peça obrigatória** — o cap. 6 não fecha
sem ela e sem A3.

---

## A3 · `vinheta-6-2-a-pele` — cap. 6 · P8 · 🔴 A MARCA EMOCIONAL DO LIVRO

**Piso: 1 conversa, com direito a 2ª.** Espaço **reservado no `miolo.typ`** (D1).

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[CHARACTERS — canonical description, verbatim]
[colar a ficha HERACLES (with the lion skin — chapters 6 and 7) de S3, integral e verbatim]
[SCENE — action, emotion, setting, composition, light]
A small contained vignette, not a full page. HERACLES SEEN FROM BEHIND, walking down the
hill, away from the viewer. THE LION SKIN IS A FULL-LENGTH MANTLE covering him from shoulder
to ground: a cloak and a silhouette, its fur exactly the colour and texture of the lion's
hide, terracotta #C1440E glazed with slate #4A4A47 and dry cream #EDD9B4. THE LION'S HEAD
HANGS DOWN AT HIS SHOULDER, never over his own head. Far away and low on the horizon, small,
THE ROOFS OF CLEONAE. Hills of short grass, high dry light, ochre and terracotta. He is
walking down toward those roofs. Quiet, unhurried, no triumph.
[MUST NOT APPEAR]
No lion's head over his head, no hood, no helmet, no scalp worn, no face over face. No
skinning, no flaying, no knife, no blade. No lion's body being carried, no dead lion, no
living lion. No trophy held up, no raised arms, no triumphal pose. No blood, no wound. No
weapon in his hands. No face turned back toward the viewer.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. 🔴 **rosto-sobre-rosto / capuz / elmo / escalpo** (D3) · 2. 🔴 **esfolamento, faca, lâmina** ·
3. corpo do leão sendo carregado / leão morto / leão vivo · 4. troféu erguido, braços erguidos,
pose triunfal · 5. sangue, ferida · 6. arma nas mãos · 7. rosto virado para o leitor (ele está
**de costas**).

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
🔴 **`sheet-heracles` (S3) APROVADA** — e, se for possível gastar a segunda vaga,
**`sheet-leao-nemeia` (S4) APROVADA**, com a instrução:
`the fur of the mantle is EXACTLY the hide and mane of the lion in the second attached sheet —
the same colour, the same texture, the same drawing of the fur.`
**É a única continuidade de objeto do livro que atravessa dois capítulos** (§3.8), e ela é
verificada de novo em `07`.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9
- [ ] 🔴 **D3:** cabeça do leão **nunca** sobre a cabeça dele. A fórmula "escalpo como elmo" é
      de **outro leão** (Apolod. 2.4.10) e está proibida no livro inteiro
- [ ] Héracles **de costas**, descendo a colina
- [ ] A pele é **manto de corpo inteiro, do ombro ao chão** (Diodoro 4.11.4)
- [ ] **Zero esfolamento, zero corpo carregado** — nenhuma peça do livro mostra isso
- [ ] Os **telhados de Cleonas** ao longe, pequenos e baixos no horizonte
- [ ] **A pele é o mesmo objeto de S4 e de `07`** — cruzar as três
- [ ] Sem triunfo. É a marca emocional do livro, não um troféu

### ORDEM E DEPENDÊNCIAS
**P8.** Depende de **S3 e S4 aprovadas**.
🔴 **D1: vinheta da pele faltando → o capítulo 6 não fecha.** Ela deixou de ser condicional.

---

## A4 · `vinheta-8-1-a-montanha-que-ferve` — cap. 8 · P8

**Piso: 1 conversa, com direito a 2ª.**
🔴 **Vai no canto inferior da página SEGUINTE à `08a` — NUNCA na página final.**

### PROMPT

```
[BASE — colar §0.2 verbatim aqui]
[SCENE — action, emotion, setting, composition, light]
A small contained vignette, not a full page. A MOUNTAIN SEEN FROM FAR AWAY AND IN BROAD
DAYLIGHT, in ochre #C88A3D and terracotta #C1440E, standing calm against a high dry sky.
A SINGLE THIN THREAD OF WHITE SMOKE rises from its summit and unravels into the air. Nobody
is in the picture. The land around is quiet and empty. The light is high and dry. It reads
as: HE IS DOWN THERE, AND THE MOUNTAIN IS ONLY BREATHING. Contained: it simmers, it does not
terrify.
[MUST NOT APPEAR]
No creature, no serpent, no head, no shoulder, no part of any body anywhere. No fire, no
flame, no lava, no ember, no spark, no glow. No red anywhere. No dark sky, no storm sky, no
night. No people fleeing, no ruins, no houses, no figures. No face in the smoke and no face
in the rock. No thick smoke plume, no ash cloud, no eruption.
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

### `[MUST NOT APPEAR]` — 7 itens
1. 🔴 **Tifão ou qualquer parte dele** · 2. fogo, chama, lava, brasa, faísca · 3. **vermelho** ·
4. céu escuro ou de tempestade · 5. fuga, ruína, casa, gente · 6. 🔴 **qualquer rosto na fumaça
ou na rocha** · 7. erupção / coluna grossa de fumaça / nuvem de cinzas.

### BANDA ORNAMENTAL
**Não se aplica.**

### REFERÊNCIA A ANEXAR
**Nenhuma.** É paisagem; não há personagem e não há iconografia antiga aplicável.

### CHECKLIST DE APROVAÇÃO
- [ ] C1–C9
- [ ] **Um único fio fino de fumaça branca**, se desfazendo. Coluna grossa reprova
- [ ] **De longe e de DIA.** Luz alta e seca, céu claro
- [ ] Zero fogo, zero vermelho, zero criatura, **zero rosto na fumaça ou na rocha**
- [ ] Ninguém em quadro
- [ ] **Lê como "ele está ali embaixo, e a montanha só respira".** Se assustar, reprova —
      *contido: ferve, não aterroriza*
- [ ] 🔴 **Posicionamento verificado com o `mito-diagramador`: canto inferior da página SEGUINTE
      à `08a`, NUNCA na página final**

### ORDEM E DEPENDÊNCIAS
**P8, a última peça do livro.** Sem dependência de entrada.
⚠️ **Nota de fonte:** o Etna é de **Píndaro, *Pít.* 1.15–28**, não de Hesíodo — declarado na
página de Fontes.

---

# ORDEM DE PRODUÇÃO CONSOLIDADA — 22 pacotes

| Bloco | Peças | Depende de | Por quê |
|---|---|---|---|
| **P0** | **S1** `sheet-equidna` · **S2** `sheet-cerbero` | — | As duas peças que decidem o livro. Se travarem, travam antes de 9 páginas serem gastas |
| **P1** | **F1** `01` (p. 10) → **A1** p. 40 **na mesma sessão, com a p. 10 anexada** | S1 | 🔴 **D9 é testada aqui.** O gatilho de rebaixamento do §2.1 dispara em P1, não na página 40 |
| **P2** | **S4** `sheet-leao-nemeia` → **S3** `sheet-heracles` | S4 antes de S3 | A pele tem de sair do sheet do leão. É a única continuidade de objeto que atravessa dois capítulos |
| **P3** | **F7** `07` (p. 33) | S2, S3 | 🔴 **O teste "cachorro" (D8) trava a capa.** Passa aqui primeiro |
| **P4** | **F10** `00-capa` | S2, F7 aprovada | A capa age à distância de uma prateleira; não se descobre Cérbero nela |
| **P5** | **S5** Órtro · **S6** Ladon · **S7** Tifão · **S8** Esfinge | — | S6 primeiro dentro do bloco: é o desenho de referência do plano B de todas as outras |
| **P6** | **F2** `02` · **F3** `03` · **F4** `04` · **F5** `05` · **F6** `06` | S5, S6, S3, S8, S4 | As cenas de sheet único |
| **P7** | **F8** `08a` · **F9** `08b` | S7 · S1+S2+S5+S6+S8 **e F1** | `08b` é a página de 5 figuras e depende de 5 sheets — a mais cara, e por isso a última das full-bleeds |
| **P8** | **A2** vinheta 6.1 · **A3** vinheta 6.2 · **A4** vinheta 8.1 | A3 depende de S3+S4 | As peças contidas. **A2 e A3 são obrigatórias por D1** |

**Orçamento realista (§0.4 do guia):** 22 peças é o **piso teórico**. Com as rodadas das peças
poli-cefálicas, o piso de variações do §0.3 e o desgaste de aba, **o realista são 35–45
conversas, em 4 ou mais sessões.** Parar a cada **15 gerações na mesma aba**.

---

# REGISTRO — o que cada geração deve deixar no `log-geracao.md`

Uma linha por geração, sem exceção:

```
<peça> · rodada <n> · conversa <id> · MD5 <hash> · REF anexada: <qual, e o que se pediu que
ela ensinasse> · rótulo de proveniência (se não-ática) · veredito: aprovada | reprovada
(<direção concreta, nunca adjetivo>) · teste de nomeação: "<palavra verbatim da criança>"
[proxy, sem leitor real] · recodificação PNG: assinatura \x89PNG ✔/✘
```

**Reprovação vem com direção concreta** — *"baixe a orelha esquerda; a quarta cabeça fechou
contorno e virou contável"* —, **nunca com adjetivo**. **Máximo 3 rodadas por imagem.** Travou,
vai ao gate com as candidatas; se a reprova foi por contagem, dispara o **plano B na 3ª**, não
uma 4ª rodada.
