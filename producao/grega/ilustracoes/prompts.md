# Prompts de ilustração — *Era Uma Vez um Mito · Grécia*

> **Fase 3a.** Dono: `mito-diretor-arte`. Produzido em 2026-08-31.
> Montado pelo `templates/prompt-ilustracao.md`, sobre o **prompt-base congelado** do
> `guia-de-estilo.md` §3.2 e as **descrições canônicas congeladas** do §4.
> Executor: `mito-ilustrador` (Fase 3b) — **não altera prompt sem voltar ao diretor de arte.**
>
> **Ordem de produção obrigatória:**
> 1. as **8 character sheets** (nenhuma cena de um personagem antes da sheet dele aprovada);
> 2. **`10b-do-caos-os-libertados`** — é a página de referência de continuidade do livro
>    (os três irmãos e os três atributos juntos pela primeira vez);
> 3. as demais cenas, na ordem dos capítulos;
> 4. **`00-capa`** por último, quando o elenco já existir.
>
> **Todos os prompts terminam em `no text, no watermark, no lettering`.** Nenhuma letra sai do
> gerador — nem na capa.
>
> **Legenda de status:** ⬜ a gerar · 🟡 em rodada · ✅ aprovada · 🔴 travada (vai ao gate).

---

## 0. Bloco comum — `[BASE]`

