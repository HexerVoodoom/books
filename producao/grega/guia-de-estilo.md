# Guia de estilo visual — *Era Uma Vez um Mito · Grécia*

> **Fase 3a — direção de arte.** Dono: `mito-diretor-arte`. Produzido em 2026-08-31.
> **Congelado.** Nenhuma cena pode ser briefada, gerada ou validada contra outra versão deste
> arquivo. Toda alteração exige gate.
>
> Entradas: `references/estilo-ilustracao.md` (fórmula da série, spec técnica, regra de
> upscale, §Execução via Chrome) · `references/acervos-de-imagem.md` ·
> `references/serie-padroes.md` (grid de capa) · `producao/grega/livro-spec.md` Rev. 5
> (R4.1 posicionamento · R4.2 teto de 5 figuras nítidas · mapa de ritmo visual · hierarquia
> da fusão X5) · `producao/grega/pesquisa/canon-visual-consolidado.md` (**fonte única da
> verdade visual**; onde um dossiê divergir, ele perde) · os 10 capítulos, seção
> "Cena da ilustração" · `escrita/gate-onda-p2-p3.md`.
>
> Consumidores: `mito-ilustrador` (Fase 3b), `mito-diagramador` (Fase 4).
> Prompts montados a partir daqui: `ilustracoes/prompts.md`.

---

## 1. Fórmula aplicada

### 1.1 Base da série (invariante em toda a coleção)
Art nouveau à la **Alphonse Mucha** — moldura ornamental, contorno fluido, figura central
heroica, halos e arcos decorativos — com **acabamento aquarelado**: cores translúcidas,
bordas molhadas, granulação de papel.

### 1.2 Camada cultural deste livro — cerâmica ática
**Cerâmica ática de figuras vermelhas e negras**, aplicada **por camada**, não por mistura.
A hierarquia abaixo é transcrição vinculante da regra X5 do `livro-spec.md` e **não é
negociável cena a cena**:

| Camada | Quem manda | Detalhe |
|---|---|---|
| Moldura, faixa, ornamento, letra capitular, viñeta | **Cerâmica ática** | Meandro (chave grega), palmetas, frisos geométricos, ovas-e-dardos. Figura em silhueta de perfil é permitida **só** como ornamento de borda — **nunca** um personagem da história. |
| Paleta | **Cerâmica ática** | Terracota, negro de verniz, ocre/creme de argila, azul-egeu de apoio. Aplicada **em aquarela translúcida**, nunca em chapado de verniz. |
| Figuras, rostos, expressões, corpos, gesto, drapeado | **100% Mucha / aquarela** | Rostos frontais ou de três quartos, olhos legíveis, emoção lida por uma criança de 4 anos. Cabelo e tecido em arabesco art nouveau. |

**Proibido explicitamente, em toda imagem do livro:** personagem da história em perfil rígido
de figura negra · olho de frente em rosto de perfil · anatomia linear de vaso · rosto
inexpresso ou mascarado. O motivo é de público, não de gosto: 4–7 anos lê a história pelo
rosto. **A cerâmica emoldura; Mucha atua.**

### 1.3 Referências de acervo
> 🔧 **CORREÇÃO APLICADA EM 2026-09-01** — arquivo congelado, edição **autorizada pelo
> orquestrador** na Fase 3a do livro 2 (`grega-equidna`). Verificação feita pelo
> `mito-historiador-arte` (`producao/grega-equidna/ilustracoes/referencias-visuais.md` §5) e
> registrada em `producao/grega-equidna/ilustracoes/guia-changelog-3a.md`.
> **A pendência de verificação dos `objectID` está FECHADA.**
>
> **Causa do bloqueio original, para não voltar:** `14.130.12` e `14.130.14` são **NÚMEROS DE
> ACESSO, não `objectID`**. A API `collectionapi.metmuseum.org/public/collection/v1/objects/`
> só aceita `objectID` numérico e devolve **HTTP 400** para número de acesso. Metade da
> "pendência de proxy" era, na verdade, erro de tipo de identificador.
>
> **Duas das quatro linhas abaixo não eram referências utilizáveis, e ninguém notou em dois
> livros:** a nº 3 **nunca foi uma obra — era uma instrução de busca**, e passou por dois
> gates; a nº 4 estava listada sob "todas do Met Open Access", mas **o Met não tem Mucha**.
> Nenhuma das quatro estava inventada.

Todas as peças do Met são **Met Museum Open Access (CC0)**, agora com `objectID` verificado
via API (`isPublicDomain: true`).

