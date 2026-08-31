// ============================================================================
// Era Uma Vez um Mito — Grécia · miolo.typ
// GERADO por gerar_typst.py a partir de conteudo/{capitulos,aparato}.json — não editar
// o texto aqui; editar os capítulos-fonte em producao/grega/capitulos/ e regerar.
// mito-diagramador · Fase 4
// ============================================================================

#import "imagens-disponiveis.typ": imagens-disponiveis

// ---------------------------------------------------------------------------
// 0. CONSTANTES FÍSICAS (pipeline-impressao.md)
// ---------------------------------------------------------------------------
#let TRIM = 20.5cm
#let SANGRIA = 3mm
#let PAGE = TRIM + 2 * SANGRIA // 21.1cm
#let ILUS-DIR = "../ilustracoes/"

// margens de zona-de-texto: medidas a partir da borda da PÁGINA (que já inclui a
// sangria de 3 mm); logo toda margem abaixo tem embutido o mínimo de 3 mm de sangria
// + 10 mm de margem de segurança do pipeline. A margem interna (lombada) é maior.
#let MARGEM-MIOLO = (inside: 27mm, outside: 21mm, top: 21mm, bottom: 25mm)
#let MARGEM-APARATO = (inside: 24mm, outside: 18mm, top: 18mm, bottom: 20mm)

// ---------------------------------------------------------------------------
// 1. PALETA (guia-de-estilo.md §2)
// ---------------------------------------------------------------------------
#let TERRACOTA = rgb("#C1440E")
#let TERRACOTA-ESCURA = rgb("#8C3410")
#let NEGRO-VERNIZ = rgb("#1B1613")
#let OCRE = rgb("#C88A3D")
#let CREME = rgb("#EDD9B4")
#let PAPEL = rgb("#F6EFE2")
#let AZUL-CLARO = rgb("#6FA8B8")
#let AZUL-PROFUNDO = rgb("#1F5A6E")

// ---------------------------------------------------------------------------
// 2. TIPOGRAFIA — PROPOSTA ao gate (ver build.log / resumo para justificativa e plano B)
//    Display: Libertinus Serif · Corpo/leitura infantil: DejaVu Sans
// ---------------------------------------------------------------------------
#let FONTE-DISPLAY = "Libertinus Serif"
#let FONTE-CORPO = "DejaVu Sans"

#set text(font: FONTE-CORPO, size: 14pt, lang: "pt", region: "BR", fill: NEGRO-VERNIZ)
#set par(leading: 0.38em, justify: true, first-line-indent: 0pt)
#set page(width: PAGE, height: PAGE, fill: PAPEL, margin: MARGEM-MIOLO, numbering: none)

// ---------------------------------------------------------------------------
// 3. FUNÇÕES DA SÉRIE (miolo.typ template — reutilizável livro 2 em diante)
// ---------------------------------------------------------------------------

// --- 3.1 Full-bleed: insere a ilustração se o PNG existir; senão, desenha um
//        encaixe de produção que NÃO quebra o build. ---
#let fullbleed(id, label, desc) = {
  pagebreak(weak: true)
  set page(margin: 0mm, numbering: none)
  let caminho = ILUS-DIR + id + ".png"
  if imagens-disponiveis.at(id, default: false) {
    box(width: PAGE, height: PAGE, clip: true)[
      #image(caminho, width: PAGE, height: PAGE, fit: "cover")
    ]
  } else {
    box(width: PAGE, height: PAGE, fill: CREME, stroke: none)[
      #place(top + left, line(start: (0pt, 0pt), end: (PAGE, PAGE), stroke: 0.5pt + OCRE))
      #place(top + left, line(start: (0pt, PAGE), end: (PAGE, 0pt), stroke: 0.5pt + OCRE))
      #place(center + horizon)[
        #box(width: PAGE - 30mm, stroke: 1.2pt + TERRACOTA, inset: 14pt, radius: 2pt, fill: PAPEL)[
          #set text(fill: TERRACOTA-ESCURA, font: FONTE-CORPO)
          #align(center)[
            #text(size: 10pt, weight: "bold")[ENCAIXE DE ILUSTRAÇÃO — FALTA GERAR]
            #v(6pt)
            #text(size: 9pt, style: "italic")[arquivo esperado:]
            #v(2pt)
            #text(size: 11pt, weight: "bold")[#(id + ".png")]
            #v(2pt)
            #text(size: 8pt)[(#label · producao/grega/ilustracoes/)]
            #v(10pt)
            #text(size: 10pt)[#desc]
          ]
        ]
      ]
    ]
  }
  pagebreak(weak: true)
  set page(margin: MARGEM-MIOLO, numbering: none)
}