Todo prompt abaixo começa **literalmente** por este bloco. Ele está escrito uma vez aqui e
referido como `[BASE]` nos blocos seguintes; o `mito-ilustrador` cola-o por extenso.

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
```

**Parâmetros iguais para toda cena e para a capa:** Gemini `gemini-2.5-flash-image` · **1:1** ·
"highest resolution available" · **4 variações** · sheet do personagem anexada como referência
· entrega **2492 × 2492 px** após upscale Real-ESRGAN x4plus ≤ 2× (guia §3.1).

---

# PARTE I — CHARACTER SHEETS (8)

Proporção **4:3**. Não são assets de página: são referência de consistência. Fundo neutro,
sem cena, sem moldura de meandro (a moldura pertence à página, não ao personagem).

**Bloco comum das sheets — `[SHEET]`:**
```
Character reference sheet for a children's picture book, Alphonse Mucha art nouveau
watercolour: translucent washes, wet edges, paper grain, on a plain warm paper ground
#F6EFE2. Layout: a FULL-LENGTH front view, a full-length three-quarter view, and THREE HEAD
STUDIES with different expressions, plus the character's key attributes drawn separately as
small clean studies. Consistent proportions across all views. The face is expressive and
readable to a four-year-old in every view. No frame, no background scene, no ornament.
```

---

## `sheet-zeus.png` ⬜
**Personagem:** Zeus · usado em: cap. 1, cap. 10B, capa.
```
[SHEET]
ZEUS: a mature, tall Greek god with a full dark wavy beard and dense wavy hair, broad-browed,
calm and kindly face rendered frontal or three-quarter, fully expressive, art nouveau
watercolour. Attributes, obligatory in every scene: the THUNDERBOLT, a winged double-pointed
bundle of fire, and the eagle; sceptre optional. Personal palette: sky — light Aegean blue
#6FA8B8 and warm gold #E8A317. He is deliberately similar to his brothers Poseidon and
Hades; only the attribute and the palette tell them apart.
Expressions to show: kindly and watchful (the disguised traveller of chapter 1); grave
resolve (the moment before the thunderbolt of chapter 10); quiet warmth.
Attribute studies: the winged double-pointed thunderbolt; the eagle; a traveller's mantle
falling from one shoulder.
no text, no watermark, no lettering
```
**Aceitação:** raio alado de pontas duplas legível como objeto ✔ · águia ✔ · barba escura
ondulada e cabelo denso ✔ · paleta azul-egeu claro + ouro quente ✔ · **rosto frontal/três
quartos expressivo, nunca perfil de figura negra** ✔ · **este é o rosto que os caps. 1 e 10B
vão repetir** — se ele não for memorável, reprovar.
**Não pode:** coroa, trono, toga romana, Zeus idoso e severo tipo "Júpiter neoclássico",
ampulheta ou qualquer alegoria do Tempo (**Cronos ≠ Chronos**).

---

## `sheet-poseidon.png` ⬜
**Personagem:** Posêidon · usado em: cap. 2, cap. 10B.
```
[SHEET]
POSEIDON: a mature Greek god, bearded, with long WET wavy hair and beard, water still beading
in them; face frontal or three-quarter, expressive, proud but never threatening, art nouveau
watercolour. Attribute, obligatory in every scene: the TRIDENT. Personal palette: sea — deep
Aegean blue #1F5A6E and glaze black #1B1613.
He is a brother of Zeus and Hades and deliberately resembles them: the trident and the wet
hair are what tell him apart.
Expressions to show: legitimate pride; calm attention; warmth.
Attribute studies: the trident; the wet beard.
no text, no watermark, no lettering
```
**Aceitação:** tridente ✔ · **cabelo e barba visivelmente molhados** ✔ · azul-egeu profundo +
negro de verniz ✔ · **parecido com Zeus, distinguido só por atributo e paleta** ✔.
**Não pode:** expressão de ameaça, de vilania ou de derrota · cavalo · coroa.

---

## `sheet-hades.png` ⬜
**Personagem:** Hades · usado em: cap. 10B; **o elmo é reusado no cap. 7**.
```
[SHEET]
HADES: a mature Greek god, bearded, similar in build to his brothers Zeus and Poseidon, face
frontal or three-quarter, serious and calm, never sinister, art nouveau watercolour.
Attributes: the HELMET OF INVISIBILITY, a dark hide-and-metal cap, and Cerberus. Personal
palette: underworld — glaze black #1B1613 and dark ochre.
Expressions to show: sober calm; quiet gratitude; steadiness.
Attribute studies: the helmet of invisibility, drawn CLEARLY and from two angles as a
standalone object, because another character will carry it in his hand in a different scene;
Cerberus, friendly-eyed.
no text, no watermark, no lettering
```
**Aceitação:** **elmo desenhado como objeto isolado e legível, de dois ângulos** (é o mesmo
objeto que Perseu leva na mão no cap. 7) ✔ · Cérbero sem horror ✔ · parecido com os irmãos,
distinguido por atributo e paleta ✔.
**Não pode:** 🔴 **chifres, vermelho, fogo, aparência de demônio** · foice · caveiras.

---

## `sheet-atena.png` ⬜
**Personagem:** Atena · usado em: cap. 2 (inteira), cap. 7 (só braço e mão).
```
[SHEET]
ATHENA: a Greek goddess, young and adult at once — never a little girl, never a matron. Her
HELMET IS PUSHED BACK on her head so the whole face is free and expressive, frontal or
three-quarter, art nouveau watercolour. Long peplos; fringed aegis bearing a SMALL, stylised
gorgoneion, unemphasised. Attributes: spear, owl, olive tree. Personal palette: ochre
#C88A3D, clay cream #EDD9B4, greyish olive green #7E8B5E.
Expressions to show: steady judgement; quiet pride; encouragement.
Attribute studies: the spear planted point-down like a gardener's tool; the owl; an olive
branch heavy with olives; the aegis with a SMALL gorgoneion; the hand alone, laid over
another, larger hand — a separate study of that gesture.
no text, no watermark, no lettering
```
**Aceitação:** **elmo empurrado para trás, rosto inteiramente livre** ✔ · gorgoneion **pequeno
e sem ênfase** ✔ · coruja ✔ · lança ✔ · oliveira **de copa carregada** ✔ · estudo da **mão
sobre a mão** (usado no cap. 7) ✔.
**Não pode:** elmo baixado cobrindo o rosto · gorgoneion grande ou assustador · Atena menina ·
Atena matrona · pose de combate.

---

## `sheet-apolo.png` ⬜
**Personagem:** Apolo · usado em: cap. 3 (recém-nascido), cap. 4 (jovem).
```
[SHEET]
APOLLO: a beardless youth, a kouros with LONG hair, radiant and warm-skinned, face frontal or
three-quarter, fully expressive, art nouveau watercolour. Fixed attributes: SILVER BOW and
quiver; laurel wreath or laurel branch; lyre/kithara; a raven. Personal palette: warm gold,
white, silver #C6CBD1.
Show him in TWO AGES on the same sheet: (a) as the beardless long-haired youth of the main
views; (b) as a NEWBORN with an undone golden band, its ends loose, eyes open — the same
identity, the same hair colour and the same warm light.
Expressions to show: irritation turning into delight; wonder; calm radiance.
Attribute studies: the SILVER bow and quiver; a laurel wreath; a tortoise-shell lyre; a raven.
no text, no watermark, no lettering
```
**Aceitação:** **imberbe, cabelos longos** ✔ · **arco de PRATA** (não dourado, não bronze) ✔ ·
louro ✔ · corvo ✔ · lira desenhada como estudo separado ✔ · **os dois estados de idade na
mesma folha** ✔ · gêmeo de Ártemis: mesmo rosto, mesmo cabelo ✔.
**Não pode:** 🔴 **tripé de Delfos** (fora do cânon visual) · barba · Apolo distinguido de
Hermes **por idade** · sol/disco solar.

---

## `sheet-hermes.png` ⬜
**Personagem:** Hermes, **dois estados na mesma folha** · usado em: cap. 1 (adulto), cap. 4 (bebê).
```
[SHEET]
Two states of the same character on one sheet, clearly separated.
HERMES (adult): a beardless young man, traveller's build, face frontal or three-quarter,
sly and friendly, art nouveau watercolour. Attributes: the PETASOS, a wide-brimmed traveller's
hat; a short chlamys cloak; winged sandals; the herald's staff. Personal palette: light ochre
#C88A3D and travel grey.
HERMES (newborn): a one-day-old baby, sitting up, half-undone swaddling bands, wicker
sandals, face three-quarter, bright and mischievous with NO guilt at all. He carries the
TORTOISE-SHELL LYRE. He has NO petasos, NO winged sandals, NO chlamys and NO staff — he is
not the messenger yet.
Attribute studies, drawn separately and clearly: a GOLDEN STAFF WITH THREE BRANCHES — a
branching golden rod, absolutely NOT a caduceus with two entwined serpents; a wide-brimmed
petasos; winged sandals; a tortoise-shell lyre with two curved arms, a crossbar and SEVEN
countable strings.
no text, no watermark, no lettering
```
**Aceitação:** adulto imberbe com pétaso e clâmide curta ✔ · bebê **sem** pétaso, **sem**
sandálias aladas, **sem** clâmide ✔ · lira de casco com **sete cordas contáveis** ✔ ·
**bastão de ouro de TRÊS RAMOS** ✔ · a semelhança entre os dois estados se lê ✔.
**Não pode:** 🔴 **caduceu de duas serpentes em qualquer lugar da folha** (X2) · bebê com
bastão · adulto distinguido de Apolo por idade · asas nos pés do bebê.

---

## `sheet-dioniso.png` ⬜
**Personagem:** Dioniso · usado em: cap. 5. ⚠️ **Decisão revisável no checkpoint humano.**
```
[SHEET]
DIONYSUS: a BEARDLESS YOUTH with long wavy hair, face frontal or three-quarter, warm and
friendly, art nouveau watercolour. Attributes: the THYRSUS tipped with a pine cone; an ivy
crown; a kantharos cup; grapes; a nebris (fawn-skin); a panther. Personal palette: grape
purple #5C2A4E and ivy green #4E6B3C.
Expressions to show: easy companionship; delight; encouragement.
Attribute studies: the thyrsus with its pine cone; an ivy crown; a kantharos; a bunch of
grapes; a panther, calm.
no text, no watermark, no lettering
```
**Aceitação:** **imberbe, jovem, cabelos longos ondulados** ✔ · tirso com pinha ✔ · coroa de
hera ✔ · kántharos ✔ · uvas ✔ · nébris ✔ · pantera ✔ · púrpura-uva + verde-hera ✔.
**Não pode:** barba (é a decisão X14 inteira) · embriaguez, cambaleio, ridículo · confusão com
Sileno (**Sileno não aparece em nenhuma ilustração deste livro**).

---

## `sheet-demeter-persefone.png` ⬜
**Personagens:** Deméter e Perséfone, **uma folha para as duas** · usado em: cap. 6.
```
[SHEET]
Two characters on one sheet, mother and daughter, clearly separated.
DEMETER: a matronal Greek goddess, warm and strong, face frontal or three-quarter,
expressive, art nouveau watercolour. Attributes: a CROWN OF WHEAT EARS; a sheaf of grain; TWO
TORCHES; a mantle that shades from dark at the hood to gold at the hem. Personal palette:
grain ochre #C88A3D and gold.
PERSEPHONE: a young GIRL, not a bride — long loose hair, long peplos, face three-quarter,
unmistakably happy, art nouveau watercolour. Attributes: a four-pointed torch; flowers;
a pomegranate. Personal palette: violet #7A5AA0 and sprout green #8FB865.
They must read as mother and daughter: a shared facial structure, different ages.
Expressions to show, for BOTH: full unreserved joy with eyes closed; searching; tenderness.
Attribute studies: two torches, unlit and fallen; a crown of wheat ears; a four-pointed
torch; a mantle grading from dark to gold; a pomegranate.
no text, no watermark, no lettering
```
**Aceitação:** Deméter matronal com **coroa de espigas** e **manto que vai de escuro a
dourado** ✔ · **duas** tochas ✔ · Perséfone **menina, não noiva**, rosto inequivocamente
feliz ✔ · parentesco legível no rosto ✔ · **um estudo de alegria plena de olhos fechados**
para cada uma ✔.
**Não pode:** Perséfone com rosto ou traje escurecidos · Perséfone adulta/noiva · corrente,
grilhão, susto · Hades na folha.

---

# PARTE II — CENAS (11 páginas) + CAPA

> ## ⚠️ Decisão do cap. 10 — se houver UMA só full-bleed, é a **B**
>
> O brief desta fase pediu que eu escolhesse **uma** das duas cenas do cap. 10. O
> `livro-spec.md` Rev. 5 (paginação fechada) e o cabeçalho do próprio capítulo dizem outra
> coisa: **duas** full-bleed, p. 44 e p. 46, com o bloco montado como
> *p. 43 texto · p. 44 imagem A · p. 45 texto · p. 46 imagem B · pp. 47–48 texto*. **Tirar uma
> das duas desmonta a paginação de 56 pp**, que é múltiplo de 4 e de 8 por conta exatamente
> desse bloco de 6 páginas. A divergência **vai ao gate** — não é minha para resolver sozinho.
>
> **Minha decisão de direção, para qualquer um dos dois desfechos:** se o livro ficar com
> **uma** imagem no cap. 10, ela é a **B — "Os libertados"**. Três razões:
> 1. **É a cena central declarada** do capítulo (o livro-spec chama a A de "abertura" e a B de
>    "clímax"), e é a única que tem **ação e virada**. A cena A é um *estado*: bonita, e sem
>    história dentro.
> 2. **É a página de referência de continuidade do livro** — os três irmãos e os três
>    atributos juntos pela primeira vez. Ela não serve só ao cap. 10: ela **paga os caps. 1, 2,
>    6, 7 e 8**. A A não paga nenhum outro capítulo.
> 3. **É ela que entrega a promessa do capítulo geral** — a origem dos objetos que o leitor já
>    viu funcionando (o raio do cap. 1, o tridente do cap. 2, o elmo do cap. 7). O prazer do
>    último capítulo é descobrir **de onde vieram os objetos**, e a A não tem objeto nenhum.
>
> **O custo de perder a A, declarado:** o livro fica **sem a sua única imagem abstrata e
> cósmica** — Gaia, Urano e a fenda do Caos são a única página do livro que não é uma cena com
> gente, e a perda empobrece o repertório visual de 11 páginas quase todas narrativas. Se o
> gate escolher cortar, **recomendo recuperar a A como viñeta pequena na abertura da p. 43**,
> não como full-bleed: o Caos como fenda escura sob a capitular custa pouco e salva o motivo.


---

## `01-zeus-baucis-e-filemon.png` ⬜
- **Página:** p. 10 (p4 do bloco 7–10) — **default R4.1** ✔
- **Momento:** **durante** · nota emocional: **espanto quieto**
- **Figuras nítidas:** Baucis, Filêmon, Zeus, Hermes, o ganso = **5/5** ✔
- ⚠️ **F1 da onda P4 — o raio foi plantado no TEXTO deste capítulo** ("um trovão respondeu
  longe: o raio era dele"). **A proibição visual continua valendo e fica mais forte, não mais
  fraca:** o raio é **apenas luz insinuada**, nunca objeto na mão, porque aqui Zeus está
  disfarçado e o livro só mostra o raio como objeto na **10B**, onde ele é **forjado**. Se a
  imagem entregar o raio antes da forja, o box do cap. 10 ("nenhum dos três é um poder de
  nascença — são presentes") deixa de ser verdade na leitura da criança.
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
BAUCIS AND PHILEMON: a very old peasant couple, HAND IN HAND, the same height, a symmetrical
pair; dignified and active old age, never decrepit, never comic, never caricatured — the age
reads in the face and in the hands. Rough homespun clothes, bare feet. Faces frontal or
three-quarter, full of quiet astonishment. Palette: terracotta #C1440E and earth brown.
ZEUS: a mature, tall Greek god with a full dark wavy beard and dense wavy hair, broad-browed,
calm and kindly face rendered frontal or three-quarter, fully expressive, art nouveau
watercolour. Personal palette: sky — light Aegean blue #6FA8B8 and warm gold #E8A317. Here
his traveller's mantle FALLS FROM ONE SHOULDER as he is revealed, and his thunderbolt is only
SUGGESTED AS LIGHT around him, never held in the hand.
HERMES (adult): a beardless young man, traveller's build, face three-quarter, sly and
friendly. He wears the PETASOS, a wide-brimmed traveller's hat, and a short chlamys cloak. In
his hand a GOLDEN STAFF WITH THREE BRANCHES — a branching golden rod, absolutely NOT a
caduceus with two entwined serpents. HIS FEET HAVE NO WINGS: he has set the winged sandals
aside. Palette: light ochre #C88A3D and travel grey.
[SCENE]
Vertical full-bleed composition seen from HALFWAY UP A HILLSIDE, in three receding planes.
FOREGROUND, HIGH ON THE SLOPE: Baucis and Philemon standing hand in hand on the stony hill
path, bodies in three-quarter, their FACES TURNED DOWN AND BACK over their shoulders in
astonishment.
MIDDLE PLANE, JUST BELOW AND BEHIND THEM: their little thatched cottage CAUGHT IN THE MIDDLE
OF ITS METAMORPHOSIS, read left to right — wooden posts stretching into marble columns, reed
thatch yellowing until it turns to gold at the ridge, carved doors appearing, and THE ENTRANCE
STEP STILL BEATEN EARTH ON ONE SIDE AND ALREADY MARBLE ON THE OTHER. A single object in two
states at once.
ONE STEP HIGHER ON THE SLOPE, TO THE RIGHT: Zeus and Hermes revealed in light. NEITHER OF THEM
LOOKS AT THE VIEWER: they look at the old couple. ZEUS HOLDS NOTHING IN HIS HANDS: the
thunderbolt is ONLY IMPLIED AS LIGHT and is NEVER a drawn object here.
LOWER CORNER: a live WHITE GOOSE, wings open, neck stretched, pressed against the leg of one
of the gods.
THIRD PLANE, FAR BELOW AND BEHIND: the valley already turned into a CALM LAKE, with water
birds and NO HOUSES AT ALL.
[LIGHT] Late afternoon. The light of the gods is the warm source of the picture.
[COLOUR] Terracotta #C1440E, glaze black #1B1613, clay ochre and cream. WARM, FULL GOLD
#E8A317 on the roof ridge — the single strong warm accent of the picture, rich and glowing
like a reward. Aegean blue #6FA8B8 in the lake.
[MUST NOT APPEAR] no flood, no water rushing, no bodies, no ruins, no fire, no neighbours,
no other human figures, no two young trees, no saplings, no wreathed trees, no caduceus with
serpents, no winged sandals on Hermes' feet, no thunderbolt held in the hand, no crowd.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** o casal **de mãos dadas**, mesma altura, rostos voltados para
  baixo e para trás · **o degrau em dois estados** (terra batida × mármore) · o **ganso vivo**
  encostado na perna de um deus · o **vale já virado lago, sem nenhuma casa** · o **bastão de
  ouro de três ramos** · o raio **só como luz**.
- ✔ **Foco:** o casal. A transformação é o que eles olham, não o que olha o leitor.
- ✘ **Proibido (verbatim do capítulo):** corpos · ruínas · fogo · rostos de vizinhos ·
  qualquer sinal de inundação · **as duas árvores** (elas são da viñeta de fim de capítulo, e
  antecipá-las entrega a metamorfose final três páginas antes) · caduceu de duas serpentes ·
  asas nos pés de Hermes · velhice cômica ou decrépita · separar o casal.
- ✔ **Ouro:** `#E8A317`, **quente e cheio** — comparar lado a lado com o cap. 9 antes de
  aprovar. **Mesmo ouro nas duas páginas = reprovação automática.**