| # | Obra | Acervo · `objectID` · acesso | Licença | Serve a |
|---|---|---|---|---|
| 1 | Ânfora panatenaica de prêmio (Atena Promachos entre colunas), Pintor de Euphiletos, figuras negras, ca. 530 a.C. | Met · **`objectID` 248902** · acesso 14.130.12 | CC0 ✅ verificada | proporção de figura, drapeado geométrico *(estudo de borda apenas)* |
| 2 | Cratera funerária geométrica, Oficina de Hirschfeld, ática, ca. 750–735 a.C. | Met · **`objectID` 248904** · acesso 14.130.14 | CC0 ✅ verificada | **meandros e frisos das molduras** |
| 3 | ~~"Kylix / lekythos de figuras vermelhas com cenas de deuses (busca: Hermes, Atena, Perseu)"~~ 🔴 **NÃO ERA UMA OBRA — era uma instrução de busca.** **Substituída por:** *Terracotta calyx-krater*, Pintor de Spreckles, ática de figuras vermelhas, ca. 450 a.C. | Met · **`objectID` 247946** · acesso 07.286.66 | CC0 ✅ verificada | atributos, gesto, ornamento |
| 4 | Alphonse Mucha, *Zodiac* (litografia, 1896) — 🔴 **NÃO É DO MET** (o Met não tem Mucha); a rubrica do cabeçalho estava errada, não o objeto | **Wikimedia Commons** — `File:Alphonse_Mucha_-_Zodiac,_1869.jpg` *(o "1869" é erro de quem subiu o arquivo; a obra é de 1896)* | DP (Mucha m. 1939) ✅ verificada | moldura, arabesco, arco decorativo |

**Extensão arqueológica declarada** (não é fonte literária, e a p. 53 registra): a régia de
**Minos** (cornos estilizados no diadema, *lábrys* no encosto do trono) e o **traje minoico de
babados de Ariadne** são reconstrução de Cnossos. Pendência 5.1 do cânon visual —
**confirmar com o `mito-historiador-arte` antes da Fase 3b.** Nenhum dos dois aparece em
ilustração de página inteira, o que rebaixa o risco a ornamento e viñeta.

---

## 2. Paleta — HEX fechado

Estes valores fecham a pendência 5.4 do `canon-visual-consolidado.md`. As "paletas pessoais"
do cânon eram direções; aqui viram números.

### 2.1 Paleta serial do livro (a base de toda página)
| Nome | HEX | Uso |
|---|---|---|
| Terracota (argila ática) | `#C1440E` | corpo dominante da página, terra, cerâmica |
| Terracota escura | `#8C3410` | sombra de terracota, rocha, Cronos |
| Negro de verniz | `#1B1613` | contorno, moldura, escuro, fenda, sombra |
| Ocre de argila | `#C88A3D` | luz média, madeira, pele em sombra quente |
| Creme de argila | `#EDD9B4` | claro, veste, luz difusa |
| Fundo de papel | `#F6EFE2` | ground aquarelado, granulação |
| Azul-egeu claro | `#6FA8B8` | céu, água rasa, ar |
| Azul-egeu profundo | `#1F5A6E` | mar, noite, profundidade |

### 2.2 Acentos controlados (uso restrito e declarado)
| Nome | HEX | Onde pode aparecer |
|---|---|---|
| **Ouro quente** | `#E8A317` | **cap. 1 e cap. 10B apenas** — prêmio e forja. Acento único e forte. |
| **Ouro pálido** | `#D9CB8A` | **cap. 9 apenas** — amarelo lavado, sem calor, sem brilho de tesouro. |
| Ouro de trono (frio) | `#C9A227` | cap. 5, o trono de Hera — ouro rico mas **frio**, contra o facho quente da forja |
| Verde-oliva acinzentado | `#7E8B5E` | Atena, oliveira |
| Verde-mata | `#4E6B3C` | Ártemis, hera de Dioniso |
| Verde-broto | `#8FB865` | Perséfone, florada do cap. 6 |
| Prata fria | `#C6CBD1` | Apolo (arco), Ártemis, Hécate, luz fria |
| Púrpura régia | `#6B2C4F` | Hera |
| Púrpura-uva | `#5C2A4E` | Dioniso |
| Violeta | `#7A5AA0` | Perséfone |
| Bronze | `#A9773F` | Perseu, escudo, Ares |
| Adamante (pedra escura polida) | `#4A4A47` | **foice de Cronos e foice de Perseu** — ⚠️ pedra, nunca metal lustroso |
| Vermelho-minoico | `#9E2B2B` | Creta, Minos, Ariadne (viñeta) |
| Açafrão | `#E3A008` | Ariadne (viñeta) |
| Branco de vela / Atenas | `#F2F2EA` | Egeu, Pégaso, véus |

