# Padrões da série (valem para todos os livros)

A coleção é o produto: um leitor que compra o segundo livro deve reconhecer o primeiro.

## Editorial
- Nome da série: **"Era Uma Vez um Mito"** (aprovado pelo humano no checkpoint da Fase 0 do
  livro grego, 2026-08-30). Livro 1: *Era Uma Vez um Mito — Grécia*.
- Disclosure de IA (ficha técnica, todos os livros): "Ilustrações criadas com auxílio de
  inteligência artificial generativa, sob direção de arte e curadoria humanas."
- Estrutura fixa de livro: ver `pipeline-impressao.md` §Estrutura.
- Capítulo específico: ~600–1.000 palavras · capítulo geral: ~1.200–2.000 (ver
  `adequacao-etaria.md`).
- Box "Você sabia?": mesmo título e posição em toda a série.
- Grafia de nomes: padronizada por livro no `livro-spec.md`; original entre parênteses na
  primeira ocorrência (ex.: "Tor (Thor)") — decisão de grafia é do editor, no gate da Fase 0.

## Spin-offs (regra fundada no livro 2, `grega-equidna`, 2026-09-01)

A série **mantém "um livro por mitologia"** — o CONTRACT §0 **não muda**. Um volume de
aprofundamento (um recorte dentro de uma mitologia que já tem seu livro) é um **spin-off**, com
**rotulagem e numeração próprias**, nunca um volume da linha principal.

- **Numeração:** linha principal usa número seco (Livro 1, Livro 2…). Spin-off usa a
  **numeração da mitologia-mãe + letra**: *Grécia · I* (o primeiro spin-off da Grécia), *Grécia
  · II*, etc. Um spin-off **nunca** consome um número da linha principal.
- **Capa:** o mesmo grid da série (título da série no topo, ilustração central com moldura
  cultural). A distinção é **uma tarja de rotulagem** logo abaixo do título da série, no lugar
  onde a linha principal escreve o nome da mitologia:
  `ERA UMA VEZ UM MITO · GRÉCIA · HISTÓRIAS DE DENTRO`, e abaixo o título do livro.
  A palavra que nomeia o recorte substitui o nome seco da mitologia — o comprador vê que é
  Grécia e vê que não é *o* livro da Grécia.
- **Lombada:** ordem fixa `ERA UMA VEZ UM MITO · <MITOLOGIA> · <rótulo do recorte> · <título>`.
  O rótulo do recorte é o que impede que dois volumes de Grécia fiquem idênticos na estante.
- **Sumário da coleção** (catálogo, página de "outros livros da série"): duas listas
  separadas — **"A coleção"** (linha principal, um por mitologia) e, indentada sob a mitologia
  correspondente, **"Histórias de dentro"** (os spin-offs). Um spin-off nunca aparece solto na
  lista principal.
- **Tudo o mais é idêntico:** tipografia serial, fórmula do subtítulo de frente, box "Você
  sabia?", estrutura de aparato, trim e pipeline. Spin-off é rotulagem, não formato novo.

## Dívidas de coleção assumidas (contrato entre volumes)

Registro explícito de promessa feita em um livro e **não paga** nele nem no volume seguinte. Se
o volume nomeado nunca sair, isto vira **calote retroativo** com o leitor — está escrito aqui
para que a decisão de não publicar seja consciente, e não um esquecimento.

| # | Dívida | Contraída em | Situação | Volume que paga |
|---|---|---|---|---|
| D-1 | **Pégaso / Quimera.** O livro 1 (`grega`) **excluiu Pégaso de propósito** do cap. 7 (Perseu/Medusa) para guardá-lo junto da Quimera. O livro 2 (`grega-equidna`) **não paga**: a Quimera aparece só viva, no retrato de origem do cap. 8 (Hesíodo, Teog. 306–319), e Pégaso não é nomeado em lugar nenhum. | Livro 1, cap. 7 (2026-08/09) | **EM ABERTO — transferida** | ***Heróis da Grécia*** (Grécia · II) — Belerofonte, Pégaso e a Quimera num capítulo próprio. Volume **não iniciado**. |

**Regra:** nenhuma dívida nova entra sem (a) volume nomeado e (b) a linha correspondente nesta
tabela, escrita no mesmo run em que a promessa foi adiada. Dívida sem volume nomeado é proibida:
o certo, nesse caso, é **pagar no volume corrente ou apagar a promessa do volume anterior**.

## Paratexto (quarta capa, orelha, catálogo)

O formato foi **fundado no livro 2** — o livro 1 não tem quarta capa escrita
(`producao/grega/diagramacao/capa.typ` registra a lacuna). Vale daqui em diante:

- **Quatro parágrafos curtos** na quarta capa. Orelha/catálogo: uma sinopse de ~55 palavras.
- **Abre por imagem concreta, nunca por resumo de enredo.** A primeira frase põe alguém ou algo
  diante do leitor (um portão sem tranca, uma pedra alta na estrada); não diz "este livro conta".
- **Uma linha de ironia por peça, nunca dor.** Exatamente uma — a camada adulta é a inversão de
  ponto de vista, não o sofrimento dos personagens.
- **Fórmula serial do subtítulo de frente:** *"<Numeral por extenso> <histórias|mitos>
  <gentílico> recontad@s para ler em voz alta"* (livro 1: "Dez mitos gregos recontados para ler
  em voz alta"; livro 2: "Oito histórias gregas recontadas para ler em voz alta"). O numeral
  bate com o número de capítulos.
- **Anti-infantilização, herdada:** zero exclamação, zero diminutivo, zero adjetivo de embalagem
  ("emocionante", "divertido", "inesquecível"), zero moral, zero pergunta retórica endereçada à
  criança.

### ⛔ Regra do paratexto virgem (livro 2 — violada duas vezes, pega nas duas)

> **O paratexto (quarta capa, orelha, catálogo, release, anúncio) jamais usa a redação literal
> da primeira nem da última frase do miolo — nem metade delas.**

O motivo decide sozinho: essas duas frases são as de maior efeito do livro, e o paratexto é lido
**trinta segundos antes** — na livraria, ou pelo adulto que vira o livro antes de abrir. O leitor
chega à p. 7 com a abertura já gasta, e na 20ª releitura isso não se recupera. O custo não é o
teto de repetição do miolo (paratexto não conta para ele); o custo é a **primeira frase deixar de
ser primeira**.

Como cumprir: **ecoar o conceito em gramática diferente** — outro sujeito, outro fecho. O
comprador entende a premissa; o leitor ainda ganha a frase inteira, nova, na página.

Precedentes do livro 2 (`capitulos/quarta-capa.md`): a frase-fio foi mantida fora da quarta capa
por decisão declarada (§4), e a Rev. 1 foi **reprovada como FATAL (F-1)** por copiar literalmente
a abertura do cap. 7 — incluindo a batida cômica que é o tempo da piada.

## Fidelidade — regras seriais

- **Divergência de parentela nas fontes ⇒ o miolo nunca declara grau.** Quando as fontes antigas
  divergem sobre quem é filho, neto ou irmão de quem, o texto do livro **não declara o grau** —
  nem no corrido, nem nos boxes "Você sabia?", nem no glossário, **nem no título**. Fórmulas de
  substituição: *"alguém da família de X"*, *"pela linha de Y"*. O grau divergente mora na página
  "De onde vêm estas histórias", que é onde o adulto pode ler a discussão.
  Fundada no livro 2: o crux de *Teogonia* 326 não está resolvido, e o título de trabalho
  *Equidna e seus filhos* — a **única peça do livro a declarar grau** — foi descartado por ser
  falso em 3 dos 8 capítulos. O título é paratexto, mas é a peça mais visível do livro: a regra
  o alcança.

## Visual
- Fórmula Mucha + aquarela + camada cultural: `estilo-ilustracao.md`.
- Grid de capa idêntico entre livros: título da série, título do livro, ilustração central
  com moldura cultural, mesmo lugar/tipografia.
- Tipografia da série: **decidida no primeiro run** (livro-piloto, Grécia, Fase 4,
  2026-09-01) — display/títulos: **Libertinus Serif**; corpo/leitura infantil: **DejaVu
  Sans**. Ambas embutem limpo no Typst (subset, `Type0`/CID) e as duas vieram já instaladas
  no ambiente de compilação (`typst fonts` confirma). Iguais em todos os livros da coleção
  a partir daqui — só a paleta de acento cultural muda por livro.
- Paleta: base neutra da série + acento cultural por livro (documentar hex no guia de estilo).

## Arquivos por livro — `producao/<slug>/`
```
livro-spec.md          # Fase 0
dossies/dossie-<mito>.md
capitulos/<nn>-<mito>.md
guia-de-estilo.md      # + character-sheets/
ilustracoes/<nn>-<mito>.png (300dpi, com sangria)
diagramacao/miolo.typ capa.typ build.log
entrega/miolo-grafica.pdf capa-grafica.pdf checklist.md
<fase>/gate.md
```
State em `producao/state/<slug>.json` (shape no CONTRACT §4).