---

## `02-atena-disputa-por-atenas.png` ⬜
- **Página:** p. 14 — **default R4.1** ✔ · **Momento:** **pós-gesto** · nota: **comparação, juízo do leitor**
- **Figuras nítidas:** Posêidon, Atena, Cécrops, o homem que prova, a menina da azeitona = **5/5** ✔
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
POSEIDON: a mature Greek god, bearded, with long WET wavy hair and beard; face three-quarter,
expressive, LEGITIMATE PRIDE, never threatening, never defeated. Attribute: the TRIDENT, here
ALREADY LOWERED, after the blow. Palette: deep Aegean blue #1F5A6E and glaze black #1B1613.
ATHENA: a Greek goddess, young and adult at once — never a little girl, never a matron. Her
HELMET IS PUSHED BACK on her head so the whole face is free and expressive, frontal or
three-quarter. Long peplos; fringed aegis bearing a SMALL, stylised gorgoneion, unemphasised
and unexplained. She plants her SPEAR INTO THE GROUND WITH BOTH HANDS — here it is a
gardener's tool, not a weapon. Palette: ochre #C88A3D, clay cream #EDD9B4, greyish olive
green #7E8B5E.
CECROPS: the first king of Athens, bearded, with a SERENE, kindly face, three-quarter —
anguiped: from the waist down his body is a coiled SERPENT TAIL. The tail reads as origin,
never as menace: no hissing, no forked tongue, no cast shadow. Palette: earth green and ochre.
[SCENE]
Vertical full-bleed. The rock of the acropolis; the unnamed city far below; the Aegean sea
behind. THE INSTANT AFTER BOTH GIFTS: the two signs side by side, and a witness looking.
LEFT: Poseidon standing beside a CRACK IN THE ROCK from which SALT WATER springs — a thread of
sea with foam and a green-blue glint.
RIGHT: Athena, and at the exact point where her spear tip meets the earth, an OLIVE TREE
ALREADY IN FULL CANOPY, silvery and HEAVY WITH OLIVES — a whole grown tree, absolutely no
sapling, no shoot, no sprouting. Her OWL is perched on one of its branches.
CENTRE, SLIGHTLY BEHIND THE TWO GODS AND BETWEEN THEM: Cecrops, LOOKING AT THE OLIVE TREE. He
is the reading centre of the whole page — the composition exists to make the viewer realise
that SOMEONE IS SEEING. He is not a background extra: frame him so the eye lands on him.
AROUND AND BELOW: the people. Two of them are finished figures — a MAN TASTING THE SALT
WATER, in curiosity and astonishment, NEVER in a comic grimace; and a LITTLE GIRL HOLDING ONE
OLIVE in her hand. EVERY OTHER PERSON IS A FLAT SILHOUETTE with no face and no detail.
[LIGHT] Mid-morning, high and clean. NO SUN, NO MOON, NO CELESTIAL BODY ANYWHERE IN THE SKY.
[MUST NOT APPEAR] no flood, no wave, no rushing water, no wrecked houses, no fleeing people,
NO HORSE, no Poseidon in a villain's pose, no sapling or sprouting shoot, no comic grimace,
no crowd with individual faces, no sun, no moon, no temple.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** tridente **já baixo** · **fenda com água salgada** · **oliveira
  de copa inteira carregada de azeitonas** · **coruja no galho** · **elmo de Atena empurrado
  para trás, rosto livre** · **Cécrops olhando a oliveira, no centro de leitura** · o homem
  provando **em espanto** · a **menina com uma azeitona**.
- ✔ **Foco:** Cécrops. Se a página se ler como "dois deuses lado a lado" e o rei desaparecer,
  **reprovar** — é o testemunho, não a comparação, que decide a disputa na fonte.
- ✘ **Proibido (verbatim do capítulo):** qualquer sinal de inundação · casas destruídas ·
  gente fugindo · **cavalo** · Posêidon em pose de vilão · broto/rebento (correção X6:
  máximo 1 broto a cada 3 capítulos, e o cap. 2 é o que cede) · careta cômica no homem que
  prova · astros no céu.