### 2.3 A regra dos dois ouros (vinculante — caps. 1 × 9)
Os caps. 1 e 9 repartem de propósito o mesmo mecanismo visual (um interior comum virando
ouro) com a **polaridade invertida**: no cap. 1 o ouro **chega** a quem deu tudo e é prêmio;
no cap. 9 o ouro **toma** a comida e é castigo. Para a inversão se ler:
- **cap. 1 → `#E8A317`**, quente e cheio, único acento forte de um quadro de terracota e ocre;
- **cap. 9 → `#D9CB8A`**, pálido, apagando a cor da comida.

Se as duas páginas saírem com o mesmo ouro, o livro diz a mesma coisa duas vezes com sinais
trocados. **Critério de reprovação automática na validação.**

### 2.4 A regra das três luzes (vinculante — caps. 7 × 8 × 9)
Três "instantes anteriores"/tensos em sequência. A luz é o que os separa:
- **cap. 7:** a luz **nasce de um objeto** — ponto quente (o escudo de bronze) num quadro quase preto;
- **cap. 8:** a luz **atravessa** a página — fresta vertical fria ao fundo (a porta de Ariadne) **+ segunda fonte**, um lampejo baixo à frente que projeta a sombra. **O fio não brilha por si: ele reflete a fresta;**
- **cap. 9:** luz **plana e diurna de salão**, sem ponto quente e sem facho — o quadro perde cor em vez de ganhar brilho.

### 2.5 Diretriz da dupla luz sem astros (X14)
Nos caps. 2 e 3, **nenhum astro no quadro**: sem sol, sem lua, sem disco no céu. A dupla luz
do cap. 3 é **quente (do próprio Apolo) × prateada/fria (na pele de Ártemis e no prado)**.
No cap. 10A as estrelas correm **pelo corpo de Urano**, não como sol ou lua com face.

---

## 3. Parâmetros de geração

| Item | Valor |
|---|---|
| Ferramenta da coleção | **Gemini** (decisão do humano, 2026-08-31) |
| Modelo de imagem | `gemini-2.5-flash-image` |
| Modo de execução | Chromium/Playwright dirigido por agente (`references/estilo-ilustracao.md` §Execução via Chrome) **ou** API com chave em variável de ambiente — **decisão de credencial pendente do humano**; sem conta o Gemini recusa gerar imagem |
| Flags obrigatórias do Chromium | as do §Execução via Chrome, verbatim (`--disable-quic`, `--ssl-version-max=tls1.2`, `--disable-features=EncryptedClientHello,...`) — sem elas o túnel morre no handshake |
| **Proporção — cenas e capa** | **1:1** (o trim do livro é quadrado, 20,5 × 20,5 cm) |
| Proporção — character sheets | 4:3 (folha de referência, não é asset de página) |
| Resolução a pedir | **a maior saída nativa disponível** ("highest resolution available", ~1024–2048 px no lado maior). Nunca aceitar saída < 1024 px |
| Variações por prompt | **4**, geradas em lote; curadoria do `mito-diretor-arte` |
| Consistência de personagem | **character sheet aprovada primeiro**, anexada como imagem de referência na conversa + **descrição canônica colada verbatim** em todo prompt de cena. Alternativas registradas se o Gemini derivar: Midjourney `--oref`/`--sref`, Flux Kontext para edição |
| Seed | o Gemini não expõe seed — a consistência é obrigação da sheet + descrição verbatim + referência anexada. **Registrar isso como risco no gate da Fase 3b.** |

### 3.1 Entrega e upscale
```
trim               20,5 × 20,5 cm
+ sangria 3 mm/lado 21,1 × 21,1 cm
@ 300 DPI          2492 × 2492 px   ← pixels finais obrigatórios
```
- Zona segura: nada essencial a menos de **10 mm** da borda de corte. Rosto de protagonista
  **nunca** na faixa de sangria.
- **Upscale declarado (permitido pela spec da série):** ferramenta **Real-ESRGAN x4plus**
  (alternativa: Topaz Gigapixel, se o humano tiver licença), aplicada de **2048 → 2492 px =
  fator 1,22×**, muito abaixo do teto de 2×. Se o Gemini entregar apenas 1024 px, o fator vira
  **2,43× e estoura o teto** — nesse caso **não se disfarça**: regenera-se pedindo resolução
  maior, ou a pendência sobe ao gate.
- **Inspeção obrigatória:** recorte a 100% no rosto do protagonista de cada página; metadado de
  DPI não prova nada.
- Formato: **PNG**, RGB na Fase 3; conversão CMYK é da Fase 4 (`mito-diagramador`).
- Nomeação: `producao/grega/ilustracoes/<nn>-<slug>.png` · sheets em
  `ilustracoes/character-sheets/sheet-<personagem>.png`.

### 3.2 Prompt-base da série, preenchido com a camada grega (verbatim — todo prompt começa por ele)