// --- 3.2 Abertura de capítulo: título + friso ornamental + capitular simples ---
#let chapter-title(numero: 0, titulo: "") = {
  v(4pt)
  line(length: 100%, stroke: 1.4pt + TERRACOTA)
  v(2pt)
  line(length: 100%, stroke: 0.6pt + OCRE)
  v(10pt)
  text(font: FONTE-DISPLAY, size: 11pt, fill: OCRE, tracking: 1.5pt)[CAPÍTULO #numero]
  v(4pt)
  text(font: FONTE-DISPLAY, size: 24pt, weight: "bold", fill: TERRACOTA-ESCURA)[#titulo]
  v(4pt)
  line(length: 22%, stroke: 1pt + TERRACOTA)
  v(14pt)
}

// --- 3.3 Box "Você sabia?" — mesma posição/título em toda a série ---
#let voce-sabia(body) = {
  v(10pt)
  block(
    width: 100%, fill: CREME, stroke: 1pt + OCRE, radius: 3pt, inset: 12pt,
  )[
    #text(font: FONTE-DISPLAY, size: 13pt, weight: "bold", fill: TERRACOTA-ESCURA)[Você sabia?]
    #v(4pt)
    #set text(size: 11pt)
    #set par(leading: 0.7em)
    #body
  ]
  v(6pt)
}

// --- 3.4 Glossário do capítulo (lista compacta, some no aparato geral também) ---
#let glossario-do-capitulo(body) = {
  v(6pt)
  block(width: 100%, inset: (top: 4pt))[
    #line(length: 30%, stroke: 0.4pt + OCRE)
    #v(4pt)
    #text(font: FONTE-DISPLAY, size: 9.5pt, weight: "bold", fill: OCRE, tracking: 1pt)[PALAVRAS DESTE CAPÍTULO — ver glossário, pp. 49–50]
  ]
}

// --- 3.5 Página de aparato: corpo 9,5/12 pt, 2 colunas (livro-spec X5) ---
#let pagina-aparato(titulo, body, numero: none) = {
  pagebreak(weak: true)
  set page(margin: MARGEM-APARATO, numbering: none)
  set text(size: 9.5pt)
  set par(leading: 0.26em, justify: true)
  if titulo != none {
    text(font: FONTE-DISPLAY, size: 15pt, weight: "bold", fill: TERRACOTA-ESCURA)[#titulo]
    v(8pt)
  }
  columns(2, gutter: 14pt)[#body]
  pagebreak(weak: true)
  set page(margin: MARGEM-MIOLO, numbering: none)
  set text(size: 14pt)
  set par(leading: 0.38em)
}

// ---------------------------------------------------------------------------
// 4. ESTRUTURA CANÔNICA (pipeline-impressao.md §Estrutura + livro-spec §Paginação, 56 pp)
// ---------------------------------------------------------------------------

// ---- p.1 · Falsa folha (só o título) ----
#align(center + horizon)[
  #text(font: FONTE-DISPLAY, size: 15pt, fill: OCRE, tracking: 3pt)[ERA UMA VEZ UM MITO]
  #v(30pt)
  #line(length: 18%, stroke: 0.8pt + TERRACOTA)
]
#pagebreak(weak: true)

// ---- p.2 · Verso da falsa folha (ornamento de meandro, branca) ----
#align(center + horizon)[
  #box(width: 60%, height: 4pt, fill: none, stroke: (bottom: 1pt + OCRE))
]
#pagebreak(weak: true)

// ---- p.3 · Folha de rosto ----
#align(center + horizon)[
  #text(font: FONTE-DISPLAY, size: 13pt, fill: OCRE, tracking: 2pt)[ERA UMA VEZ UM MITO]
  #v(6pt)
  #line(length: 14%, stroke: 0.8pt + TERRACOTA)
  #v(28pt)
  #text(font: FONTE-DISPLAY, size: 34pt, weight: "bold", fill: TERRACOTA-ESCURA)[Grécia]
  #v(36pt)
  #text(size: 12pt)[Dez mitos gregos recontados para ler em voz alta]
  #v(50pt)
  #text(size: 10pt, style: "italic")[Texto: mito-escritor · Ilustrações: mito-ilustrador \
  Direção editorial: mito-editor · Diagramação: mito-diagramador]
]
#pagebreak(weak: true)

// ---- p.4 · Ficha técnica / créditos / disclosure de IA ----
#set text(size: 10pt)
#set par(leading: 0.7em)
#v(10pt)
#text(font: FONTE-DISPLAY, size: 12pt, weight: "bold", fill: TERRACOTA-ESCURA)[Ficha técnica]
#v(8pt)
*Era Uma Vez um Mito — Grécia* \
Coleção "Era Uma Vez um Mito" · Livro 1 (piloto)

#v(8pt)
Texto recontado a partir do enredo de fontes antigas em domínio público (ver pp. 51–53). \
Ilustrações criadas com auxílio de inteligência artificial generativa, sob direção de arte
e curadoria humanas.

#v(8pt)
Trim: 20,5 × 20,5 cm · Miolo: 56 páginas · Diagramação: Typst.

#v(8pt)
#text(size: 8.5pt, fill: TERRACOTA-ESCURA)[
  ⚠️ Pendência de gate: disclosure de IA definitivo, dados de catalogação (ISBN/CIP) e a
  redação final desta página aguardam decisão do humano (livro-spec, "Direitos & disclosure").
]
#set text(size: 14pt)
#set par(leading: 0.38em)
#pagebreak(weak: true)

