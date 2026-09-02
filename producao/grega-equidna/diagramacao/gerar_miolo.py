#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Gera miolo.typ de `grega-equidna` (Equidna e as portas do mundo) — 48 pp / 8 caps.
Lê os capítulos e o aparato em ../capitulos/ e emite ./miolo.typ.
Não editar miolo.typ à mão: editar os .md-fonte e rodar este script.
"""
import re, os, sys

BASE = os.path.dirname(os.path.abspath(__file__))
CAP = os.path.normpath(os.path.join(BASE, "..", "capitulos"))
APA = os.path.join(CAP, "aparato")

SLUG = "grega-equidna"

# ---------------------------------------------------------------- md -> typst
def esc(s):
    s = s.replace("\\", "\\\\")
    for c in "#@$<>":
        s = s.replace(c, "\\" + c)
    s = s.replace("_", "\\_")
    return s

def md2typ(s):
    # protege bold/italic antes de escapar
    s = re.sub(r"\*\*(.+?)\*\*", lambda m: "\x01" + m.group(1) + "\x02", s, flags=re.S)
    s = re.sub(r"(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)", lambda m: "\x03" + m.group(1) + "\x04", s, flags=re.S)
    s = re.sub(r"`(.+?)`", lambda m: "\x05" + m.group(1) + "\x06", s, flags=re.S)
    s = esc(s)
    s = (s.replace("\x01", "*").replace("\x02", "*")
          .replace("\x03", "_").replace("\x04", "_")
          .replace("\x05", "\"").replace("\x06", "\""))
    return s

def paras(txt):
    return [re.sub(r"\s*\n\s*", " ", p).strip() for p in txt.split("\n\n") if p.strip()]

def sec(path, start, end=None):
    s = open(path, encoding="utf-8").read()
    i = s.index("\n" + start + "\n") + 1 + len(start)
    j = s.index("\n" + end, i) if end else len(s)
    return s[i:j].strip()

def chapter(fn):
    p = os.path.join(CAP, fn)
    s = open(p, encoding="utf-8").read()
    texto = re.split(r"^## Texto\s*$", s, flags=re.M)[-1]
    texto = re.split(r"^## Você sabia\?\s*$", texto, flags=re.M)[0].strip()
    box = re.split(r"^## Você sabia\?\s*$", s, flags=re.M)[-1]
    box = re.split(r"^## Cenas? da", box, flags=re.M)[0].strip()
    return paras(texto), paras(box)

# ---------------------------------------------------------------- dados
TITULO = "Equidna e as portas do mundo"
SUBTITULO = "Oito histórias gregas recontadas para ler em voz alta"
SERIAL = "Grécia · I"          # rotulagem de spin-off (serie-padroes.md §Spin-offs)
TARJA = "ERA UMA VEZ UM MITO · GRÉCIA · HISTÓRIAS DE DENTRO"
N_PAGINAS = 48

CAPS = [
    # arquivo, nº, título, pp, [(idx_paragrafo, tipo, id, legenda, desc)]
    ("cap-01-equidna-caverna.md", 1, "A caverna e as portas", "7–10", [
        (None, "full", "01-equidna-a-caverna-e-as-portas", "p. 10",
         "Equidna na boca da caverna, depois das partidas; o mapa das portas ao longe.")]),
    ("cap-02-dragao-colquida.md", 2, "O dragão que nunca dormia", "11–14", [
        (None, "full", "02-dragao-da-colquida", "p. 14",
         "O dragão do bosque da Cólquida e o Velo de Ouro; Medeia canta o sono.")]),
    ("cap-03-ortro.md", 3, "Órtro e o gado vermelho", "15–18", [
        (None, "full", "03-ortro-o-turno-de-trabalho", "p. 18",
         "Órtro em turno de trabalho no gado vermelho de Eritia. Sem Héracles em quadro.")]),
    ("cap-04-ladon.md", 4, "Ladon e o gigante que segurou o céu", "19–22", [
        (None, "full", "04-ladon-e-o-pedido-da-almofada", "p. 22",
         "O pedido da almofada: Atlas, o céu e a árvore das maçãs de ouro.")]),
    ("cap-05-esfinge.md", 5, "A pergunta da Esfinge", "23–26", [
        (7, "full", "05-a-pergunta-da-esfinge", "p. 24",
         "A pergunta, na pedra alta sobre a estrada de Tebas. A resposta vira a página.")]),
    ("cap-06-leao-nemeia.md", 6, "O leão de pele impossível", "27–30", [
        (7, "full", "06-o-leao-antes", "p. 28",
         "O leão vivo, no capim curto das colinas de Nemeia, olhando a estrada."),
        (17, "vinheta", "06v1-as-duas-bocas", "vinheta 1 · p. 29",
         "A caverna passante vista de fora: uma boca entulhada, a outra aberta. A clava no chão."),
        (24, "vinheta", "06v2-a-pele", "vinheta 2 · p. 30 — OBRIGATÓRIA (decisão de gate)",
         "Héracles de costas descendo a colina, a pele como manto de corpo inteiro; Cleonas ao longe.")]),
    ("cap-07-cerbero.md", 7, "Cérbero volta para casa", "31–34", [
        (14, "full", "07-cerbero-o-abraco-sem-armas", "p. 33",
         "O abraço sem armas, no portão do mundo de baixo. Arco e clava largados no chão.")]),
    ("cap-08-tifao-geral.md", 8, "Tifão, o pai de tudo", "35–40", [
        (7, "full", "08a-tifao", "p. 36",
         "Tifão: mãos fortes, pés que não cansam, cabeças de serpente nos ombros (não contáveis)."),
        (16, "full", "08b-o-retrato-de-origem", "p. 38",
         "O retrato de origem: a família inteira pequena dentro da caverna, no tempo do nascimento."),
        (-1, "vinheta", "08c-a-caverna-final", "p. 40 — contida, sem full-bleed",
         "A caverna só com Equidna: mesmo enquadramento do cap. 1, mesmo rosto, mesmo traço de luz.")]),
]

SUMARIO = [
    ("7", "1 · A caverna e as portas"),
    ("11", "2 · O dragão que nunca dormia"),
    ("15", "3 · Órtro e o gado vermelho"),
    ("19", "4 · Ladon e o gigante que segurou o céu"),
    ("23", "5 · A pergunta da Esfinge"),
    ("27", "6 · O leão de pele impossível"),
    ("31", "7 · Cérbero volta para casa"),
    ("35", "8 · Tifão, o pai de tudo"),
    ("41", "Glossário"),
    ("43", "De onde vêm estas histórias"),
    ("44", "Perguntas que as crianças fazem"),
    ("46", "Colofão"),
]

# ---------------------------------------------------------------- template
HEAD = r'''// ============================================================================
// Era Uma Vez um Mito — @@SERIAL@@ · @@TITULO@@
// GERADO por gerar_miolo.py a partir de ../capitulos/*.md — não editar à mão.
// mito-diagramador · Fase 4 (antecipada: as 22 peças de arte ainda não existem;
// toda posição de imagem sai como ENCAIXE DE PRODUÇÃO nomeado.)
// ============================================================================

#import "imagens-disponiveis.typ": imagens-disponiveis

// --- 0. CONSTANTES FÍSICAS (pipeline-impressao.md) — bloco serial intocado ---
#let TRIM = 20.5cm
#let SANGRIA = 3mm
#let PAGE = TRIM + 2 * SANGRIA // 21.1cm
#let SLUG = "@@SLUG@@"
#let ILUS-DIR = "../ilustracoes/"

#let MARGEM-MIOLO = (inside: 24mm, outside: 18mm, top: 18mm, bottom: 22mm)
#let MARGEM-APARATO = (inside: 22mm, outside: 16mm, top: 16mm, bottom: 18mm)

// --- 1. PALETA (guia-de-estilo.md §2) — herdada do livro 1 ---
#let TERRACOTA = rgb("#C1440E")
#let TERRACOTA-ESCURA = rgb("#8C3410")
#let NEGRO-VERNIZ = rgb("#1B1613")
#let OCRE = rgb("#C88A3D")
#let CREME = rgb("#EDD9B4")
#let PAPEL = rgb("#F6EFE2")

// --- 2. TIPOGRAFIA SERIAL ---
#let FONTE-DISPLAY = "Libertinus Serif"
#let FONTE-CORPO = "DejaVu Sans"

#set text(font: FONTE-CORPO, size: 14pt, lang: "pt", region: "BR", fill: NEGRO-VERNIZ)
#set par(leading: 0.38em, justify: true, first-line-indent: 0pt, spacing: 0.4em)
#set page(width: PAGE, height: PAGE, fill: PAPEL, margin: MARGEM-MIOLO, numbering: none)

// --- 3. FUNÇÕES DA SÉRIE ---

// 3.1 Full-bleed: usa o PNG se existir; senão desenha encaixe de produção nomeado.
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
            #text(size: 8pt)[(#label · producao/#SLUG/ilustracoes/)]
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

// 3.2 Vinheta: reserva de espaço DENTRO da página de texto (altura fixa, contada
//     na ocupação). É o mecanismo da vinheta obrigatória da pele do Leão (cap. 6).
#let VINHETA-H = 32mm
#let vinheta(id, label, desc, altura: VINHETA-H) = {
  v(5pt)
  let caminho = ILUS-DIR + id + ".png"
  if imagens-disponiveis.at(id, default: false) {
    block(width: 100%, height: altura, clip: true, stroke: 0.6pt + OCRE)[
      #image(caminho, width: 100%, height: altura, fit: "cover")
    ]
  } else {
    block(width: 100%, height: altura, fill: CREME, stroke: (dash: "dashed", paint: TERRACOTA, thickness: 1pt), inset: 8pt)[
      #set text(fill: TERRACOTA-ESCURA, font: FONTE-CORPO)
      #align(center + horizon)[
        #text(size: 9pt, weight: "bold")[ESPAÇO RESERVADO — VINHETA]
        #v(3pt)
        #text(size: 10.5pt, weight: "bold")[#(id + ".png")]
        #v(2pt)
        #text(size: 8pt)[(#label · producao/#SLUG/ilustracoes/)]
        #v(4pt)
        #text(size: 8.5pt)[#desc]
      ]
    ]
  }
  v(5pt)
}

// 3.3 Abertura de capítulo
#let chapter-title(numero: 0, titulo: "") = {
  line(length: 100%, stroke: 1.4pt + TERRACOTA)
  v(1pt)
  line(length: 100%, stroke: 0.6pt + OCRE)
  v(6pt)
  text(font: FONTE-DISPLAY, size: 10pt, fill: OCRE, tracking: 1.5pt)[CAPÍTULO #numero]
  v(2pt)
  text(font: FONTE-DISPLAY, size: 19pt, weight: "bold", fill: TERRACOTA-ESCURA)[#titulo]
  v(2pt)
  line(length: 22%, stroke: 1pt + TERRACOTA)
  v(8pt)
}

// 3.4 Box "Você sabia?"
#let voce-sabia(body) = {
  v(6pt)
  block(width: 100%, fill: CREME, stroke: 1pt + OCRE, radius: 3pt, inset: 8pt)[
    #text(font: FONTE-DISPLAY, size: 12pt, weight: "bold", fill: TERRACOTA-ESCURA)[Você sabia?]
    #v(2pt)
    #set text(size: 10.5pt)
    #set par(leading: 0.4em, spacing: 0.3em)
    #body
  ]
}

// 3.5 Página de aparato (9,5/12 pt, 2 colunas)
#let pagina-aparato(titulo, body) = {
  pagebreak(weak: true)
  set page(margin: MARGEM-APARATO, numbering: none)
  set text(size: 9.5pt)
  set par(leading: 0.26em, justify: true, spacing: 0.28em)
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

// ============================================================================
// 4. PRÉ-TEXTO (pp. 1–6) — mapa de páginas do livro-spec §Contagem de páginas
// ============================================================================

// ---- p.1 · Falsa folha ----
#align(center + horizon)[
  #text(font: FONTE-DISPLAY, size: 15pt, fill: OCRE, tracking: 3pt)[ERA UMA VEZ UM MITO]
  #v(30pt)
  #line(length: 18%, stroke: 0.8pt + TERRACOTA)
]
#pagebreak(weak: true)

// ---- p.2 · Verso da falsa folha ----
#align(center + horizon)[
  #box(width: 60%, height: 4pt, fill: none, stroke: (bottom: 1pt + OCRE))
]
#pagebreak(weak: true)

// ---- p.3 · Folha de rosto — com a TARJA DE RECORTE de spin-off ----
#align(center + horizon)[
  #block(width: 92%, fill: CREME, stroke: (top: 1pt + TERRACOTA, bottom: 1pt + TERRACOTA), inset: 6pt)[
    #text(font: FONTE-DISPLAY, size: 9pt, fill: TERRACOTA-ESCURA, tracking: 1.6pt)[@@TARJA@@]
  ]
  #v(10pt)
  #text(font: FONTE-DISPLAY, size: 12pt, fill: OCRE, tracking: 2pt)[@@SERIAL_UP@@]
  #v(6pt)
  #line(length: 14%, stroke: 0.8pt + TERRACOTA)
  #v(26pt)
  #text(font: FONTE-DISPLAY, size: 30pt, weight: "bold", fill: TERRACOTA-ESCURA)[@@TITULO@@]
  #v(30pt)
  #text(size: 12pt)[@@SUBTITULO@@]
  #v(12pt)
  #text(size: 11pt, style: "italic", fill: TERRACOTA-ESCURA)[Do lado de dentro da porta.]
  #v(40pt)
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
*@@TITULO@@* \
Coleção "Era Uma Vez um Mito" · *@@SERIAL@@ — Histórias de dentro* \
(spin-off de aprofundamento da Grécia; não recebe número da linha principal)

#v(8pt)
Texto recontado a partir do enredo documentado de fontes antigas em domínio público
(ver p. 43). Nenhuma linha traduzida de edição protegida.

#v(8pt)
*Disclosure de inteligência artificial.* As ilustrações deste livro foram criadas com
auxílio de inteligência artificial generativa, sob direção de arte, curadoria e aprovação
humanas. O texto foi escrito e revisado com apoio de ferramentas de IA, a partir do enredo
documentado das fontes antigas citadas na p. 43, sob decisão editorial humana.

#v(8pt)
Trim: 20,5 × 20,5 cm · Miolo: @@NPP@@ páginas · Diagramação: Typst.

#v(8pt)
#text(size: 8.5pt, fill: TERRACOTA-ESCURA)[
  ⚠️ Pendência de gate: dados de catalogação (ISBN/CIP) e a redação jurídica final desta
  página aguardam decisão do humano (livro-spec, "Direitos & disclosure").
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
@@SUMARIO@@
#set text(size: 14pt)
#pagebreak(weak: true)

// ---- p.6 · Dedicatória + nota de origem ----
#align(center + horizon)[
  #box(width: 80%)[
    #set align(center)
    #text(style: "italic", size: 13pt)[Para quem já pediu "de novo" antes de o livro fechar.]
    #v(30pt)
    #line(length: 18%, stroke: 0.8pt + OCRE)
    #v(20pt)
    #text(size: 11pt)[
      Estas histórias vêm de poetas com nome e data — Hesíodo, Apolodoro, Apolônio de Rodes,
      Diodoro, Píndaro, Virgílio —, que contaram cada um à sua maneira, muitos séculos atrás.
      Este livro reconta o enredo deles para ler em voz alta hoje; o que foi escolhido, o que
      foi recusado e o que é invenção nossa está na página 43.
    ]
  ]
]
#pagebreak(weak: true)

// ============================================================================
// 5. OS OITO CAPÍTULOS (pp. 7–40) — 7 específicos de 4 pp + geral de 6 pp
// ============================================================================

'''

TAIL = r'''
// ============================================================================
// 6. APARATO PÓS-TEXTUAL (pp. 41–46)
// ============================================================================

// ---- pp. 41–42 · Glossário ----
#pagina-aparato("Glossário", [
  _Nomes, grafia, transliteração e palavras difíceis do livro, em ordem alfabética.
  Um termo, um verbete (livro-spec R5.2)._

@@GLOSSARIO@@
])

// ---- p. 43 · De onde vêm estas histórias ----
// Encaixe de folha: p. 43 é RECTO (ímpar) e sua página de frente (p. 42) é o fim do
// glossário — aparato adulto, não arte infantil. O destino da Esfinge, declarado aqui
// em texto explícito, não fica exposto de frente para página ilustrada.
#pagina-aparato("De onde vêm estas histórias", [
@@FONTES@@
])

// ---- pp. 44–45 · Perguntas que as crianças fazem ----
#pagina-aparato("Perguntas que as crianças fazem", [
@@PERGUNTAS@@
])

// ---- p. 46 · Colofão (+ bibliografia PT-BR e crédito de acervo — descidos da p. 43) ----
#set text(size: 10pt)
#set par(leading: 0.62em)
#v(14pt)
#text(font: FONTE-DISPLAY, size: 14pt, weight: "bold", fill: TERRACOTA-ESCURA)[Colofão]
#v(8pt)
Composto em Typst, nas famílias #FONTE-DISPLAY (títulos) e #FONTE-CORPO (texto corrido).
Corpo do miolo: 14/21 pt · Corpo do aparato: 9,5/12 pt, duas colunas.
Trim 20,5 × 20,5 cm, sangria 3 mm. Paleta e ilustrações: cerâmica ática figurada fundida a
Mucha/aquarela (ver guia-de-estilo.md).

#v(6pt)
#text(font: FONTE-DISPLAY, size: 11pt, weight: "bold", fill: TERRACOTA-ESCURA)[Para ler mais, em português]
#v(3pt)
#text(size: 9pt)[
  ⚠️ *Espaço reservado — pendência vinculante.* A bibliografia PT-BR recomendada (Hesíodo na
  tradução de Jaa Torrano; Apolodoro; Apolônio de Rodes) e o *crédito de acervo das imagens de
  referência* (vasos áticos em domínio público / CC0) descem da p. 43 para cá, conforme o
  precedente do livro 1. Redação final aguarda o `mito-editor`.
]

#v(6pt)
#text(size: 8.5pt, fill: TERRACOTA-ESCURA)[
  ⚠️ Pendência: papel, gráfica, tiragem e perfil ICC — decisão do humano, fora desta fase.
]
#set text(size: 14pt)
#set par(leading: 0.38em)
#pagebreak(weak: true)

// ---- pp. 47–48 · Guardas finais ----
#align(center + horizon)[
  #box(width: 40%, height: 3pt, fill: none, stroke: (bottom: 0.6pt + OCRE))
]
#pagebreak(weak: true)
#align(center + horizon)[
  #text(font: FONTE-DISPLAY, size: 11pt, fill: OCRE, tracking: 2pt)[FIM]
]
'''

# ---------------------------------------------------------------- montagem
def render_chapter(fn, num, tit, pp, imgs):
    txt, box = chapter(fn)
    out = ["// ---- Capítulo %d · %s (pp. %s) ----" % (num, tit, pp)]
    out.append('#chapter-title(numero: %d, titulo: "%s")' % (num, tit))
    inline = {}
    tail = []
    for idx, tipo, id_, lab, desc in imgs:
        if idx is None:
            tail.append((tipo, id_, lab, desc))
        elif idx == -1:
            tail.append((tipo, id_, lab, desc))
        else:
            inline.setdefault(idx, []).append((tipo, id_, lab, desc))
    for i, p in enumerate(txt):
        for tipo, id_, lab, desc in inline.get(i, []):
            out.append(emit_img(tipo, id_, lab, desc))
        out.append(md2typ(p))
        out.append("")
    out.append("#voce-sabia[")
    out.append("\n\n".join(md2typ(b) for b in box))
    out.append("]")
    for tipo, id_, lab, desc in tail:
        out.append(emit_img(tipo, id_, lab, desc))
    out.append("#pagebreak(weak: true)")
    out.append("")
    return "\n".join(out)

# Alturas provadas por composição (R6.2): com v1=24mm + v2=44mm o cap. 6 fecha
# em 4 pp (27-30). Acima de ~70mm somados, o capítulo estoura para 5 pp.
ALTURAS = {"06v1-as-duas-bocas": "24mm", "06v2-a-pele": "44mm",
           "08c-a-caverna-final": "44mm"}

def emit_img(tipo, id_, lab, desc):
    if tipo == "full":
        return '#fullbleed("%s", "%s", "%s")' % (id_, lab, desc)
    alt = ALTURAS.get(id_)
    extra = (', altura: %s' % alt) if alt else ''
    return '#vinheta("%s", "%s", "%s"%s)' % (id_, lab, desc, extra)

def aparato_block(path, drop_head=True):
    s = open(path, encoding="utf-8").read()
    # tudo depois do primeiro '---' isolado, até o '---' final de nota
    parts = re.split(r"^---\s*$", s, flags=re.M)
    body = parts[1] if len(parts) > 1 else s
    out = []
    for p in paras(body):
        if p.startswith(">"):
            continue
        if re.match(r"^###\s", p):
            out.append("  #text(font: FONTE-DISPLAY, weight: \"bold\", size: 10.5pt, fill: TERRACOTA-ESCURA)[" + md2typ(re.sub(r"^###\s*", "", p)) + "]")
        else:
            out.append("  " + md2typ(p))
    return "\n\n".join(out)

def main():
    caps = "\n".join(render_chapter(*c) for c in CAPS)
    sumario = "\n".join('#sumario-item("%s", "%s")' % s for s in SUMARIO)
    def sub(t, d):
        for k, v in d.items():
            t = t.replace("@@" + k + "@@", str(v))
        return t
    head = sub(HEAD, dict(SERIAL=SERIAL, SERIAL_UP=SERIAL.upper(), TITULO=TITULO,
                          SUBTITULO=SUBTITULO, TARJA=TARJA, SLUG=SLUG,
                          SUMARIO=sumario, NPP=N_PAGINAS))
    tail = sub(TAIL, dict(
        GLOSSARIO=aparato_block(os.path.join(APA, "glossario.md")),
        FONTES=aparato_block(os.path.join(APA, "de-onde-vem.md")),
        PERGUNTAS=aparato_block(os.path.join(APA, "perguntas.md")),
    ))
    open(os.path.join(BASE, "miolo.typ"), "w", encoding="utf-8").write(head + caps + tail)
    print("miolo.typ gerado")

if __name__ == "__main__":
    main()