```
[SERIES STYLE] Children's book full-page illustration, Alphonse Mucha art nouveau
composition with an ornamental border, soft watercolor rendering: translucent washes, wet
blooming edges, visible cold-press paper grain.
[GREEK CULTURAL LAYER — ORNAMENT AND PALETTE ONLY] The border is an Attic-vase band: Greek
key meander, palmettes and egg-and-dart, painted in watercolour, never as flat glossy slip.
Palette of Attic pottery: terracotta #C1440E, glaze black #1B1613, clay ochre #C88A3D, clay
cream #EDD9B4, on a warm paper ground #F6EFE2, with Aegean blue #6FA8B8 and #1F5A6E for sea
and sky.
[STRICT STYLE HIERARCHY — NON-NEGOTIABLE] The Attic ceramic governs ONLY the frame, the
ornament and the palette. Every character of the story is rendered 100% Mucha watercolour:
faces frontal or three-quarter, expressive, readable eyes, emotion legible to a four-year-old
child, hair and drapery in art nouveau arabesque. NEVER draw a story character as a rigid
black-figure profile, never a frontal eye on a profile face, never flat vase-painting
anatomy, never a blank or masked face. Silhouette figures are allowed only in the ornamental
border and for background crowds.
[CHARACTERS — canonical description, verbatim]
[SCENE — action, emotion, setting, composition, light]
[MUST NOT APPEAR]
Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.
No text, no watermark, no lettering.
```

---

## 4. Personagens — descrição canônica CONGELADA

> **Regra de uso:** colar **verbatim**, em inglês, no bloco `[CHARACTERS]` de todo prompt em
> que o personagem apareça. **Nunca parafrasear.** Se a IA não acertar, muda-se a estratégia
> de geração (sheet anexada, mais variações, edição por Flux Kontext) — **não se afrouxa a
> descrição**.
>
> Fonte: `pesquisa/canon-visual-consolidado.md` §2, mais os briefs de cena dos capítulos.
> Onde este bloco e um dossiê divergirem, **este bloco prevalece**.

### 4.1 Regras de continuidade do elenco (valem sobre todas as fichas)
1. Distinção por **atributo + paleta**, nunca por idade, tipo físico ou feiura inventados.
2. **Zeus, Posêidon e Hades são parecidos de propósito** — são irmãos e o texto insiste nisso.
   Onde dois deles dividirem quadro, **o atributo é obrigatório e legível**.
3. **Apolo e Hermes adulto** são os dois jovens imberbes adultos: louro + arco de prata ×
   pétaso + caduceu. **Nunca** distingui-los por idade.
4. **Ártemis e Apolo são gêmeos:** mesmo rosto, mesma paleta de cabelo.
5. **O bastão de Hermes:** presente no cap. 1 desde o início, **ausente no cap. 4 até a última
   cena**. As duas coisas estão certas — ⚠️ **o diretor de arte não harmoniza.**
   E no cap. 1 é **bastão de ouro de três ramos, nunca caduceu de duas serpentes** (X2).
6. **Hefesto não aparece na Titanomaquia** e **nunca é chamado de filho de Zeus**.
7. **Dioniso é jovem imberbe** (decisão X14 do gate da Fase 1) — ⚠️ **revisável no checkpoint
   humano**, com três capítulos dependentes (5, 8, 9).
8. A ilustração **10B ("os libertados")** é a **página de referência de continuidade do
   livro** — primeira aparição dos três irmãos e dos três atributos. **Produzir primeiro.**

---

### Zeus
`character-sheets/sheet-zeus.png` · status: **a gerar** (onda P5) · caps. **1, 10B**
```
ZEUS: a mature, tall Greek god with a full dark wavy beard and dense wavy hair, broad-browed,
calm and kindly face rendered frontal or three-quarter, fully expressive, art nouveau
watercolour. Attributes, obligatory in every scene: the THUNDERBOLT, a winged double-pointed
bundle of fire, and the eagle; sceptre optional. Personal palette: sky — light Aegean blue
#6FA8B8 and warm gold #E8A317. He is deliberately similar to his brothers Poseidon and
Hades; only the attribute and the palette tell them apart.
```
- **Cap. 1 (Zeus disfarçado, revelado em luz):** manto de viajante **caindo do ombro**; o raio
  **apenas insinuado como luz**, nunca empunhado. É o **mesmo rosto do cap. 10B**.
- **Cap. 10B:** **Zeus jovem** — barbado (a barba é atributo de identidade, não de idade), mas
  o mais moço dos três irmãos, com o raio recém-forjado ainda com calor de forja.
- ⚠️ **Tensão de continuidade a resolver na validação:** o cap. 10B pede "Zeus jovem" e o cap. 1
  pede o mesmo rosto do cap. 10. Solução de direção: **um só rosto**, e a juventude do cap. 10B
  se lê pelo **gesto e pela barba mais curta e menos grisalha**, nunca por outro rosto.