- ⚠️ **Tensão declarada (cético P2, X4) — decisão tomada aqui:** o fecho do texto ("honraram os
  dois deuses no mesmo lugar") e esta imagem se parecem, e a criança pode ler a página como se
  fosse o fecho. **Mantém-se a cena dos dois sinais** — é a única imagem possível da disputa —
  e a diferenciação é por **luz e por povo**: **aqui**, manhã alta, povo em volta, os dois
  deuses presentes; **no fecho do texto**, nenhum deus e o poço já dentro de um templo. Se a
  candidata trouxer templo, penumbra ou ausência de povo, **está ilustrando o fecho e é
  reprovada.**

---

## `03-leto-e-a-ilha.png` ⬜
- **Página:** p. 18 — **default R4.1** ✔ · **Momento:** **pós-gesto** · nota: **alívio luminoso**
- **Figuras nítidas:** Leto, Ártemis, Apolo, o rosto no penhasco = **4/5** ✔
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
LETO: a veiled matron with beautiful braids, KNEELING IN A MEADOW, HER ARMS AROUND A PALM
TREE — her attribute is the palm and the gesture, she carries no object. Face three-quarter,
expressive with TIREDNESS AND RESOLVE, never helplessness. Palette: cream #EDD9B4 and pale
blue.
ARTEMIS: a newborn who is ALREADY STANDING AND ALREADY HERSELF, beside her mother, turning
towards her brother in the gesture of someone who has just helped. Twin of Apollo: the same
face, the same hair colour. Palette: cool silver #C6CBD1 and forest green.
APOLLO: a newborn, his GOLDEN BAND UNDONE with the ends hanging loose, EYES OPEN AND TURNED
TOWARDS THE ROCK OF THE ISLAND. Long hair, radiant warm skin. Palette: warm gold and silver.
DELOS: the island itself, with a READABLE FACE IN THE CLIFF, looking — the landscape has
features. Mount Kynthos behind.
[SCENE]
Vertical full-bleed. THE INSTANT AFTER the birth: nothing in progress, everything just
happened. The island STOPS FLOATING — ROOTS descend from its rocky base into the dark sea
floor, and the waves around it still hold the movement of the island that used to wander.
Leto at the centre of the meadow, wildflowers opening in the track left by her knees — the
earth "laughing" beneath her.
THE LIGHT COMES OUT OF APOLLO AND PASSES THROUGH THE ROCK — light that crosses, like morning
sun through stone. THE ROCK STAYS ROCK: it does NOT turn gold, it is NOT gilded, no gold is
deposited on the cliff. What flowers is the MEADOW, not the cliff.
Sea goddesses and sky goddesses waiting nearby are FLAT SILHOUETTES with no faces.
[LIGHT] TWO lights and NO celestial bodies: a WARM glow coming from Apollo himself, and a
COOL SILVER glow on Artemis' skin and across the night meadow. NO SUN AND NO MOON IN THE SKY.
[MUST NOT APPEAR] no effort, no pain, no blood, no contorted face, no sweat, no stained cloth,
no childbirth composition, no midwives, no sun, no moon, no golden rock, no gilded cliff,
no crowd with faces.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** as **raízes** descendo ao fundo escuro do mar · Leto **de
  braços em volta da palmeira** · Ártemis **de pé, voltada para o irmão** · Apolo com a
  **faixa dourada desfeita** e **olhos abertos voltados para a rocha** · o **rosto no
  penhasco** · **flores no prado** · o monte Cinto ao fundo.
- ✔ **A luz ATRAVESSA a rocha; a rocha continua pedra.** Penhasco dourado = **reprovação
  imediata** — o texto promete que a ilha não vai ficar rica.
- ✘ **Proibido (linha vermelha do capítulo):** esforço · dor · sangue · rosto contorcido ·
  suor · pano manchado · qualquer composição de "trabalho de parto". **Se a imagem ler como
  cena de parto, muda-se a imagem, não o texto.** Sem sol e sem lua.

---

## `04-hermes-o-gado-e-a-lira.png` ⬜
- **Página:** p. 22 — **default R4.1** ✔ · **Momento:** **DURANTE** · nota: **reconciliação divertida**
- **Figuras nítidas:** Hermes bebê, Apolo = **2/5** ✔
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
HERMES (newborn): a ONE-DAY-OLD BABY, sitting on half-undone swaddling bands, wicker sandals,
face three-quarter, an expression of AMUSED CLEVERNESS AND NO GUILT AT ALL. He has NO petasos,
NO winged sandals, NO chlamys and NO staff — he is not the messenger yet. Palette: light ochre
#C88A3D.
APOLLO: a beardless youth, a kouros with LONG hair, laurel wreath, radiant warm skin; face
three-quarter, passing FROM IRRITATION INTO ENCHANTMENT. He ENTERS WITHOUT A LYRE. His SILVER
BOW IS LOWERED AND LAID ON THE GROUND — he has put the weapon down, and that is how the
picture says the quarrel is over. Palette: warm gold, white, silver #C6CBD1.
[SCENE]
Vertical full-bleed on the bank of the river Alpheios, the quarrel just ended, nobody
speaking. THE HANDOVER IS HAPPENING, NOT ABOUT TO HAPPEN.
Hermes sits centre-low, both arms raising the LYRE. Apollo kneels or leans in from the right
to receive it. CRITICAL: ONE HAND OF HERMES AND ONE HAND OF APOLLO ARE BOTH TOUCHING THE LYRE
AT THE SAME MOMENT. The lyre is NOT floating in mid-air between four hands; it is held by both
of them, at the exact instant of passing.
THE LYRE: a tortoise shell, two curved arms, a crossbar, and SEVEN VISIBLE, COUNTABLE STRINGS.
BACKGROUND LEFT: a frieze of cows, already on their owner's side, arranged so that NO NUMBER
CAN BE COUNTED — overlapping, cropped, indefinite.
ON THE GROUND, entering the frame: a trail of REVERSED HOOFPRINTS, hooves pointing the wrong
way, with no caption and no emphasis.
IN THE CORNER, in Apollo's other hand: a GOLDEN STAFF WITH THREE BRANCHES, waiting for the
next gesture — a branching golden rod, absolutely NOT a caduceus with two entwined serpents.
[LIGHT] Warm river-bank daylight, low and gentle.
[MUST NOT APPEAR] no live tortoise, no tortoise shell being emptied, no bones, no fire, no
bonfire, no meat, no countable herd, no caduceus with serpents, no staff in the baby's hand,
no petasos or winged sandals on the baby, no guilt or shame on the baby's face, no lyre
floating unheld.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** **uma mão de cada um na lira, ao mesmo tempo** (é isto que
  mantém o mapa de ritmo visual do livro dentro do teto de 50% de "instantes anteriores" —
  se a lira estiver solta no ar, **reprovar sem discussão**) · **sete cordas contáveis** ·
  **arco de prata baixado no chão** · **pegadas invertidas sem legenda** · o **bastão de três
  ramos na mão de Apolo**.
- ✔ **Foco:** o encontro das duas mãos na lira.
- ✘ **Proibido (linha vermelha do capítulo):** nenhuma tartaruga viva · nenhum osso · nenhuma
  fogueira · nenhuma carne — a elipse do texto vale para a imagem · **número legível de
  vacas** (X5) · legenda ou seta nas pegadas.
- ⚠️ **Contrato de continuidade (X9):** o bastão só existe **nesta** cena dentro do cap. 4; no
  cap. 1 ele aparece desde o início. **As duas coisas estão certas — não harmonizar.**

---

## `05-hefesto-o-trono-de-ouro.png` ⬜
- **Página:** **p. 24** — ⚠️ **EXCEÇÃO R4.1** (p2 do bloco 23–26; o texto ocupa p1, p3, p4)
- **Momento:** **instante anterior** · nota: **reconhecimento contido**
- **Figuras nítidas:** Hera, Hefesto, Dioniso, Ares, **um** deus desistindo = **5/5** ✔
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
HERA: a queenly goddess seated on a GOLDEN THRONE that FLOATS A HAND'S BREADTH ABOVE THE
FLOOR; long peplos, POLOS DIADEM OVER A VEIL, GOLDEN SANDALS VISIBLE because her feet are in
the air. Face three-quarter, chin lifted, dignified, VEXED BUT NOT DISTRESSED, mouth closed —
never grotesque, never comic, never frightened. Palette: royal purple #6B2C4F and gold.
HEPHAESTUS: a mature god, BEARDED with a dark full beard and a straight nose, broad chest and
strong shoulders with thin legs; a conical PILOS cap over thick hair; an EXOMIS tunic pinned
at one shoulder; a HAMMER in one hand and a sturdy STAFF in the other, his weight on the staff
and his stride in motion — WALKING IN OF HIS OWN WILL, UPRIGHT, NEVER CARRIED, NEVER PROPPED
UP BY ANYONE. Face three-quarter and fully expressive, a dignified working man. Palette:
warm terracotta #C1440E and forge gold.
DIONYSUS: a BEARDLESS YOUTH with long wavy hair, an IVY CROWN, a THYRSUS tipped with a pine
cone in one hand and a BUNCH OF GRAPES in the other, his free hand resting on Hephaestus'
shoulder — ACCOMPANYING HIM, NOT LEADING HIM. Palette: grape purple #5C2A4E and ivy green.
ARES: full armour, CRESTED HELMET UNDER HIS ARM, leaning against a column at the back,
sulking, EYEBROWS SINGED. The joke lives in the corner of the picture, never at its centre.
Palette: bronze #A9773F and red.
[SCENE]
Vertical full-bleed. A hall of Olympus opening in depth, golden late-afternoon hour.
"THE ROOM THAT WAITS": the instant Hephaestus walks in and HAS NOT YET REACHED OUT HIS HAND.
RIGHT AND CENTRE: Hera on the floating golden throne. Around her, ONE god standing and GIVING
UP — open hands, dropped shoulders — and TWO MORE MERELY HINTED AS SILHOUETTES against a
column. NO ROPE AND NO CHAIN IS DRAWN ANYWHERE: the bonds are invisible.
LEFT, ENTERING: Hephaestus, with Dionysus at his side. EVERY FACE IN THE ROOM IS TURNED
TOWARDS HIM. NOBODY IS LAUGHING AT HIM.
ON THE THRESHOLD, framed by the doorway: the DONKEY, silens with pipe and drum, and the rest
of the revel, ALL AS FLAT DARK SILHOUETTES AGAINST THE OUTSIDE LIGHT, no faces, no detail —
the party arrived with him and stays at the door without competing for the centre.
[LIGHT] A WARM SHAFT from behind Hephaestus — the forge he has just left — striking against
the COLD gold #C9A227 of the throne.
[COLOUR] Terracotta, ochre, glaze black, Aegean blue in the window.
[MUST NOT APPEAR] no visible ropes, no chains, no bonds of any kind, nobody laughing at
Hephaestus, no donkey inside the hall, no grotesque or comic Hera, no distress on Hera, no
smoke rising from Ares' helmet, no fire indoors, no bearded Dionysus, no crowd with faces,
Hephaestus never carried and never leaning on another person.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** trono **flutuando um palmo acima do chão** · **sandálias
  douradas** (é o atributo de Hera, e só se veem porque os pés estão no ar) · polos sobre véu ·
  **pílos, exômide, martelo e bastão** de Hefesto · Hefesto **de pé, entrando por vontade
  própria** · Dioniso **imberbe** com a mão no ombro dele · Ares ao fundo, **sobrancelhas
  chamuscadas**, elmo debaixo do braço · o cortejo **em silhueta na moldura da porta**.
- ✔ **Foco:** Hefesto entrando; todos os rostos voltados para ele.
- ✘ **Proibido (vinculantes do capítulo):** ninguém na sala ri de Hefesto · o burro não entra
  no salão · Hera não é grotesca · **sem correntes visíveis** · **sem fumaça no elmo de Ares**
  (a fumaça persistente lê como fogo dentro do salão) · pavão · Dioniso barbado.
- ⚠️ **Ouro do trono é `#C9A227`, FRIO** — o quente da página é o facho da forja. Se o trono
  brilhar mais quente que Hefesto, a página inverte quem é o centro moral.

---

## `06-demeter-e-persefone.png` ⬜
- **Página:** p. 30 — **default R4.1** ✔ · **Momento:** **pós-gesto — o abraço CONSUMADO** ·
  nota: **alegria plena, sem reserva**
- **Figuras nítidas:** Deméter, Perséfone = **2/5** ✔
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
DEMETER: a matronal Greek goddess, warm and strong, a CROWN OF WHEAT EARS, a mantle that
SHADES FROM DARK AT THE HOOD TO GOLD AT THE HEM along her own body. BOTH ARMS CLOSED AROUND
her daughter, face in profile-three-quarter WITH HER EYES CLOSED, joy legible to a
four-year-old. Palette: grain ochre #C88A3D and gold.
PERSEPHONE: a young GIRL, NOT A BRIDE — long loose hair, long peplos. She has THROWN HERSELF
ONTO HER MOTHER'S NECK, HER FEET STILL OFF THE GROUND from the momentum of running; face in
three-quarter OVER HER MOTHER'S SHOULDER, VISIBLE AND UNMISTAKABLY HAPPY. She comes back
WHOLE: her face and her clothes are NOT darkened. Palette: violet #7A5AA0 and sprout green
#8FB865.
Hair and drapery in art nouveau arabesque.
[SCENE]
Vertical full-bleed built on an ASCENDING DIAGONAL from lower left to upper right.
CENTRE: Demeter and Persephone ALREADY EMBRACING — the reunion has happened. THIS IS THE ONLY
FULL REUNION IN THE BOOK AND THE EMBRACE MUST BE COMPLETE.
BEHIND DEMETER: her TWO TORCHES FALLEN ON THE GROUND, EXTINGUISHED — the search is over, and
the picture says so with no words.
RIGHT: an empty GOLDEN CHARIOT and the immortal dark-maned horses, standing still, RECEDING
INTO SHADOW at the very edge of the frame. HADES IS ENTIRELY OUT OF FRAME — at most a DARK
FISSURE ALREADY CLOSING at the right border.
ON THE GROUND: grey cracked earth BEHIND Demeter and, STARTING FROM THE EXACT POINT OF THE
EMBRACE, flowers opening out in a fan — narcissus, crocus, violets, hyacinth, iris — the line
of blossom running away on the diagonal and out of the frame. Far off, fields of wheat rising.
[LIGHT] Open, warm, unshadowed daylight over the two figures.
[COLOUR] Terracotta and ochre in the ground, glaze black in the fissure and the torches,
Aegean blue in the sky, clay cream #EDD9B4 as the accent of the blossom.
[MUST NOT APPEAR] no chains, no fright, no villain, no Hades, no Hecate, no Helios, no
darkened face or darkened robe on Persephone, no pomegranate being eaten, no bride, no
hesitation, no figure held back.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** o **abraço acontecendo, consumado** · os **pés de Perséfone sem
  tocar o chão** · o **rosto dela visível sobre o ombro da mãe e inequivocamente feliz** · os
  **olhos fechados de Deméter** · a **coroa de espigas** · as **duas tochas caídas e apagadas** ·
  o **manto que vai de escuro a dourado** · as **flores abrindo a partir do ponto do abraço** ·
  a **terra cinzenta e rachada atrás** (é o contraste que prova a virada) · o carro vazio
  recuando para a sombra.
- ✔ **Foco:** os dois rostos. **Se o rosto de qualquer das duas não for legível, a ilustração
  falhou** — critério do próprio capítulo, não meu.
- ✘ **Proibido (vinculantes do capítulo):** nenhuma corrente · nenhum susto · nenhum vilão em
  cena · Hades **fora de quadro** · Hécate e Hélio **não aparecem** · Perséfone **volta
  inteira**: não escurecer rosto nem traje.

---

## `07-perseu-e-a-medusa.png` ⬜
- **Página:** **p. 32** — ⚠️ **EXCEÇÃO R4.1** (corrigida de p. 34) · **Momento:** **instante
  anterior** · nota: **medo sob controle**
- **Figuras nítidas:** Perseu, a Medusa refletida, a mão de Atena = **3/5** ✔
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
PERSEUS: the YOUNGEST figure in the whole book — almost grown, never a warrior. Beardless,
short chlamys, WINGED SANDALS at the ankles, the KIBISIS satchel slung across him. He holds
the HARPE, a curved sickle of ADAMANT — dark polished STONE, not lustrous metal: the glint it
catches is the sheen of burnished stone, NEVER a steel edge, never a metal blade. THE HELMET
OF HADES IS IN HIS HAND OR HANGING FROM THE KIBISIS — NEVER ON HIS HEAD. Face in
profile-three-quarter and fully readable: FEAR UNDER CONTROL, never fury. Palette: bronze
#A9773F and glaze black #1B1613.
ATHENA: present ONLY as a partial figure entering from the margin — the arm, the drapery, a
glint of the helmet pushed back, and HER HAND LAID OVER PERSEUS' HAND. Her face is OUT OF
FRAME. She does not compete for the centre.
MEDUSA: appears ONLY as a SMALL, SLEEPING REFLECTION seen from far above inside the bronze
shield, resolved as a shape with NO FACIAL DETAIL; and, in the real plane behind, only as a
BACKLIT SILHOUETTE cropped by the edge of the frame. HER FACE IS NEVER SHOWN FRONTALLY,
NEVER IN CLOSE-UP, NEVER AWAKE.
[SCENE]
Vertical full-bleed. THE DARKEST PAGE OF THE BOOK. The instant BEFORE the gesture: the sickle
has NOT been raised. Nothing has happened. The whole image is restraint.
FOREGROUND, OFF-CENTRE: Perseus with his BACK TO THE VIEWER AND HIS BACK TO MEDUSA, his torso
twisted into three-quarter so that his face stays visible and legible. The sickle is still low.
GEOMETRIC CENTRE AND CENTRE OF LIGHT: the raised BRONZE SHIELD, the brightest object on the
page — THE LIGHT IS BORN FROM THE OBJECT THAT SAVES. Inside it, the reflection. THE REFLECTION
IS THE ONLY PLACE IN THE ILLUSTRATION WHERE MEDUSA APPEARS.
REAL PLANE, BEHIND: Medusa as a backlit silhouette cut by the frame edge, and her TWO SISTERS
as two sleeping volumes in the dark — no faces, no finish. The threat is that they might wake.
[LIGHT] One hot point of light in an almost black picture, radiating from the bronze shield.
[COLOUR] Glaze black #1B1613 dominant, deep Aegean blue #1F5A6E in the sea behind, terracotta
and ochre concentrated in the bronze.
[MUST NOT APPEAR] no gesture, no cut, no stroke, no blood, no severed head, no frontal face of
Medusa, no close-up of Medusa, no awake Medusa, NO PEGASUS, no helmet on Perseus' head, no
steel blade, no metal sword, no fury on Perseus' face, no Athena's face.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** o **rosto de Perseu**, legível, com **medo sob controle** ·
  **sandálias aladas** (é assim que Hermes entra na página: por atributo) · **kibisis** ·
  a **foice de adamante, pedra escura polida** · o **elmo de Hades NA MÃO ou pendurado na
  kibisis** · o **escudo como centro geométrico e de luz** · a **Medusa pequena, adormecida,
  vista de longe e de cima, dentro do escudo** · a **mão de Atena sobre a mão de Perseu**.
- ⚠️ **Condição arbitrada (X5):** **elmo NA MÃO, nunca na cabeça.** Com o elmo posto Perseu
  ficaria invisível — e a página inteira depende de o leitor **ver o rosto dele**.
  Elmo na cabeça = **reprovação imediata**.
- ✘ **Proibido (fora de quadro obrigatoriamente, verbatim):** o gesto · qualquer corte ·
  qualquer sangue · o rosto da Medusa de frente · a cabeça · **Pégaso** (pertence à página
  seguinte do texto) · brilho de aço, fio de metal.
- ⚠️ **Vinculante de série (X7):** a luz deste capítulo **nasce de um objeto**. Se a candidata
  trouxer luz atravessando a página, ela colide com o cap. 8 e é reprovada.
- **Viñeta pequena, se a diagramação permitir (p. 32 ou 33):** as três Greias passando o olho
  de mão em mão, **dignas e estranhas, nunca bruxas cômicas**, e a mão de Perseu chegando no
  meio do percurso. Prompt separado, a montar na Fase 3b se o `mito-diagramador` confirmar
  espaço.

---

## `08-teseu-e-o-minotauro.png` ⬜
- **Página:** **p. 36** — ⚠️ **EXCEÇÃO R4.1** (corrigida de p. 38) · **Momento:** **instante
  anterior** · nota: **tensão e determinação**
- **Figuras nítidas:** **só Teseu = 1/5** ✔ — a página mais econômica do livro
- **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
THESEUS: a young beardless boy, hair cut short at the front, NO ARMOUR AND NO SWORD. In THREE
QUARTER view in the foreground, face expressive and readable: THE RESOLVE OF SOMEONE WHO CHOSE
TO COME, never bravado. BOTH HANDS ARE ON THE THREAD — one holds the ball of yarn, the other
lets the line run. Palette: white and Attic red.
THE MINOTAUR appears ONLY as a cast SHADOW on a SIDE WALL: horns and shoulders, unmistakable,
large enough for the danger to be real. No body shown, no eyes, no drool, no blood. It reads
as IMPRISONED, not as a hunter. The shadow is STATIC — no gesture, no lunge, no reaching arm —
and IT NEVER TOUCHES AND NEVER OVERLAPS THESEUS: there is LIT FLOOR BETWEEN the shadow and the
boy's body.
ARIADNE is not a figure: she is a HAND and a SLIT OF LIGHT, out of frame.
[SCENE]
Vertical full-bleed: a tall corridor deep in the heart of the Labyrinth. Nothing has happened
yet. THE THREAD CROSSES THE ENTIRE PAGE, from the lower corner to the far background, in art
nouveau arabesque, with loops already unwound on the floor. THE THREAD MAKES THE COMPOSITION —
it is the line a child's finger follows into the picture.
Walls in glaze black and terracotta, closing in with MINOAN SPIRALS.
[LIGHT] TWO SOURCES, AND NEITHER OF THEM IS THE THREAD.
(1) The page's own light: a THIN VERTICAL SLIT OF COLD LIGHT far away at the end of the
corridor BEHIND Theseus, where Ariadne holds the door from the outside — at once the way back
and the only other person in the scene.
(2) A LOW GLEAM in the corridor ahead, which is what casts the shadow.
THE THREAD DOES NOT GLOW BY ITSELF: it REFLECTS the slit, in pale ochre, and that is how the
eye follows it from Theseus' hand to the door. The light CROSSES the page from end to end.
[COLOUR] Glaze black #1B1613 and terracotta #C1440E. NO AEGEAN BLUE ANYWHERE in this picture.
[MUST NOT APPEAR] no sword in Theseus' hands, no weapon at all, no full-body Minotaur, no
attacking Minotaur, no minotaur eyes, no drool, no bones, no skull, no blood, no fallen
figure, no rigid black-figure profile on Theseus, no glowing thread, no Ariadne's face,
no blue.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** as **duas mãos no fio** · o **fio atravessando a página inteira**
  com voltas desenroladas no chão · a **fresta vertical fria ao fundo, atrás de Teseu** · o
  **lampejo baixo à frente** · a **sombra de chifres e ombros** · **espirais minoicas** nas
  paredes.
- ⚠️ **Condição arbitrada (adequação etária, onda P3):** a sombra **cai numa parede lateral**,
  é **estática** e **não toca nem cobre Teseu** — **há chão iluminado entre a sombra e o corpo
  do menino**. Sombra encostando no protagonista lê como captura iminente, e essa é a leitura
  que a página **não pode dar** a uma criança de 4 anos. **Sombra tocando Teseu = reprovação
  imediata.**
- ⚠️ **Condição arbitrada (cético P3, X4) — a segunda fonte de luz:** cap. 7 é **ponto quente
  num quadro quase preto**; cap. 8 é **luz que atravessa**. Se o fio for a única fonte, esta
  página fica indistinguível da do cap. 7 e é reprovada. **O fio reflete, não emite.**
- ✘ **Proibido (linha vermelha do capítulo):** nenhuma espada na mão de Teseu (contra a fonte
  *e* contra a adaptação) · nenhum Minotauro de corpo inteiro em ataque · nenhum osso, crânio,
  sangue ou figura caída · Teseu nunca em perfil rígido de figura negra · azul-egeu (fica para
  a abertura e o mar).

---

## `09-midas-o-toque-de-ouro.png` ⬜
- **Página:** **p. 40** — ⚠️ **EXCEÇÃO R4.1** (corrigida de p. 42) · **Momento:**
  **transformação consumada / percepção** · nota: **alegria virando susto**
- **Figuras nítidas:** **só Midas = 1/5** ✔ (+ servidores em silhueta)
- **Proporção:** 1:1
- **Decisão de direção registrada:** a **alternativa do rio Pactolo** ficou aberta ao
  `mito-diretor-arte` (X6 do dossiê), a decidir com os caps. 7, 8 e 9 lado a lado.
  **Decisão: MANTÉM-SE A MESA.** A monotonia que a alternativa temia era de *momento* — três
  "instantes anteriores" seguidos —, e ela **já não existe**: a Rev. 5 re-rotulou o cap. 9 como
  *transformação consumada*, e a sequência 7–8–9 lê-se **contido → atravessado → percebido**.
  A mesa é o ponto de virada e a mensagem inteira numa imagem; o Pactolo é a absolvição, e
  ilustrar a absolvição desarma a advertência. As três páginas já se separam por luz (§2.4 do
  guia). **Pactolo arquivado, não descartado**: volta se a validação lado a lado mostrar
  monotonia real.

```
[BASE]
[CHARACTERS]
MIDAS: a mortal king of PHRYGIA, NOT a god — no aura, no halo, no divine attribute. He wears
the PHRYGIAN CAP, a soft conical hat with the point falling forward, and a Phrygian court
robe: he dresses PHRYGIA, NOT GREECE, and that is what tells him apart from the whole cast of
the book. Seated at the table in THREE QUARTER view, face FULLY EXPRESSIVE: the face of
someone who HAS JUST REALISED — the eyebrow still rising, the laugh of the previous page still
half-caught in his face. Palette: gold invading terracotta #C1440E.
[SCENE]
Vertical full-bleed. A laid table in a Phrygian palace hall. THE EXACT MOMENT: Midas holds the
BREAD RAISED, HALFWAY TO HIS MOUTH — and THE BREAD IS ALREADY METAL, hard and gleaming. The
gesture is halfway: HE HAS NOT UNDERSTOOD YET, and the child understands before he does.
THE HAND HOLDING THE BREAD IS THE OPTICAL CENTRE OF THE PICTURE.
THE TABLE: grapes, apples, bread, a jug and a cup, IN FOOD COLOURS.
CRITICAL RULE — THE GOLD EXISTS ONLY WHERE THERE WAS CONTACT. Gold is NOT a fluid spreading
across the tabletop; there is NO golden frontier creeping outward, NO reverse thaw. Gold is
ONLY what his hand has touched: the bread in his hand, the bunch he already picked up, the
plate he already pulled towards him. Everything he has not touched is still in food colour.
THE WATER IS OUT OF FRAME: the jug HAS NOT BEEN POURED, and there is NO frozen thread of water
turned to gold anywhere.
BACKGROUND: the hall, the DOOR COLUMNS ALREADY GILDED, the shine advancing into the room.
NOBODY IS LAUGHING. If servants are present they are FLAT SILHOUETTES, standing still, not
understanding.
[LIGHT] Flat, plain indoor daylight. NO hot point of light, NO shaft, NO glamour.
[COLOUR] Terracotta #C1440E and cream #EDD9B4 BEING ERASED by ochre and by a PALE GOLD
#D9CB8A — a washed-out yellow with NO warmth and NO treasure-glitter. THIS IS A PICTURE OF
COLOUR BEING LOST, NOT OF WEALTH.
[MUST NOT APPEAR] no Dionysus, no Silenus, no donkey ears, no laughing faces, no daughter, no
child, no golden statue of a person, no water, no poured liquid, no golden liquid, no gold
spreading across untouched surfaces, no rich sumptuous treasure feeling, no divine aura,
no Greek chiton on Midas, no crown.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** o **pão erguido a meio caminho da boca, já metal** · a **mão
  como centro óptico** · o **barrete frígio** · traje **frígio, não grego** · comida ainda **em
  cor de comida** onde não houve contato · **colunas da porta já douradas** · o rosto **no
  meio da percepção** (a sobrancelha subindo, o riso ainda meio preso).
- ⚠️ **Condição arbitrada (X6):** **o ouro existe SÓ onde houve contato.** Fronteira dourada
  avançando pelo tampo, degelo ao contrário, ouro como fluido = **reprovação imediata**. É a
  regra do mito, e é ela que a criança tem de conseguir **deduzir olhando**.
- ⚠️ **Condição arbitrada:** **a água fica FORA DE QUADRO.** A jarra ainda não foi servida;
  desenhar o fio de água congelado em ouro ilustra uma batida que o texto só alcança quatro
  parágrafos depois.
- ✘ **Proibido (vinculantes do capítulo):** Dioniso · Sileno · orelhas de burro (moram no box)
  · alguém rindo.
- ⚠️ **Armadilha nomeada pelo capítulo:** a tentação é fazer uma imagem **suntuosa**. Ela não
  é — é uma imagem de **perda de cor**. **Se o quadro final parecer rico e desejável, a
  ilustração contradiz o capítulo e é reprovada.**
- ⚠️ **Ouro `#D9CB8A`, pálido.** Comparar lado a lado com o cap. 1 antes de aprovar
  (guia §2.3). **Mesmo ouro nas duas páginas = reprovação automática.**

---

## `10a-do-caos-abertura.png` ✅ **LIBERADO** (gate da Fase 2 fechado em 2026-08-31)
- ⚠️ **PROVISÓRIO — o cap. 10 ainda está no loop adversarial (onda P4).** O texto não passou
  por gate. Este bloco é direção preliminar: **não gerar antes do gate da Fase 2 do cap. 10**,
  ou gerar aceitando refação.
- **Página:** p. 44 (p2 do bloco 43–48) — **default** ✔ · **Momento:** **estado** ·
  nota: **assombro cosmogônico**
- **Figuras nítidas:** Gaia, Urano = **2/5** ✔ · **Proporção:** 1:1

```
[BASE]
[CHARACTERS]
GAIA: the Earth herself, emerging from the ground ONLY TO THE WAIST, her body continuing into
the landscape, her hair turning into roots and mountain ridges, EYES OPEN AND SERENE, face
frontal and fully expressive. SHE IS NEVER A WOMAN STANDING ON THE GROUND. Palette: terracotta
#C1440E and ochre #C88A3D.
URANUS: the SKY WITH A FACE — his body IS the night vault itself, ARCHED OVER HER, stars
running across his shoulder and along his arm; face readable and distant, HIS GAZE NOT
DIRECTED AT THE VIEWER and HIS MOUTH CLOSED AND AT REST — he must never look out of the page
at the child, and never appear to speak or to threaten. He carries no
object. Palette: starred glaze black #1B1613.
[SCENE]
Vertical, cosmogonic, WITHOUT ACTION — a state, not an event.
BETWEEN THE TWO: CHAOS, A DARK AND EMPTY CLEFT — not a colourful cloud of mixed matter, not
a nebula, not swirling stuff. IT IS AN OPENING, and the image must read as an opening.
Mountains and sea enter as landscape only, with no faces.
[LIGHT] Terracotta and ochre glow below (the Earth); glaze black and Aegean blue above
(the Sky). No single light source.
[MUST NOT APPEAR] no children, no titans, no cyclops, no hundred-handers, no figure inside the
earth, NO SICKLE, no star shaped as a sun, no moon with a face, no sun with a face, no
hourglass, no scythe of Saturn, no allegory of Time, no nebula, no galaxy.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** Gaia **até a cintura**, o corpo continuando na paisagem, cabelo
  virando raiz e cordilheira, **olhos abertos e serenos** · Urano **arqueado sobre ela**, corpo
  = abóbada noturna, estrelas correndo pelo ombro e pelo braço · o Caos como **fenda escura e
  vazia** que se lê como **abertura**.
- ✘ **Proibido (vinculantes do capítulo):** nenhum filho em quadro (ainda estão dentro da
  Terra, e a batida da prisão vem depois) · nenhuma foice · nenhuma estrela em forma de sol ou
  lua com face · **Cronos ≠ Chronos:** nenhuma ampulheta, foice de Saturno ou alegoria do Tempo
  · ⚠️ **vinculante ao diretor de arte (adequação, onda P4):** Urano **sem olhar dirigido ao
  leitor e de boca fechada em repouso** — um rosto do tamanho do céu olhando a criança nos
  olhos é a única imagem deste livro capaz de assustar sozinha.

> ⚠️ **VINCULANTE DE LIVRO INTEIRO (adequação, onda P4): o engolimento não é ilustrado em
> página nenhuma.** Nem aqui, nem na 10B, nem em viñeta, nem em abertura de capítulo, nem na
> capa, nem em material de divulgação. Cronos com um bebê na mão, uma boca aberta sobre uma
> criança ou uma silhueta engolindo **reprovam a imagem sem discussão**. A cena existe só em
> texto, e é assim que ela é suportável.

---

## `10b-do-caos-os-libertados.png` ✅ **LIBERADO** — ⭐ **PRODUZIR PRIMEIRO**
- ✅ O cap. 10 **passou no gate** (onda P4, 2026-08-31). **É a primeira imagem da fila:** é a **página de referência de continuidade do livro** — os três
  irmãos barbados e os três atributos juntos pela primeira vez. Produzi-la cedo beneficia os
  caps. 1, 2, 6, 7 e 8.
- **Página:** **p. 46** — ⚠️ **EXCEÇÃO R4.1** · **Momento:** **instante anterior** ·
  nota: **promessa de virada**
- **Figuras nítidas:** Zeus, um Ciclope, Posêidon, Hades, um Cem-Mãos = **5/5** ✔ · **1:1**
- ⚠️ **X6 resolvido na onda P4 — Zeus é MADURO nesta página.** O brief dizia "Zeus jovem" e a
  `sheet-zeus.png` diz *mature, tall*: **a sheet vence**, e por dois motivos, não por um. (1) É
  a **referência de continuidade** do livro, e esta é a ⭐ **PRODUZIR PRIMEIRO** — se ela sair
  com um Zeus adolescente, os caps. 1, 2, 6, 7 e 8 herdam o erro. (2) O **cap. 1 depende
  dela**: o Zeus disfarçado da p. 10 é declarado como "o mesmo rosto do cap. 10", e é impresso
  **36 páginas antes**; um leitor de 4 anos que vê o rosto velho primeiro e o rosto jovem
  depois não lê "o mesmo deus mais novo", lê "outro deus". O arco **bebê → rei** fica onde a
  fonte o sustenta — **no texto**, na gruta de Creta —, e não na imagem: **nenhuma página do
  livro mostra Zeus criança.**

```
[BASE]
[CHARACTERS]
ZEUS: a MATURE, TALL god with a full dark wavy beard and dense wavy hair — THE SAME FACE AS
`sheet-zeus.png` AND AS CHAPTER 1, not a youth — the youngest of the three brothers only in
birth order, face in three-quarter and FULLY EXPRESSIVE,
his arm RISING with the NEWLY FORGED THUNDERBOLT — a winged double-pointed bundle of fire that
STILL HOLDS THE HEAT OF THE FORGE. THE GESTURE IS NOT COMPLETE: the bolt HAS NOT been thrown.
Palette: sky — light Aegean blue #6FA8B8 and warm gold #E8A317.
POSEIDON: a mature Greek god, bearded, with long WET wavy hair and beard, holding the TRIDENT,
just returned to him and just armed. Palette: deep Aegean blue #1F5A6E and glaze black.
HADES: a mature Greek god, bearded, similar in build to his brothers, serious and calm, NEVER
sinister, THE HELMET OF INVISIBILITY IN HIS HAND, just returned to him. Palette: glaze black
#1B1613 and dark ochre.
THE THREE ARE DELIBERATELY ALIKE — three bearded brothers — AND ARE TOLD APART ONLY BY
ATTRIBUTE AND BY PALETTE: sky, sea, underworld.
CYCLOPS: a craftsman, not a monster, in the LEFT FOREGROUND, his HAMMER ALREADY LOWERED, his
ONE EYE lit by the metal itself; expression of GIVING, never of threat. The other two cyclopes
stand behind with UNFINISHED FACES.
HUNDRED-HANDER: rising from the ground at the right and behind, his arms suggested by ART
NOUVEAU ARABESQUE RHYTHM AND SILHOUETTE — a fan of arms, NEVER an anatomical count — with
stones already in the air. LIKEABLE: the child must root for him.
[SCENE]
Vertical full-bleed. "THE FREED ONES": the instant BEFORE the decisive blow.
BACKGROUND: Mount Othrys far away, with the mass of the TITANS IN SILHOUETTE AND BACKLIT — no
villain faces, no legible weapons.
[LIGHT] Forge heat from the left, warm gold #E8A317 on the new thunderbolt and on the cyclops'
eye, against the cold dark of the mountain.
[MUST NOT APPEAR] no fallen figure, no wound, no blood, nobody dead, nobody dying — NOBODY
DIES IN THE TITANOMACHY. No later god at all: no Athena, no Hephaestus, no Apollo, no Artemis,
no Hermes, no Aphrodite. No hourglass, no scythe of Saturn, no allegory of Time. No horns and
no red on Hades — HE IS NOT A DEMON. No counted hundred arms. No villain face on the Titans.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** os **três atributos, os três legíveis** — raio, tridente,
  **elmo NA MÃO de Hades** · o **gesto incompleto** de Zeus (o raio ainda não partiu) · o
  **olho único do Ciclope iluminado pelo próprio metal**, martelo já baixado, expressão de
  **entrega** · o **Cem-Mãos em arabesco**, simpático · os **Titãs em silhueta e contraluz**.
- ✔ **Foco:** Zeus, com os irmãos armados ao lado. Esta página é a que ensina o leitor a
  distinguir os três pelo resto do livro — **se os três não se separarem à primeira vista,
  reprovar e refazer, mesmo que a imagem esteja bonita.**
- ✘ **Proibido (linha vermelha do capítulo):** nenhuma figura caída · nenhum ferimento ·
  nenhum sangue · ninguém morto · **nenhum deus posterior** (Atena, Hefesto, Apolo, Ártemis,
  Hermes, Afrodite) · **Cronos ≠ Chronos** (ampulheta, foice de Saturno, alegoria do Tempo) ·
  **Hades não é demônio**: sem chifres, sem vermelho · contagem anatômica dos cem braços.

---

## `00-capa.png` ⬜ — **gerar por último**
- **Peça:** capa 4/0, separada do miolo · **Proporção:** 1:1 (o trim é quadrado)
- **Grid da série** (`references/serie-padroes.md`): título da série, título do livro,
  **ilustração central com moldura cultural**, mesmo lugar e mesma tipografia em toda a
  coleção. Este livro é o **piloto** — o que sair daqui vira o grid dos próximos.
- **Figuras nítidas: 1** ✔

```
[BASE]
[CHARACTERS]
ZEUS: a mature, tall Greek god with a full dark wavy beard and dense wavy hair, broad-browed,
calm and kindly face rendered FRONTAL, fully expressive, welcoming, art nouveau watercolour.
He holds the THUNDERBOLT, a winged double-pointed bundle of fire; an EAGLE beside or above
him. Personal palette: sky — light Aegean blue #6FA8B8 and warm gold #E8A317.
[SCENE]
A children's book COVER illustration, square. ONE single central figure, seen FRONTALLY and
symmetrically, standing inside a tall MUCHA ARCH whose inner profile is drawn as a GREEK KEY
MEANDER, with palmettes and egg-and-dart filling the arch band and the corners. Behind and
below the figure, a soft watercolour suggestion of the Aegean: sea, a low island, an olive
branch — no other figures.
COMPOSITION REQUIREMENT: THE UPPER THIRD OF THE IMAGE IS LOW-CONTRAST AND VISUALLY QUIET —
sky, wash and ornament only, no face, no attribute, no busy detail — because type will be set
over it later. Keep everything essential more than 10 mm away from all four edges.
[LIGHT] Warm, open, inviting — the friendliest image in the book.
[COLOUR] Terracotta #C1440E, glaze black #1B1613, clay ochre #C88A3D, clay cream #EDD9B4,
Aegean blue #6FA8B8, with warm gold #E8A317 as the single strong accent.
[MUST NOT APPEAR] NO TEXT OF ANY KIND, no title, no letters, no glyphs, no faux-Greek
lettering, no inscriptions on the arch, no signature, no logo, no other characters,
no crowd.
no text, no watermark, no lettering
```
**Checklist de aceitação**
- ✔ **Precisa estar visível:** **uma** figura central, **frontal e simétrica** · o **raio alado
  de pontas duplas** · a **águia** · o **arco Mucha com perfil interno de meandro** e palmetas ·
  o **terço superior calmo e de baixo contraste**, livre para a tipografia · **mesmo rosto de
  Zeus** dos caps. 1 e 10B.
- ✘ **Proibido:** 🔴 **qualquer letra, inclusive ornamental ou "grega falsa"** — a tipografia é
  composta em Typst pelo `mito-diagramador` na Fase 4 · outra figura em cena · multidão ·
  detalhe essencial dentro de 10 mm da borda.
- ⚠️ **Pendência serial:** a **tipografia da série** ainda é `[a definir no primeiro run]` em
  `serie-padroes.md`. A arte não depende dela; o **fechamento do grid**, sim. → Fase 4.

---

# PARTE III — REGISTRO DE EXECUÇÃO

Preenchido pelo `mito-ilustrador` na Fase 3b e vistoriado pelo `mito-diretor-arte`.
**Máximo 3 rodadas por imagem**; travou, sobe ao gate com as candidatas.

| Arquivo | Rodadas | Variações | Escolhida | Veredito (checklist §7 do guia) | px finais | Upscale (fator, ferramenta) | Status |
|---|---|---|---|---|---|---|---|
| `sheet-zeus.png` | | | | | — | — | ⬜ |
| `sheet-poseidon.png` | | | | | — | — | ⬜ |
| `sheet-hades.png` | | | | | — | — | ⬜ |
| `sheet-atena.png` | | | | | — | — | ⬜ |
| `sheet-apolo.png` | | | | | — | — | ⬜ |
| `sheet-hermes.png` | | | | | — | — | ⬜ |
| `sheet-dioniso.png` | | | | | — | — | ⬜ |
| `sheet-demeter-persefone.png` | | | | | — | — | ⬜ |
| `10b-do-caos-os-libertados.png` | | | | | /2492² | | 🟨 |
| `01-zeus-baucis-e-filemon.png` | | | | | /2492² | | ⬜ |
| `02-atena-disputa-por-atenas.png` | | | | | /2492² | | ⬜ |
| `03-leto-e-a-ilha.png` | | | | | /2492² | | ⬜ |
| `04-hermes-o-gado-e-a-lira.png` | | | | | /2492² | | ⬜ |
| `05-hefesto-o-trono-de-ouro.png` | | | | | /2492² | | ⬜ |
| `06-demeter-e-persefone.png` | | | | | /2492² | | ⬜ |
| `07-perseu-e-a-medusa.png` | | | | | /2492² | | ⬜ |
| `08-teseu-e-o-minotauro.png` | | | | | /2492² | | ⬜ |
| `09-midas-o-toque-de-ouro.png` | | | | | /2492² | | ⬜ |
| `10a-do-caos-abertura.png` | | | | | /2492² | | 🟨 |
| `00-capa.png` | | | | | /2492² | | ⬜ |

**Validações de par obrigatórias antes de qualquer aprovação final** (não é opcional, é a
única forma de pegar estes erros):
1. **caps. 1 × 9 lado a lado** — os dois ouros são visivelmente diferentes? (`#E8A317` quente
   e cheio × `#D9CB8A` pálido e sem calor)
2. **caps. 7 × 8 lado a lado** — as duas luzes são visivelmente diferentes? (ponto quente ×
   luz que atravessa)
3. **caps. 1, 2, 6, 7, 10B lado a lado** — Zeus, Posêidon, Hades, Atena e Hermes são o **mesmo
   rosto** em todas as suas aparições?
4. **caps. 7, 8, 9 lado a lado** — a sequência lê como *contido → atravessado → percebido*, ou
   como três respirações suspensas iguais? Se for a segunda, **o Pactolo volta à mesa** (X6 do
   dossiê do cap. 9).
