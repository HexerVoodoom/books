// ============================================================================
// Era Uma Vez um Mito — Grécia · capa.typ (FRENTE apenas)
// mito-diagramador · Fase 4
//
// ⚠️ PENDÊNCIA DE GRÁFICA, NÃO FABRICÁVEL AQUI: a capa completa da série é um único
// arquivo frente + lombada + verso (pipeline-impressao.md §Estrutura). A largura da
// lombada é função do nº de páginas do miolo e da gramatura do papel — vem de uma
// tabela que só a gráfica escolhida fornece. O texto de quarta capa (contracapa) é
// copy editorial que ainda não foi escrito por ninguém. Este arquivo compõe SÓ A
// FRENTE, no trim+sangria do miolo, para provar a tipografia da série sobre a
// ilustração (grid da série, `references/serie-padroes.md`). Lombada e verso ficam
// como pendência nomeada até a gráfica e o texto de contracapa existirem.
// ============================================================================

#let TRIM = 20.5cm
#let SANGRIA = 3mm
#let PAGE = TRIM + 2 * SANGRIA // 21.1cm

#let TERRACOTA = rgb("#C1440E")
#let TERRACOTA-ESCURA = rgb("#8C3410")
#let OCRE = rgb("#C88A3D")
#let CREME = rgb("#EDD9B4")

#let FONTE-DISPLAY = "Libertinus Serif"
#let FONTE-CORPO = "DejaVu Sans"

#set page(width: PAGE, height: PAGE, margin: 0mm, numbering: none, fill: white)
#set text(font: FONTE-CORPO, fill: TERRACOTA-ESCURA)

// Ilustração de fundo, full-bleed
#box(width: PAGE, height: PAGE, clip: true)[
  #image("../ilustracoes/00-capa.png", width: PAGE, height: PAGE, fit: "cover")
]

// ⚠️ ACHADO DE COMPOSIÇÃO (registrado no log, não escondido): o prompt de `00-capa.png`
// pedia "terço superior calmo, sem rosto/atributo" para reservar espaço à tipografia, mas
// a v1 obtida tem a cabeça de Zeus e a águia subindo até perto do topo, sob o próprio
// meandro do arco — não sobra zona de baixo contraste genuína. Em vez de confiar na
// imagem, a tipografia recebe aqui uma placa opaca (mesmo tratamento do rótulo inferior),
// que garante legibilidade em qualquer arte de fundo. Se o diretor de arte preferir a
// solução original (texto direto sobre a arte), a v1 precisa ser regerada com a cabeça
// mais baixa no quadro.
#place(top + center, dy: 10mm)[
  #box(width: PAGE - 30mm, fill: CREME.transparentize(8%), inset: (x: 10pt, y: 10pt), radius: 3pt)[
    #align(center)[
      #text(font: FONTE-DISPLAY, size: 13pt, fill: TERRACOTA-ESCURA, tracking: 2.5pt)[
        ERA UMA VEZ UM MITO
      ]
      #v(8pt)
      #line(length: 16%, stroke: 1pt + TERRACOTA-ESCURA)
      #v(10pt)
      #text(font: FONTE-DISPLAY, size: 38pt, weight: "bold", fill: TERRACOTA-ESCURA)[
        Grécia
      ]
    ]
  ]
]

// Subtítulo discreto próximo à base, sobre a faixa de mar/moldura (baixo contraste ali também)
#place(bottom + center, dy: -14mm)[
  #box(width: PAGE - 30mm, fill: CREME.transparentize(15%), inset: 8pt, radius: 3pt)[
    #align(center)[
      #text(font: FONTE-CORPO, size: 11pt, fill: TERRACOTA-ESCURA)[
        Dez mitos gregos recontados para ler em voz alta
      ]
    ]
  ]
]