### Posêidon
`character-sheets/sheet-poseidon.png` · status: **a gerar** · caps. **2, 10B**
```
POSEIDON: a mature Greek god, bearded, with long WET wavy hair and beard, water still beading
in them; face frontal or three-quarter, expressive, proud but never threatening, art nouveau
watercolour. Attribute, obligatory in every scene: the TRIDENT. Personal palette: sea — deep
Aegean blue #1F5A6E and glaze black #1B1613.
```
⚠️ **Mesmo rosto, mesmo tridente, mesma paleta** nos caps. 2 e 10B — divergência aqui é erro,
não interpretação. **Nunca** em pose de vilão, nunca derrotado.

### Hades
`character-sheets/sheet-hades.png` · status: **a gerar** · caps. **10B** *(o elmo em 7)*
```
HADES: a mature Greek god, bearded, similar in build to his brothers Zeus and Poseidon, face
frontal or three-quarter, serious and calm, never sinister, art nouveau watercolour.
Attributes: the HELMET OF INVISIBILITY, a dark hide-and-metal cap, and Cerberus. Personal
palette: underworld — glaze black #1B1613 and dark ochre.
```
⚠️ **Hades não é demônio: sem chifres, sem vermelho, sem fogo.** O **elmo** desenhado aqui é o
mesmo objeto que Perseu carrega **na mão** no cap. 7 — a sheet fixa a forma do objeto.

### Atena
`character-sheets/sheet-atena.png` · status: **a gerar** · caps. **2, 7 (parcial)**
```
ATHENA: a Greek goddess, young and adult at once — never a little girl, never a matron. Her
HELMET IS PUSHED BACK on her head so the whole face is free and expressive, frontal or
three-quarter, art nouveau watercolour. Long peplos; fringed aegis bearing a SMALL, stylised
gorgoneion, unemphasised. Attributes: spear, owl, olive tree. Personal palette: ochre
#C88A3D, clay cream #EDD9B4, greyish olive green #7E8B5E.
```
A imagem do cap. 2 **vira a character sheet dela para o resto da série**. No cap. 7 ela entra
**só pela margem**: o braço, o drapeado, a mão sobre a mão de Perseu e o lampejo do elmo
empurrado para trás — **rosto fora de quadro**, e é o mesmo rosto do cap. 2.

### Apolo
`character-sheets/sheet-apolo.png` · status: **a gerar** · caps. **3, 4**
```
APOLLO: a beardless youth, a kouros with LONG hair, radiant and warm-skinned, face frontal or
three-quarter, fully expressive, art nouveau watercolour. Fixed attributes: SILVER BOW and
quiver; laurel wreath or laurel branch; lyre/kithara; a raven. Personal palette: warm gold,
white, silver #C6CBD1.
```
⚠️ **O tripé de Delfos NÃO entra no cânon visual.**
⚠️ **Contrato do cap. 4:** Apolo **entra sem lira e sai com ela** — nas páginas anteriores à
troca, a lira é do bebê.
No **cap. 3** ele é **recém-nascido**, com a faixa dourada desfeita — a ficha vale para a
identidade (cabelo, luz, paleta), não para a idade.

### Hermes
`character-sheets/sheet-hermes.png` · status: **a gerar** · caps. **1 (adulto), 4 (bebê)** —
**uma folha com os dois estados**
```
HERMES (adult): a beardless young man, traveller's build, face frontal or three-quarter,
sly and friendly, art nouveau watercolour. Attributes: the PETASOS, a wide-brimmed traveller's
hat; a short chlamys cloak; winged sandals; the herald's staff. Personal palette: light ochre
#C88A3D and travel grey.
```
```
HERMES (newborn, chapter 4 only): a one-day-old baby, sitting up, half-undone swaddling
bands, wicker sandals, face three-quarter, bright and mischievous with NO guilt at all.
He carries the TORTOISE-SHELL LYRE. He has NO petasos, NO winged sandals, NO chlamys and
NO staff — he is not the messenger yet.
```
⚠️ **Cap. 1:** **bastão de ouro de três ramos** na mão, **nunca caduceu de duas serpentes**, e
**sem asas nos pés** (Ovídio: ele as deixou de lado).
⚠️ **Cap. 4:** o bastão só existe **na última cena**, e está **na mão de Apolo**.

### Dioniso
`character-sheets/sheet-dioniso.png` · status: **a gerar** · cap. **5** *(citado em 8 e 9)*
```
DIONYSUS: a BEARDLESS YOUTH with long wavy hair, face frontal or three-quarter, warm and
friendly, art nouveau watercolour. Attributes: the THYRSUS tipped with a pine cone; an ivy
crown; a kantharos cup; grapes; a nebris (fawn-skin); a panther. Personal palette: grape
purple #5C2A4E and ivy green #4E6B3C.
```
⚠️ **Jovem imberbe** por decisão X14 do gate — **revisável no checkpoint humano**. Se o humano
reabrir e escolher o barbado arcaico, **a sheet e a cena do cap. 5 são refeitas**, e o elenco
masculino passa a ter 12 barbados contra 3 imberbes (custo declarado).