// ---- p.5 · Sumário ----
#v(6pt)
#text(font: FONTE-DISPLAY, size: 20pt, weight: "bold", fill: TERRACOTA-ESCURA)[Sumário]
#v(14pt)
#set text(size: 12pt)
#let sumario-item(pagina, titulo) = {
  grid(columns: (1fr, auto), text()[#titulo], text(fill: OCRE)[#pagina])
  v(6pt)
}
#sumario-item("7", "1 · Zeus · Baucis e Filêmon")
#sumario-item("11", "2 · Atena · A disputa por Atenas")
#sumario-item("15", "3 · Leto e a ilha que ninguém queria")
#sumario-item("19", "4 · Hermes, o gado e a lira")
#sumario-item("23", "5 · Hefesto: o trono de ouro")
#sumario-item("27", "6 · Deméter e Perséfone")
#sumario-item("31", "7 · Perseu e a Medusa")
#sumario-item("35", "8 · Teseu e o Minotauro")
#sumario-item("39", "9 · Midas: o toque de ouro")
#sumario-item("43", "10 · Do Caos ao Olimpo")
#sumario-item("49", "Glossário")
#sumario-item("51", "De onde vêm estas histórias")
#sumario-item("52", "Perguntas que as crianças fazem")
#sumario-item("54", "Colofão")
#set text(size: 14pt)
#pagebreak(weak: true)

// ---- p.6 · Dedicatória + nota "estes mitos vêm de poetas reais" ----
#align(center + horizon)[
  #box(width: 80%)[
    #set align(center)
    #text(style: "italic", size: 13pt)[Para quem já pediu "de novo" antes de o livro fechar.]
    #v(30pt)
    #line(length: 18%, stroke: 0.8pt + OCRE)
    #v(20pt)
    #text(size: 11pt)[
      Estes mitos vêm de poetas reais — Homero, Hesíodo, os Hinos Homéricos, Ovídio — que
      contaram cada um à sua maneira, muitos séculos atrás. Este livro reconta o enredo deles
      para ler em voz alta hoje; o que foi mudado, e por quê, está nas páginas 51 a 53.
    ]
  ]
]
#pagebreak(weak: true)

// ============================================================================
// 5. OS DEZ CAPÍTULOS
// ============================================================================

@@CHAPTERS@@

// ============================================================================
// 6. APARATO PÓS-TEXTUAL (pp. 49–54) — corpo 9,5/12 pt, 2 colunas (X5)
// ============================================================================

// ---- pp. 49–50 · Glossário ----
#pagina-aparato("Glossário", [
  #set text(size: 9.5pt)
  #set par(leading: 0.26em)
  _Nomes, grafia, transliteração e palavras difíceis do livro, capítulo a capítulo. Um termo,
  um verbete (livro-spec R5.2)._

  @@GLOSSARIO_GERAL@@
])

// ---- p. 51 · De onde vêm estas histórias (fontes + bibliografia comprimida — R5.3) ----
#pagina-aparato("De onde vêm estas histórias", [
  @@FONTES_ENTRIES@@

  === Para ler mais (e para ler junto)

  @@PARA_LER_MAIS@@
])

// ---- pp. 52–53 · Perguntas que as crianças fazem (R5.3) ----
#pagina-aparato("Perguntas que as crianças fazem", [
  @@PERGUNTAS_INTRO@@

  @@PERGUNTAS_SECOES@@

  === O que mudamos, e por quê

  #set text(size: 8.5pt)
  @@MUDAMOS_LISTA@@
])

// ---- p. 54 · Colofão ----
#set text(size: 10pt)
#set par(leading: 0.7em)
#v(20pt)
#text(font: FONTE-DISPLAY, size: 14pt, weight: "bold", fill: TERRACOTA-ESCURA)[Colofão]
#v(10pt)
Composto em Typst, nas famílias #FONTE-DISPLAY (títulos) e #FONTE-CORPO (texto corrido) —
proposta serial de tipografia, sujeita a aprovação no gate da Fase 4 (ver build.log).

#v(6pt)
Corpo do miolo: 14/21 pt · Corpo do aparato: 9,5/12 pt, duas colunas.

#v(6pt)
Trim 20,5 × 20,5 cm, sangria 3 mm. Paleta e ilustrações: cerâmica ática figurada fundida a
Mucha/aquarela (ver `guia-de-estilo.md`).

#v(6pt)
#text(size: 8.5pt, fill: TERRACOTA-ESCURA)[
  ⚠️ Pendência: papel, gráfica e tiragem — decisão do humano, fora do escopo desta fase.
]
#set text(size: 14pt)
#set par(leading: 0.38em)
#pagebreak(weak: true)

// ---- pp. 55–56 · Guarda final / branca ----
#align(center + horizon)[
  #box(width: 40%, height: 3pt, fill: none, stroke: (bottom: 0.6pt + OCRE))
]
#pagebreak(weak: true)
#align(center + horizon)[
  #text(font: FONTE-DISPLAY, size: 11pt, fill: OCRE, tracking: 2pt)[FIM]
]