### Deméter e Perséfone
`character-sheets/sheet-demeter-persefone.png` · status: **a gerar** · cap. **6** —
**uma folha para as duas** (só dividem quadro entre si; a sheet existe para travar o par)
```
DEMETER: a matronal Greek goddess, warm and strong, face frontal or three-quarter,
expressive, art nouveau watercolour. Attributes: a CROWN OF WHEAT EARS; a sheaf of grain; TWO
TORCHES; a mantle that shades from dark at the hood to gold at the hem. Personal palette:
grain ochre #C88A3D and gold.
```
```
PERSEPHONE: a young GIRL, not a bride — long loose hair, long peplos, face three-quarter,
unmistakably happy, art nouveau watercolour. Attributes: a four-pointed torch; flowers;
a pomegranate. Personal palette: violet #7A5AA0 and sprout green #8FB865.
```
⚠️ **Perséfone volta INTEIRA:** não escurecer rosto nem traje.

---

### 4.2 Personagens de aparição única — descrição canônica (sem sheet própria)

> Estes aparecem em **uma só ilustração**. A própria página aprovada vira a referência deles.
> A descrição continua **congelada e colada verbatim**.

**Baucis e Filêmon** (cap. 1)
```
BAUCIS AND PHILEMON: a very old peasant couple, HAND IN HAND, the same height, a symmetrical
pair; dignified and active old age, never decrepit, never comic, never caricatured — the age
reads in the face and in the hands. Rough homespun clothes, bare feet. Faces frontal or
three-quarter, full of quiet astonishment. Palette: terracotta #C1440E and earth brown.
```
⚠️ **Nunca separar os dois em nenhum quadro do capítulo.**

**Cécrops** (cap. 2)
```
CECROPS: the first king of Athens, bearded, with a SERENE, kindly face, frontal or
three-quarter — anguiped: from the waist down his body is a coiled SERPENT TAIL. The tail
reads as origin, never as menace: no hissing, no forked tongue, no cast shadow. Palette:
earth green and ochre #C88A3D.
```
**Leto · Ártemis · Delos** (cap. 3)
```
LETO: a veiled matron with beautiful braids, kneeling, ARMS AROUND A PALM TREE — her
attribute is the palm and the gesture, no object. Face expressive with TIREDNESS AND RESOLVE,
never helplessness. Palette: cream #EDD9B4 and pale blue.
ARTEMIS: a newborn who is already standing and already herself; twin of Apollo, the same face
and the same hair; SHORT chiton and boots — the only goddess in short dress — bow and quiver,
a fawn. Palette: cool silver #C6CBD1 and forest green #4E6B3C.
DELOS: the island itself, with a READABLE FACE IN THE CLIFF, looking — the landscape has
features, like Gaia and Uranus.
```
**Hera · Hefesto · Ares** (cap. 5)
```
HERA: a queenly goddess, long peplos, POLOS DIADEM OVER A VEIL, GOLDEN SANDALS visible,
sceptre. Face frontal or three-quarter, chin up, dignified, VEXED BUT NOT DISTRESSED, mouth
closed — never grotesque, never comic. Palette: royal purple #6B2C4F and gold. Not the
peacock.
HEPHAESTUS: a mature god, BEARDED with a dark full beard and a straight nose, broad chest and
strong shoulders with thin legs; a conical PILOS cap over thick hair; an EXOMIS tunic pinned
at one shoulder; a HAMMER in one hand and a sturdy STAFF in the other, his weight on the
staff, mid-stride — walking in of his own will, upright, never carried, never propped by
anyone. Face three-quarter and fully expressive, a dignified working man. Palette: ember —
warm terracotta #C1440E and forge gold.
ARES: full armour, CRESTED HELMET under his arm, spear and round shield, leaning at the back,
sulking, EYEBROWS SINGED. A counter-example, not a villain. Palette: bronze #A9773F and red.
```
**Perseu** (cap. 7)
```
PERSEUS: the YOUNGEST figure in the whole book — almost grown, never a warrior. Beardless,
short chlamys, WINGED SANDALS at the ankles, the KIBISIS satchel slung across him, and the
HARPE, a curved sickle of ADAMANT — dark polished STONE, not lustrous metal: any glint on it
is the sheen of burnished stone, never a steel edge. Face three-quarter and readable:
FEAR UNDER CONTROL, never fury. Palette: bronze #A9773F and glaze black #1B1613.
```
**Teseu** (cap. 8)
```
THESEUS: a young beardless boy, hair cut short at the front, NO ARMOUR AND NO SWORD, the BALL
OF THREAD in his hands. Face three-quarter, fully expressive: the resolve of someone who
chose to come, never bravado. Palette: white and Attic red.
```
**Midas** (cap. 9)
```
MIDAS: a mortal king of PHRYGIA, not a god — no aura, no divine attribute. He wears the
PHRYGIAN CAP, a soft conical hat with the point falling forward, and a Phrygian court robe:
he dresses Phrygia, not Greece, and that is what tells him apart from the whole cast.
Face three-quarter and fully expressive. HIS HANDS ARE THE ORIGIN OF EVERYTHING.
Palette: gold invading terracotta #C1440E.
```
**Gaia · Urano · Ciclope · Cem-Mãos** (cap. 10)
```
GAIA: the Earth herself, emerging from the ground only TO THE WAIST, her body continuing into
the landscape, hair turning into roots and mountain ridges, eyes open and serene. NEVER a
woman standing on the ground. Palette: terracotta #C1440E and ochre #C88A3D.
URANUS: the SKY WITH A FACE — his body IS the night vault, stars running across his shoulder
and arm, arching over Gaia; face readable and distant, no object. Palette: starred black
#1B1613.
CYCLOPS: a craftsman, not a monster — ONE EYE in the middle of the forehead, hammer and
anvil; the eye is a feature, not a horror. Expression of GIVING, never of threat.
HUNDRED-HANDER: a fan of arms rendered as art nouveau ARABESQUE RHYTHM AND SILHOUETTE, never
an anatomical count. LIKEABLE — the child must root for him.
```
**Medusa / Górgonas** (cap. 7) — 🔴 **regra dura**
```
MEDUSA: appears ONLY as a small, sleeping reflection seen from far above inside the bronze
shield, resolved as a shape with no facial detail; and, in the real plane behind, only as a
BACKLIT SILHOUETTE cropped by the frame. THE FACE OF MEDUSA IS NEVER SHOWN FRONTALLY,
NEVER IN CLOSE-UP, NEVER AWAKE.
```
**Minotauro** (cap. 8) — 🔴 **regra dura**
```
THE MINOTAUR appears ONLY as a cast SHADOW on a side wall: horns and shoulders, unmistakable,
large enough for the danger to be real. No body shown, no eyes, no drool, no blood. It reads
as IMPRISONED, not as a hunter. The shadow is STATIC — no gesture, no lunge, no reaching arm
— and it NEVER TOUCHES OR OVERLAPS Theseus: lit floor separates them.
```
**O ganso** (cap. 1): branco, asas abertas, pescoço esticado, encostado na perna de um dos
deuses. **Termina vivo e na cena.**

---

## 5. Tabela — quem aparece em qual ilustração

| Ilustração | Página | Momento | Personagens **nítidos** (rosto + acabamento) | Contagem R4.2 | Em silhueta / fora de quadro |
|---|---|---|---|---|---|
| `00-capa` | capa 4/0 | — | Zeus (ou o motivo serial — ver §6) | **1** ✔ | — |
| `01-zeus-baucis-e-filemon` | p. 10 | durante | Baucis, Filêmon, Zeus, Hermes (adulto), o ganso | **5/5** ✔ | vizinhos **proibidos**; aves do lago em silhueta |
| `02-atena-disputa-por-atenas` | p. 14 | pós-gesto | Posêidon, Atena, **Cécrops (centro de leitura)**, o homem que prova, a menina da azeitona | **5/5** ✔ | todo o resto do povo em silhueta |
| `03-leto-e-a-ilha` | p. 18 | pós-gesto | Leto, Ártemis, Apolo, o rosto no penhasco de Delos | **4/5** ✔ | deusas do mar e do céu em silhueta |
| `04-hermes-o-gado-e-a-lira` | p. 22 | **durante** | Hermes bebê, Apolo | **2/5** ✔ | friso de vacas **sem número legível** |
| `05-hefesto-o-trono-de-ouro` | p. 24 *(exceção R4.1)* | instante anterior | Hera, Hefesto, Dioniso, Ares, **um** deus desistindo | **5/5** ✔ | outros deuses, silenos, cortejo, burro |
| `06-demeter-e-persefone` | p. 30 | **pós-gesto (abraço consumado)** | Deméter, Perséfone | **2/5** ✔ | Hades **fora de quadro**; Hécate e Hélio ausentes |
| `07-perseu-e-a-medusa` | p. 32 *(exceção R4.1)* | instante anterior | Perseu, a Medusa **refletida**, a mão de Atena (figura parcial) | **3/5** ✔ | as duas Górgonas irmãs; a Medusa real em contraluz |
| `08-teseu-e-o-minotauro` | p. 36 *(exceção R4.1)* | instante anterior | **só Teseu** | **1/5** ✔ | Ariadne = mão + fresta; Minotauro = sombra |
| `09-midas-o-toque-de-ouro` | p. 40 *(exceção R4.1)* | transformação consumada / percepção | **só Midas** | **1/5** ✔ | servidores parados, em silhueta |
| `10a-do-caos-abertura` *(PROVISÓRIA)* | p. 44 | estado | Gaia, Urano | **2/5** ✔ | montanhas e mar como paisagem |
| `10b-do-caos-os-libertados` *(PROVISÓRIA)* | p. 46 *(exceção R4.1)* | instante anterior | Zeus, um Ciclope, Posêidon, Hades, um Cem-Mãos | **5/5** ✔ | 2 Ciclopes, 2 Cem-Mãos, os Titãs |

**Character sheets (8):** Zeus · Posêidon · Hades · Atena · Apolo · Hermes (adulto + bebê,
uma folha) · Dioniso · Deméter+Perséfone (uma folha).

**Critério de quem ganha sheet — e por que ele mudou:** o `livro-spec.md` listou, na onda P5,
"Zeus, Hera, Apolo, Ártemis, Hefesto, Hermes, Atena". Essa lista foi feita na Fase 0, **antes
de os briefs existirem**, e mira quem é recorrente **no texto**. O critério correto é quem é
recorrente **na ilustração**, mais o custo de continuidade:
- **entram** Posêidon (2 e 10B), Hades (10B + o elmo do cap. 7), Dioniso (decisão revisável
  com 3 capítulos dependentes) e Deméter+Perséfone (o único reencontro pleno do livro — se
  os dois rostos falharem, a página falha);
- **saem** Hera, Ártemis e Hefesto: aparecem em **uma** ilustração cada, e a própria página
  aprovada vira a referência deles. Sheet para aparição única é orçamento de arte queimado.
⚠️ **Divergência declarada ao gate.**

---

## 6. Capa — grid da série (`references/serie-padroes.md`)

Grid **idêntico entre livros**: título da série no topo, título do livro abaixo, **ilustração
central com moldura cultural**, mesmo lugar e mesma tipografia. O livro grego é o **piloto**:
o que se decidir aqui vira o grid dos próximos.

- **Ilustração central:** figura única, frontal, dentro de um **arco Mucha cujo perfil interno
  é meandro** — o arco é o elemento serial; **o que muda por livro é o ornamento que o
  preenche.**
- **Escolha da figura:** **Zeus com o raio**, de frente, dentro do arco. É a única figura que
  um leitor de 4 anos identifica como "Grécia" antes de abrir o livro, e ela aparece no
  primeiro e no último capítulo — a capa promete o arco do livro inteiro.
- **A arte de capa é gerada SEM tipografia** (`no text, no lettering`). Título da série,
  título do livro e autoria são **compostos em Typst** pelo `mito-diagramador` (Fase 4),
  nas zonas reservadas do grid. **Nenhuma letra sai do gerador** — nem como enfeite.
- Zona de tipografia reservada: **terço superior**, sobre fundo de baixo contraste.
- ⚠️ **Pendência serial:** a **tipografia da série** está `[a definir no primeiro run]` em
  `serie-padroes.md`. É decisão do `mito-diagramador` + gate humano na Fase 4; a arte de capa
  não depende dela, mas o grid final sim.

---

## 7. Barra de validação (o checklist que todo veredito usa)

Nenhuma imagem é "boa" ou "ruim". Cada candidata recebe **veredito escrito, item a item**:

1. **Cena certa** — é o momento arbitrado no mapa de ritmo visual, não o momento genérico?
2. **Personagem fiel** — a descrição canônica está cumprida **atributo por atributo**?
3. **Estilo da série** — Mucha + aquarela, moldura ornamental, granulação de papel?
4. **Camada cultural na camada certa** — meandro/palmeta na borda, paleta ática, e
   **nenhum personagem da história em perfil de figura negra**?
5. **Teto R4.2** — no máximo 5 rostos acabados; o resto em silhueta?
6. **Legível para uma criança de 4 anos** — ela encontra o protagonista **sem ajuda do
   adulto**? O rosto carrega a emoção da página?
7. **Proibições do capítulo** — nenhuma delas presente?
8. **Técnica** — mãos, anatomia, número de dedos, artefatos de IA, texto fantasma?
9. **Entrega** — 2492 × 2492 px, zona segura respeitada, upscale ≤ 2× declarado e inspecionado
   a 100%?

**Reprovação vem com direção concreta** ("aproxime o foco, o martelo sumiu"), nunca com
adjetivo. **Máximo 3 rodadas por imagem**; travou, vai ao gate com as candidatas.
