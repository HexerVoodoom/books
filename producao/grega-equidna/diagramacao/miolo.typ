// ============================================================================
// Era Uma Vez um Mito — Grécia · I · Equidna e as portas do mundo
// GERADO por gerar_miolo.py a partir de ../capitulos/*.md — não editar à mão.
// mito-diagramador · Fase 4 (antecipada: as 22 peças de arte ainda não existem;
// toda posição de imagem sai como ENCAIXE DE PRODUÇÃO nomeado.)
// ============================================================================

#import "imagens-disponiveis.typ": imagens-disponiveis

// --- 0. CONSTANTES FÍSICAS (pipeline-impressao.md) — bloco serial intocado ---
#let TRIM = 20.5cm
#let SANGRIA = 3mm
#let PAGE = TRIM + 2 * SANGRIA // 21.1cm
#let SLUG = "grega-equidna"
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
    #text(font: FONTE-DISPLAY, size: 9pt, fill: TERRACOTA-ESCURA, tracking: 1.6pt)[ERA UMA VEZ UM MITO · GRÉCIA · HISTÓRIAS DE DENTRO]
  ]
  #v(10pt)
  #text(font: FONTE-DISPLAY, size: 12pt, fill: OCRE, tracking: 2pt)[GRÉCIA · I]
  #v(6pt)
  #line(length: 14%, stroke: 0.8pt + TERRACOTA)
  #v(26pt)
  #text(font: FONTE-DISPLAY, size: 30pt, weight: "bold", fill: TERRACOTA-ESCURA)[Equidna e as portas do mundo]
  #v(30pt)
  #text(size: 12pt)[Oito histórias gregas recontadas para ler em voz alta]
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
*Equidna e as portas do mundo* \
Coleção "Era Uma Vez um Mito" · *Grécia · I — Histórias de dentro* \
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
Trim: 20,5 × 20,5 cm · Miolo: 48 páginas · Diagramação: Typst.

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
#sumario-item("7", "1 · A caverna e as portas")
#sumario-item("11", "2 · O dragão que nunca dormia")
#sumario-item("15", "3 · Órtro e o gado vermelho")
#sumario-item("19", "4 · Ladon e o gigante que segurou o céu")
#sumario-item("23", "5 · A pergunta da Esfinge")
#sumario-item("27", "6 · O leão de pele impossível")
#sumario-item("31", "7 · Cérbero volta para casa")
#sumario-item("35", "8 · Tifão, o pai de tudo")
#sumario-item("41", "Glossário")
#sumario-item("43", "De onde vêm estas histórias")
#sumario-item("44", "Perguntas que as crianças fazem")
#sumario-item("46", "Colofão")
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

// ---- Capítulo 1 · A caverna e as portas (pp. 7–10) ----
#chapter-title(numero: 1, titulo: "A caverna e as portas")
Toda coisa preciosa do mundo antigo tinha uma porta — e em cada porta, alguém da família de Equidna (Ékhidna).

Comecemos pela caverna.

Ela ficava funda, debaixo de uma pedra oca, longe dos deuses e longe dos homens. Foram os deuses que deram aquela casa a Equidna, e era uma casa gloriosa. Metade mulher, de olhos vivos e faces bonitas; metade serpente enorme, de pele malhada. Não parecia com gente nem parecia com deus. Parecia com ela mesma.

Ali dentro, com Tifão, a família foi crescendo.

E o mundo, lá fora, estava cheio de coisas preciosas sem ninguém na porta. Coisas que qualquer um podia levar, num mundo que ainda estava sendo arrumado.

Órtro foi o primeiro a ir. No fim do mar havia um gado vermelho, o gado de Gerião, pastando sem ninguém por perto. Passou a ter alguém.

Uma porta ocupada.

Depois foi Cérbero. O mundo de baixo tinha um portão, e aquele portão era o mais sério de todos, e estava aberto para qualquer um. Passou a ter alguém.

O gado. O portão. Duas portas ocupadas.

Depois foi a Hidra, até um pântano chamado Lerna, de água escura e junco alto, que ninguém guardava. Passou a ter alguém.

O gado. O portão. O pântano. Três portas ocupadas.

Depois foi a Quimera, para as montanhas da Lícia, onde o vento chega quente e a rocha é vermelha, e onde não havia guarda nenhuma. Passou a ter alguém.

O gado. O portão. O pântano. A montanha. Quatro portas ocupadas.

E depois foi Ladon, até o lugar mais longe que existe, onde uma árvore dá maçãs de ouro. Ninguém tomava conta daquela árvore. Passou a ter alguém.

O gado. O portão. O pântano. A montanha. A árvore. Cinco portas ocupadas.

Cinco lugares do mundo que antes eram só lugares, e que agora tinham nome, e que agora tinham quem ficasse. Um pastor podia apontar para o fim do mar e dizer: ali. Um viajante podia apontar para a montanha vermelha e dizer: ali também.

E a caverna?

A caverna também era uma coisa preciosa. Tinha o teto alto e o eco comprido. Tinha a pedra por cima e a terra em volta. Tinha a boca escura por onde entrava, de manhã, um traço de luz que atravessava o chão inteiro e ia embora à tarde.

Equidna ficou onde estava. Não estava esperando ninguém: estava guardando. A caverna era dela — os deuses tinham dado —, e quem cuida da porta de uma casa dessas é quem mora nela.

O gado. O portão. O pântano. A montanha. A árvore. A caverna.

Seis portas. Em cada uma, alguém.

E o mundo não parou por aí. Mais tarde vieram, pela linha de Órtro, mais dois. Uma estrada ganhou porta. Um vale ganhou porta.

Neste livro você vai encontrar vários deles, cada um no lugar que lhe coube. Alguns são enormes. Alguns têm mais bocas do que se consegue contar. Um deles faz uma pergunta.

E, se algum dia alguém lhe disser que eram todos monstros, você já vai saber a única coisa que o poema mais antigo diz sobre eles: onde ficavam.

#voce-sabia[
A caverna de Equidna não era um esconderijo: era *presente*. O poeta grego *Hesíodo* escreveu, há quase três mil anos, que "os deuses lhe destinaram uma casa gloriosa para morar" (_Teogonia_, verso 303). Na mesma passagem ele conta outra coisa: que ela *guarda*. A primeira daquela família também era uma guardiã.

_(Fonte: Hesíodo, Teogonia 303–304 — dossiê §5, fatos 1 e 2.)_
]
#fullbleed("01-equidna-a-caverna-e-as-portas", "p. 10", "Equidna na boca da caverna, depois das partidas; o mapa das portas ao longe.")
#pagebreak(weak: true)

// ---- Capítulo 2 · O dragão que nunca dormia (pp. 11–14) ----
#chapter-title(numero: 2, titulo: "O dragão que nunca dormia")
Longe, num lugar chamado Cólquida, havia um bosque escuro à beira de um rio. No meio do bosque havia um carvalho. E pendurado no carvalho, o Velo de Ouro brilhava como o clarão de uma manhã que nunca chegava.

Em volta do carvalho, enrolado, estava o dragão.

Ele guardava aquele ouro havia tanto tempo que ninguém na Cólquida se lembrava do começo. A história dele cabe em três frases:

Nunca fechou os olhos.

Nunca deitou a cabeça.

Nunca soltou os anéis.

De dia era assim. De noite era igual. O sol passava por cima das folhas, ia embora, voltava. As estações trocavam de lugar. A água do rio subia no inverno e baixava no verão. E nada mudava: os olhos abertos, a cabeça alta, os anéis apertados em volta da árvore.

Uma noite inteira acordado já é muito tempo, numa festa ou numa viagem, e mesmo assim vem o dia seguinte e a pessoa dorme. Com ele não vinha. Nunca é outra coisa.

Até que uma noite duas pessoas vieram pelo caminho, pisando devagar nas folhas.

O dragão ouviu antes de ver — ele sempre ouvia antes. Esticou o pescoço comprido para fora do escuro e soltou um assobio tão grande que o som foi correndo pela margem do rio, atravessou o bosque inteiro e voltou.

Ele não atacou. Ele avisou.

Jasão parou onde estava. Estava com medo, e não escondeu.

Medeia não parou.

Ela era uma moça, e chegou perto do bicho, e fez a única coisa que ninguém tinha feito com ele em toda a vida dele.

Ela cantou.

Cantou baixinho, chamando o Sono, pedindo que viesse. Não pediu que o dragão fosse embora. Não pediu que ele largasse a árvore. Não mandou nele. Pediu só o sono — que é o que se pede para quem está acordado há tempo demais.

Era uma canção de ninar, cantada para quem nunca tinha dormido.

E o corpo enorme começou a afrouxar. Devagar. Anel por anel.

Então ela cortou um raminho de zimbro, molhou no que trazia num pote e passou nos olhos dele. E, enquanto passava, cantou outra vez.

O cheiro subiu pela cabeça do dragão.

E os olhos fecharam.

A mandíbula desceu até tocar o chão e ficou ali. Os anéis foram se desenrolando para trás, longe, para dentro da mata, até onde ninguém mais enxergava o fim.

Jasão tirou o Velo do carvalho.

Medeia não saiu de perto. Ficou com a mão na cabeça daquele bicho, cantando ainda — depois de ele já estar dormindo, depois de já ter dado certo. A canção não parou quando o trabalho acabou. Continuou mais um pouco, do jeito que se faz.

Aí Jasão a chamou, e ela veio. Os dois foram embora pelo mesmo caminho por onde tinham chegado, com o ouro, rio abaixo, até o barulho dos passos sumir.

O Velo foi embora.

O dragão ficou.

Ninguém encostou uma arma nele. Ninguém o feriu. Naquela noite, no bosque escuro da Cólquida, o que aconteceu com o dragão que nunca dormia foi só isto:

fechou os olhos,

deitou a cabeça,

soltou os anéis.

#voce-sabia[
Em grego, o dragão da Cólquida tinha um apelido: _áypnos_ — "sem sono". Não era que ele resolvesse ficar acordado. Ele não conseguia fechar os olhos, nunca, de jeito nenhum. Por isso o que Medeia levou até lá não foi uma espada: foi um raminho molhado, para passar exatamente nos olhos dele.

_(Fonte: Apolônio de Rodes, Argonáutica IV — dossiê, §4, candidato 1.)_
]
#fullbleed("02-dragao-da-colquida", "p. 14", "O dragão do bosque da Cólquida e o Velo de Ouro; Medeia canta o sono.")
#pagebreak(weak: true)

// ---- Capítulo 3 · Órtro e o gado vermelho (pp. 15–18) ----
#chapter-title(numero: 3, titulo: "Órtro e o gado vermelho")
O que Órtro (Órthros) guardava não era um tesouro.

Longe, na ponta mais a oeste do mar — tão a oeste que era ali que o sol ia se deitar —, havia uma ilha chamada Eritia. Nela pastava um gado vermelho. Vermelho mesmo: cor de fim de tarde, o rebanho inteiro.

O gado era de Gerião, e Gerião quase nunca aparecia.

Quem aparecia todo dia eram dois. Euritião, o boieiro, com o cajado no ombro. E Órtro, o cão de duas cabeças.

De manhã, as duas cabeças acordavam ao mesmo tempo. Uma olhava o caminho da água. A outra olhava o caminho do mato. Depois trocavam, só para variar.

— Bom dia — dizia Euritião.

Órtro batia o rabo. Era o que ele tinha para responder.

Então o rebanho descia para beber. Órtro ia na frente. Sempre na frente, porque é na frente que ficam as surpresas. Contava as vacas com uma cabeça enquanto a outra media o mar. Se uma vaca se enfiava entre as pedras, ele ia buscar. Se um bezerro ficava para trás, ele ficava para trás junto.

Ao meio-dia, quando o calor apertava, ele deitava na sombra. Se você tem um cachorro em casa, repare nele dormindo: mesmo dormindo, ele guarda um ouvido acordado. Órtro tinha dois ouvidos acordados e quatro olhos que fechavam de dois em dois.

De tarde, o rebanho subia de novo. Euritião contava. Órtro conferia a conta. Nunca faltava nenhuma.

— Está tudo aí — dizia Euritião, que já sabia.

Aí o boieiro ia dormir, e Órtro ficava mais um pouco na porteira, olhando o escuro de um lado e o mar do outro, até o mar também escurecer.

E no dia seguinte, tudo outra vez. E no outro. E no outro.

Havia portas muito mais bonitas espalhadas pelo mundo. Havia um velo de ouro. Havia maçãs de ouro. Havia o portão do mundo de baixo. Órtro tinha vaca. Vaca que muge, vaca que atola, vaca que come capim e volta pelo mesmo caminho.

Era a coisa mais comum que alguém daquela família tinha para guardar. E ele guardava todo dia, sem pular nenhum.

Talvez seja por isso que ninguém imaginou que alguém fosse vir buscar.

Héracles (Hēraklês) chegou como o inverno chega. Atravessou a água, pisou na areia de Eritia e foi andando na direção do gado vermelho, com a clava no ombro.

Órtro sentiu antes de ver. As duas cabeças se levantaram juntas.

Órtro correu para a frente do rebanho, como fazia todo dia. Só que dessa vez foi o último dia — e na caverna longe dali, Equidna chorou o seu primeiro filho.

Depois disso o gado vermelho atravessou o mar, e em Eritia não houve mais gado para contar de tarde.

Mas a caverna continuou aberta.

Ela continua aberta até a última página deste livro. A mãe está lá dentro, e a porta não se fechou.

E do outro lado do mundo, lá no fundo do mundo de baixo, naquele mesmo dia havia outro cão daquela mesma família parado na porta dele, com as orelhas viradas para fora e o pelo cheirando a fumaça.

Esse aí você ainda vai encontrar, mais para a frente.

E esse aí volta para casa.

#voce-sabia[
Órtro é o *primeiro*. No catálogo do poeta Hesíodo — a lista mais antiga que temos dessa família —, quando chega a vez de nomear aquela família, o nome que aparece antes de todos os outros é o dele: o cão de Gerião. O guardião de vaca vem antes do guardião do portão do mundo de baixo.

_(Fonte: Hesíodo, Teogonia 309 — dossiê §9, fato 1.)_
]
#fullbleed("03-ortro-o-turno-de-trabalho", "p. 18", "Órtro em turno de trabalho no gado vermelho de Eritia. Sem Héracles em quadro.")
#pagebreak(weak: true)

// ---- Capítulo 4 · Ladon e o gigante que segurou o céu (pp. 19–22) ----
#chapter-title(numero: 4, titulo: "Ladon e o gigante que segurou o céu")
No fim do mundo, muito ao norte de tudo, havia uma árvore com maçãs de ouro.

A árvore ficava num jardim, e o jardim ficava aos pés de um gigante. O gigante se chamava Atlas, e Atlas segurava o céu. Não um pedaço do céu: o céu inteiro, redondo e cheio de estrelas, apoiado nos ombros dele desde sempre.

Dentro da árvore morava um dragão que não podia morrer.

Ele falava. Falava com muitas vozes diferentes ao mesmo tempo, e o murmúrio saía de dentro das folhas como a água sai de dentro da pedra. Ninguém sabia quantas vozes eram. Ninguém nunca contou.

Um rei chamado Euristeu mandava em Héracles, e Euristeu tinha mandado buscar três daquelas maçãs. Héracles não podia voltar sem elas.

Então foi procurar Prometeu, que era o mais inteligente de todos, e perguntou como se entrava naquele jardim.

— Não entre — disse Prometeu. — Mande Atlas.

— E eu faço o quê, enquanto ele vai?

— Você segura o céu.

Héracles foi até o gigante e ofereceu a troca. Atlas olhou para ele. Olhou para os próprios ombros. Depois passou o céu para as costas do herói, devagar, como quem entrega uma coisa que pode quebrar.

E foi embora assobiando, de mãos livres pela primeira vez em toda a sua vida.

No jardim, as maçãs foram colhidas e entregues a ele. Nada mais aconteceu ali. As folhas continuaram murmurando com muitas vozes, e ninguém as respondeu.

O dragão viu o gigante chegar. Viu o gigante sair. Não se mexeu.

Atlas voltou com três maçãs de ouro na mão.

— Pronto — disse ele. — Estão aqui.

— Ótimo — disse Héracles, debaixo do céu.

— Sabe de uma coisa? — disse Atlas. — Você já fez demais. Eu mesmo levo as maçãs até Euristeu. Fica bem mais fácil para você.

Héracles não respondeu na hora.

O céu pesava. Pesava tanto que os joelhos dele afundavam no chão como afundam num barro molhado. E o gigante estava ali parado, de braços soltos, com três maçãs na mão e a boa vontade toda estampada na cara.

— Boa ideia — disse Héracles. — Só um instante, antes de você ir.

— Um instante — repetiu Atlas.

— É que eu não vou aguentar assim. Eu preciso pôr uma almofada na cabeça, senão isto me machuca. Segura só enquanto eu ajeito.

Foi o pedido mais razoável do mundo. Qualquer um teria dito que sim.

E Atlas disse que sim.

Atlas abaixou-se e pôs as três maçãs no chão, ele mesmo, com todo o cuidado, para ficar com as duas mãos livres. Depois tomou o céu de volta.

Héracles ajeitou a almofada. Pegou as maçãs do chão. Disse tchau.

E assim o herói mais forte da Grécia atravessou o fim do mundo, chegou à árvore mais bem guardada que já existiu, e voltou com as maçãs sem tocar num único galho.

Euristeu recebeu as três maçãs de ouro e devolveu-as a Héracles, porque nem um rei consegue ficar com uma coisa dessas.

Aí Atena veio buscá-las. Aquelas maçãs não podiam ficar em lugar nenhum do mundo — nem numa mão, nem numa mesa, nem num palácio. Ela as levou de volta para o fim do mundo, para o jardim aos pés do gigante, e pendurou as três de novo na árvore.

Lá dentro, as folhas ainda murmuravam com muitas vozes.

#voce-sabia[
Héracles não escolheu nenhum destes trabalhos. Ele nem se chamava Héracles: era Alcides. Um dia foi a Delfos perguntar onde deveria morar, e o oráculo respondeu com uma ordem — morar em Tirinto, servir o rei Euristeu por doze anos e cumprir os trabalhos que lhe fossem impostos. Foi o oráculo que lhe deu o nome novo. E disse que, no fim de tudo, ele não morreria mais.

_(Apolodoro, Biblioteca 2.4.12)_
]
#fullbleed("04-ladon-e-o-pedido-da-almofada", "p. 22", "O pedido da almofada: Atlas, o céu e a árvore das maçãs de ouro.")
#pagebreak(weak: true)

// ---- Capítulo 5 · A pergunta da Esfinge (pp. 23–26) ----
#chapter-title(numero: 5, titulo: "A pergunta da Esfinge")
Isso aconteceu numa estrada.

A estrada subia até a cidade de Tebas, e era a única. Quem quisesse entrar passava por ali. Quem quisesse sair, também.

E ninguém passava.

No meio do caminho havia uma pedra alta. Em cima da pedra havia alguém sentado.

Rosto de mulher. Peito, patas e cauda de leoa. E asas: asas de ave, grandes, abertas ao sol.

Era a Esfinge (Sphínx), alguém da família de Equidna, pela linha de Órtro. Foi Hera quem a mandou para lá.

Ela não tinha corrente. Não tinha tranca. Não tinha portão de ferro.

#fullbleed("05-a-pergunta-da-esfinge", "p. 24", "A pergunta, na pedra alta sobre a estrada de Tebas. A resposta vira a página.")
Ela tinha uma pergunta.

Quem chegava ouvia a pergunta. Quem não sabia a resposta não passava. E a cidade inteira ficou presa do lado de dentro, com uma estrada na frente e ninguém andando nela.

Passou tempo assim. As feiras de Tebas ficaram sem as coisas que vinham de longe. As cartas não chegavam. Os parentes que moravam do outro lado do monte continuaram morando do outro lado do monte. Uma cidade inteira parada por causa de uma frase.

Até que um viajante subiu o caminho e parou embaixo da pedra. O nome dele era Édipo.

A Esfinge abriu as asas. E perguntou:

— Tem uma voz só. De um jeito anda com quatro pés. De outro jeito anda com dois. E de outro jeito anda com três. O que é?

_(virada de página)_

Era difícil mesmo.

Todo mundo que subiu aquela estrada ficou parado ali embaixo com essa pergunta na cabeça. Uma voz só, e três jeitos de andar. Quatro pés, dois pés, três pés.

Édipo ficou parado também. Olhou a pedra. Olhou a cidade lá em cima, com os muros e os telhados. Olhou o chão da estrada, que estava cheio de marcas de pé de gente que tinha chegado até ali e voltado.

Depois olhou as próprias pernas.

E disse:

— É a gente.

E explicou devagar, porque a Esfinge estava escutando:

— Quando é bebê, anda de quatro, engatinhando. Quando cresce, anda de dois. E quando fica bem velhinho, anda de dois e mais uma bengala. A bengala é o terceiro pé.

Uma voz só. Três jeitos de andar. O bebê, a pessoa crescida e o avô com a bengala — e os três são a mesma pessoa, a vida inteira.

Aquela era a pergunta que ninguém tinha conseguido responder: _o que é uma pessoa?_

E a resposta estava ali o tempo todo. Não estava escondida no fundo do mar, nem no alto de uma montanha, nem dentro de um palácio trancado. Estava de pé no meio da estrada, com dois pés, esperando para passar.

A Esfinge escutou até o fim.

Esta porta não abriu com força, nem com música, nem com uma boa conversa. Abriu porque alguém soube.

E a estrada abriu.

No dia seguinte havia gente nela outra vez. Carroças subindo, cabras descendo, um homem carregando um pote de barro, duas crianças correndo na frente da mãe e voltando correndo para ela.

Cada um com o número de pés que sempre teve.

E ninguém que subiu por ali precisou responder mais nada.

#voce-sabia[
A pergunta não era dela. Apolodoro conta que a Esfinge aprendeu o enigma com as Musas — as deusas das canções e das histórias — e só depois foi sentar no alto da pedra. Ou seja: ela guardou a estrada de Tebas a vida inteira com uma pergunta emprestada. E era uma pergunta tão boa que a gente continua contando essa história até hoje.

_(Fonte: Apolodoro, _Biblioteca_ 3.5.8 — dossiê §5, fato 1.)_
]
#pagebreak(weak: true)

// ---- Capítulo 6 · O leão de pele impossível (pp. 27–30) ----
#chapter-title(numero: 6, titulo: "O leão de pele impossível")
Um rei mandou buscar uma pele.

O rei se chamava Euristeu, e não era ele que ia buscar. Era Héracles.

Não era uma pele qualquer. Era a pele do leão que morava no vale de Nemeia, entre colinas de capim curto, onde o vento não parava nunca. O vale era dele. Hera tinha escolhido aquele vale para ele.

E aquele leão vinha da mesma família da caverna, pela linha de Órtro.

Ele tinha uma coisa que nenhum outro bicho do mundo tinha. A pele dele não deixava nada entrar.

Nada mesmo. Nem ponta, nem pedra, nem ferro. Quem batia naquela pele era quem se machucava.

Repare no tamanho do problema. O rei tinha encomendado justamente a única coisa do mundo que ninguém conseguia tirar de lugar nenhum. Era como mandar alguém trazer um pedaço do vento, ou a sombra de uma pedra, ou o barulho de um rio. Só que o pedido tinha pelo e tinha dono, e o dono estava lá em cima, nas colinas, deitado no capim curto, olhando a estrada.

#fullbleed("06-o-leao-antes", "p. 28", "O leão vivo, no capim curto das colinas de Nemeia, olhando a estrada.")
No caminho, Héracles parou numa cidade chamada Cleonas, na casa de um homem que trabalhava por dia e não tinha quase nada. O nome dele era Molorco. Molorco quis fazer uma oferta aos deuses ali mesmo, pelo hóspede.

— Espera trinta dias — disse Héracles.

Molorco não perguntou por quê. Molorco começou a contar. Um. Dois. Três.

No vale de Nemeia, Héracles encontrou o leão de longe e atirou uma flecha.

A flecha bateu na pele e caiu no chão, do jeito bobo que cai uma flecha que não serviu para nada.

Ele atirou outra. Caiu igual.

Então Héracles levantou a clava e foi andando na direção do leão.

E o leão fez o que qualquer bicho faz quando alguém grande vem vindo. Correu para casa.

A casa dele era uma caverna comprida nas colinas, com uma boca de cada lado — dava para entrar por uma e sair pela outra.

Héracles fechou uma das bocas da caverna e entrou pela outra.

#vinheta("06v1-as-duas-bocas", "vinheta 1 · p. 29", "A caverna passante vista de fora: uma boca entulhada, a outra aberta. A clava no chão.", altura: 24mm)
O que aconteceu lá dentro, o vale de Nemeia não viu — só ficou quieto.

Ele não usou a clava. Não usou flecha nenhuma. Não usou nada.

Longe dali, na caverna funda, Equidna virou a cabeça para o lado do vale. Ficou assim um tempo, com o traço de luz da manhã atravessando o chão inteiro.

Héracles saiu pela boca aberta e desceu as colinas devagar, porque o peso era grande, e foi até Cleonas.

Molorco tinha esperado trinta dias. Estava na porta, esperando o trinta.

Foi assim que a pele impossível saiu do vale de Nemeia.

Nada nunca tinha atravessado aquela pele — e nada nunca atravessou. Héracles pôs a pele em cima de si, e ela o cobria inteiro, do ombro até o pé, porque o leão era grande daquele tamanho.

#vinheta("06v2-a-pele", "vinheta 2 · p. 30 — OBRIGATÓRIA (decisão de gate)", "Héracles de costas descendo a colina, a pele como manto de corpo inteiro; Cleonas ao longe.", altura: 44mm)
E daquele dia em diante ela foi junto. Para o trabalho seguinte, e para o outro, e para o outro. Por todos os caminhos que ainda faltavam.

O rei tinha pedido uma pele, e recebeu uma pele.

A pele dele não parou mais.

#voce-sabia[
Um escritor romano chamado Higino contou este dia inteiro numa frase só: Héracles entrou naquela caverna *sem armas*. Guarde essa palavra. No capítulo que vem, no fundo do mundo de baixo, alguém vai fazer um pedido a Héracles — e o pedido vai ser exatamente esse: sem armas.

_(Fontes: Higino, _Astronomica_ 2.24 — "killed him, unarmed"; a condição do dono da casa, em Apolodoro 2.5.12.)_
]
#pagebreak(weak: true)

// ---- Capítulo 7 · Cérbero volta para casa (pp. 31–34) ----
#chapter-title(numero: 7, titulo: "Cérbero volta para casa")
O portão do mundo de baixo fica no fim de uma escada muito comprida.

Não tem tranca. Não precisa. Tem Cérbero (Kérberos).

Ele fica sentado ali, de frente para quem chega. É um cão enorme, com mais cabeças do que se consegue contar — algumas bem na frente, nítidas, e outras que se perdem no pelo e na sombra. Ao longo das costas, cabeças de serpentes de toda sorte. E a cauda dele é de dragão, e se mexe sozinha, com vontade própria.

Quando ele avisa, não late. Ressoa. A voz é de bronze.

Aquele portão já tinha ouvido música uma vez. Um homem chamado Orfeu desceu cantando, e o mundo de baixo inteiro ficou pasmo. As bocas de Cérbero ficaram abertas e paradas, sem som nenhum. Longe dali, uma roda que girava desde sempre parou de girar. Por um tempo, ninguém no mundo de baixo se mexeu.

Depois a música acabou, e cada coisa voltou para o lugar. E Cérbero continuou sentado no portão. É o que ele faz.

Um dia desceu a escada um homem com uma pele de leão nos ombros.

Desceu devagar, contando os degraus, porque no escuro não há muito mais o que fazer.

Héracles tinha uma lista de serviços para cumprir, e este era o último, e o que descia mais fundo: levar o cão do portão para mostrar a um rei chamado Euristeu — que estava lá em cima, e não tinha descido nenhum degrau.

Héracles foi falar com o dono da casa. E o dono da casa disse que sim, com uma condição.

— Pode levá-lo — disse. — Se conseguir segurá-lo sem usar nenhuma das armas que trouxe.

Héracles olhou para o arco. Olhou para a clava.

E largou as duas no chão.

Depois foi até o portão, de mãos vazias, e pôs os braços em volta da cabeça de Cérbero.

#fullbleed("07-cerbero-o-abraco-sem-armas", "p. 33", "O abraço sem armas, no portão do mundo de baixo. Arco e clava largados no chão.")
E não soltou.

A cauda de dragão mordeu. Ele não soltou. As serpentes das costas se levantaram todas de uma vez. Ele não soltou. O portão tremeu com a voz de bronze, e ele continuou ali, os ombros duros, o rosto encostado no pelo, sem bater, sem gritar, sem pegar nada do chão.

Ficou assim muito tempo. Tempo que ninguém mediu, porque lá embaixo não há dia nem noite para medir.

Até que o cão parou.

Subiram juntos a escada comprida. Lá em cima havia sol, e o cão do portão ficou de olhos apertados.

Euristeu olhou. Foi só isso que ele fez: olhou.

Então Héracles desceu a escada outra vez, com o cão do lado. Passaram pelo escuro, e pelos degraus, e pelo lugar quieto onde não havia ninguém. O cão ia na frente. Sabia o caminho melhor do que ele.

No fim da escada estava o portão, exatamente onde tinha ficado.

Héracles abriu os braços e soltou.

Cérbero deu três passos, virou-se para a frente e sentou. As orelhas baixaram devagar. A cauda de dragão se enroscou junto dos pés dele e ficou quieta.

E o portão do mundo de baixo tinha de novo o que sempre teve.

Héracles subiu a escada sozinho. O arco e a clava continuavam no chão, onde ele os tinha largado.

Não voltou para pegar.

#voce-sabia[
Ninguém nunca combinou quantas cabeças Cérbero tinha. Um poeta grego escreveu um número. Um poeta romano escreveu outro, muito maior. E Apolodoro escreveu outro, bem menor, mais as cabeças de serpente das costas. Cada poeta contou um número diferente, e nenhum bateu com o outro. É por isso que, neste livro, ninguém conta.

_(Fontes: Hesíodo, _Teogonia_ 312; Horácio, _Odes_ 2.13; Apolodoro 2.5.12.)_
]
#pagebreak(weak: true)

// ---- Capítulo 8 · Tifão, o pai de tudo (pp. 35–40) ----
#chapter-title(numero: 8, titulo: "Tifão, o pai de tudo")
Este livro começou numa caverna, e vai terminar nela. Mas falta o maior de todos.

Quando o céu já estava arrumado e os deuses já tinham tomado os seus lugares, a Terra teve o seu filho mais novo. O pai dele era Tártaro (Tártaros) — o lugar mais fundo que existe, mais fundo até que o mundo de baixo. E o filho se chamava Tifão (Typhôn).

Ele era enorme. Tinha as mãos fortes e os pés que não cansavam nunca. Dos ombros lhe nasciam cabeças de serpente, mais do que se consegue contar, de línguas escuras e trêmulas, e debaixo das sobrancelhas de cada uma faiscava fogo.

E cada cabeça tinha uma voz diferente.

Uma falava a língua dos deuses, e os deuses entendiam o que ela dizia. Uma mugia como touro bravo. Uma rugia como leão. Uma assobiava tão alto que as montanhas devolviam o assobio.

E uma — e o poema mais antigo faz questão de contar isto — gania como filhote de cachorro. Baixinho, do jeito que ganem os filhotes. O poeta escreveu que era uma maravilha de ouvir.

Todos os que saíram daquela caverna acabaram numa porta do mundo. Tifão, não. Tifão não quis uma porta. Tifão quis o céu inteiro.

#fullbleed("08a-tifao", "p. 36", "Tifão: mãos fortes, pés que não cansam, cabeças de serpente nos ombros (não contáveis).")
Zeus desceu do Olimpo. E depois daquele dia Tifão não subiu mais.

Ele ficou embaixo, no mais fundo de tudo, lá no Tártaro. Muito tempo depois, outro poeta, chamado Píndaro, disse onde exatamente: debaixo de uma montanha da Sicília, uma montanha que tem nome. Chama-se Etna.

A montanha está lá até hoje, e você pode ir ver. Ela esquenta. Solta fumaça pela boca de cima, e por dentro ferve devagar, como uma panela tampada que ninguém tira do fogo.

Os ventos de tempestade também vieram dele — esses que chegam de repente e viram os barcos. Só três não vieram: o vento do sul, o vento do norte e o vento claro do oeste. Esses três são de outra família.

Mas o retrato desta família não é esse.

Volte comigo até bem antes, quando eles ainda eram todos pequenos e nenhum tinha ido para lugar nenhum ainda.

A caverna funda, debaixo da pedra oca. O teto alto. O eco comprido. O traço de luz que entrava de manhã e atravessava o chão inteiro.

Equidna no meio.

Órtro, de duas cabeças, com uma delas já dormindo e a outra ainda acordada, do jeito que ele ia ficar para sempre.

#fullbleed("08b-o-retrato-de-origem", "p. 38", "O retrato de origem: a família inteira pequena dentro da caverna, no tempo do nascimento.")
Cérbero, com as bocas que ninguém consegue contar, e a cauda de dragão que se mexia sozinha antes mesmo de ele saber o que era um portão.

A Hidra (Hýdra) de Lerna, enrolada, com as cabeças subindo do chão como junco sobe da água — e ainda sem pântano nenhum para chamar de seu.

A Quimera (Khímaira), a mais estranha de todos: leão na frente, cabra no meio, serpente atrás, e um fio de fumaça saindo dela sem que ninguém tivesse acendido nada. Um dia essa aí ainda ia encontrar no céu um cavalo com asas. Mas essa história é de outro livro.

E Ladon (Ládōn), comprido, falando com muitas vozes ao mesmo tempo, ensaiando o murmúrio que um pomar no fim do mundo ia escutar durante séculos.

Ali, todos juntos, ninguém guardava coisa nenhuma. Ainda não havia porta atrás de ninguém. Havia só a caverna, e o eco, e a luz de manhã.

E depois, pela linha de Órtro, vieram mais dois: uma que ia sentar numa pedra alta com uma pergunta na boca, e um que ia deitar no capim curto de um vale onde o vento não parava nunca.

E é disto que este livro inteiro é feito.

Cada um deles saiu daquela caverna e foi ficar num lugar do mundo que não tinha ninguém. Um foi para o fim do mar, onde pastava o gado vermelho. Um foi para o portão lá embaixo. Um foi para o pântano de água escura. Um foi para a montanha vermelha. Um foi para a árvore de maçãs de ouro. Um foi para a estrada de Tebas. Um foi para o vale de Nemeia.

E o maior de todos, o único que quis tomar em vez de guardar, é o único que não ficou em porta nenhuma.

Toda coisa preciosa do mundo antigo tinha uma porta — e em cada porta, alguém da família de Equidna.

E a caverna continua lá. Funda, debaixo da pedra oca, com o teto alto e o eco comprido. Foram os deuses que deram aquela casa a ela, e a casa é dela.

De manhã entra pela boca escura um traço de luz que atravessa o chão inteiro e vai embora à tarde. No dia seguinte entra de novo.

Equidna está lá dentro. Ela não morre e não envelhece — nenhum dia, nunca.

#voce-sabia[
A Hidra de Lerna tinha uma maravilha só dela. Apolodoro conta que, quando uma das cabeças era esmagada, nasciam duas no lugar dela. Uma virava duas, e duas viravam quatro, e não havia como chegar ao fim. Era um problema que crescia enquanto alguém tentava resolvê-lo.

_(Fonte: Apolodoro, Biblioteca 2.5.2.)_
]
#vinheta("08c-a-caverna-final", "p. 40 — contida, sem full-bleed", "A caverna só com Equidna: mesmo enquadramento do cap. 1, mesmo rosto, mesmo traço de luz.", altura: 44mm)
#pagebreak(weak: true)

// ============================================================================
// 6. APARATO PÓS-TEXTUAL (pp. 41–46)
// ============================================================================

// ---- pp. 41–42 · Glossário ----
#pagina-aparato("Glossário", [
  _Nomes, grafia, transliteração e palavras difíceis do livro, em ordem alfabética.
  Um termo, um verbete (livro-spec R5.2)._

  *Alcides* (_Alkeídēs_, "al-CI-des") — o nome com que Héracles nasceu, antes de ir a Delfos. Foi o oráculo que lhe deu o nome novo.

  *Ares* (_Árēs_, "Á-res") — deus grego da guerra. O bosque do Velo de Ouro, na Cólquida, era um bosque sagrado dele.

  *Atena* (_Athēnâ_, "a-TE-na") — deusa grega da inteligência e das cidades. É ela quem leva as maçãs de ouro de volta para a árvore, no fim do capítulo 4.

  *Atlas* (_Átlas_) — o gigante que segura o céu nos ombros, no lugar mais longe do mundo. O jardim das maçãs de ouro fica aos pés dele.

  *boieiro* (_boi-EI-ro_) — quem cuida do gado de outra pessoa, todo dia, no sol e na chuva. Euritião era o boieiro de Gerião, e trabalhava ao lado de Órtro.

  *caverna gloriosa* — a expressão é do próprio poema grego: a caverna de Equidna não é um esconderijo, é um presente que os deuses lhe deram.

  *Cérbero* (_Kérberos_, "CÉR-be-ro") — o cão enorme sentado no portão do mundo de baixo. Tem mais cabeças do que se consegue contar, serpentes ao longo das costas e uma cauda de dragão que se mexe sozinha.

  *clava* (_CLA-va_) — pedaço de madeira grosso e pesado, mais largo numa ponta. Era a arma que Héracles carregava no ombro para todo lado — e que largou no chão, no capítulo 7.

  *Cleonas* (_Kleōnaí_, "cle-Ô-nas") — cidade pequena no caminho do vale de Nemeia. É onde mora Molorco.

  *Cólquida* (_Kolkhís_, "CÓL-qui-da") — terra distante, no fim do mar Negro, onde ficava o bosque do Velo de Ouro.

  *Delfos* (_Delphoí_, "DÉL-fos") — o oráculo mais famoso da Grécia. Foi lá que Héracles perguntou onde deveria morar.

  *enigma* (_e-NIG-ma_) — pergunta feita de propósito para ser difícil, com uma resposta só. Também se diz adivinha.

  *Equidna* (_Ékhidna_, "e-QUID-na") — metade mulher, de olhos vivos e faces bonitas; metade serpente enorme, de pele malhada. Mora numa caverna funda que os deuses lhe deram, e guarda essa caverna. Não morre e não envelhece.

  *Eritia* (_Erýtheia_, "e-ri-TI-a") — ilha no lugar mais a oeste que os gregos conseguiam imaginar, onde o sol se deita. Grafia fixada; não usar "Eriteia".

  *Esfinge* (_Sphínx_, "es-FIN-je") — criatura de rosto de mulher, corpo de leoa e asas de ave, que guardou a estrada de Tebas com uma pergunta. A esfinge do Egito é outra coisa: é de pedra, tem rosto de homem e não tem asas.

  *Etna* (_Aítnē_, "ET-na") — montanha da Sicília que solta fumaça e ferve por dentro. O poeta *Píndaro* foi quem disse que Tifão está embaixo dela; Hesíodo diz só "no Tártaro".

  *Euristeu* (_Eurystheús_, "eu-ris-TEU") — o rei que mandava em Héracles e lhe impunha os serviços. Nunca desceu nenhum degrau para buscar nenhum deles.

  *Euritião* (_Eurytíōn_, "eu-ri-ti-ÃO") — o boieiro de Eritia, que dizia bom dia a Órtro todas as manhãs e contava as vacas todas as tardes.

  *Gaia* (_Gaîa_, "GAI-a") — o nome grego da Terra, que os gregos tratavam como uma deusa. Nas páginas deste livro ela aparece só como "a Terra".

  *Gerião* (_Gēryónēs_, "ge-ri-ÃO") — o dono do gado vermelho do fim do mar, que quase nunca aparecia. _(Verbete prometido no capítulo 3.)_

  *Héracles* (_Hēraklês_, "É-ra-cles") — o herói mais forte da Grécia, que cumpriu doze anos de serviços para o rei Euristeu. Héracles é o nome grego dele; neste livro nunca "Hércules".

  *Hera* (_Hḗra_, "É-ra") — deusa grega, a maior das deusas do Olimpo. Foi ela quem mandou a Esfinge para a estrada de Tebas e quem escolheu o vale de Nemeia para o leão.

  *Hespérides* (_Hesperídes_, "hes-PÉ-ri-des") — as ninfas que cuidavam do jardim das maçãs de ouro, no fim do mundo. O nome delas quer dizer, mais ou menos, "as moças do poente".

  *Hesíodo* (_Hēsíodos_, "he-SÍ-o-do") — poeta grego de quase três mil anos atrás. É dele o poema mais antigo sobre esta família, e é dele quase tudo o que se sabe sobre onde cada um foi ficar.

  *Hidra* (_Hýdra_, "HI-dra") — criatura de muitas cabeças que foi guardar o pântano de Lerna. Quando uma cabeça era esmagada, nasciam duas no lugar.

  *Jasão* (_Iásōn_, "ja-SÃO") — o viajante que foi à Cólquida buscar o Velo de Ouro e o tirou do carvalho enquanto Medeia cantava.

  *Ladon* (_Ládōn_, "LA-don") — o dragão que morava dentro da árvore das maçãs de ouro e falava com muitas vozes ao mesmo tempo. Não podia morrer.

  *Lerna* (_Lérnē_, "LÉR-na") — pântano da Grécia, de água escura e junco alto. É a porta da Hidra.

  *Lícia* (_Lykía_, "LÍ-cia") — região de montanhas quentes e rocha vermelha, na costa da atual Turquia. É a porta da Quimera.

  *Medeia* (_Mḗdeia_, "me-DEI-a") — a moça da Cólquida que chegou perto do dragão que nunca dormia e cantou para ele pedindo o sono. Nunca se escreve "Medéia".

  *Molorco* (_Mólorkhos_, "mo-LOR-co") — homem de Cleonas que trabalhava por dia e hospedou Héracles. Contou trinta dias e estava na porta no trigésimo.

  *mundo de baixo* — o lugar para onde vão os que já viveram. Fica no fim de uma escada muito comprida e tem um portão, e no portão fica Cérbero. Os gregos chamavam esse lugar — e o dono dele — de *Hades*.

  *Musas* (_Moûsai_, "MU-sas") — as nove deusas das canções, das danças e das histórias. Foi com elas que a Esfinge aprendeu o enigma.

  *Nemeia* (_Neméa_, "ne-MEI-a") — vale de colinas de capim curto, onde o vento não para nunca. É a porta do leão de pele impossível.

  *ninfa* (_NIN-fa_) — nas histórias gregas, uma moça que não é bem deusa e não é bem gente: vive muito mais do que uma pessoa e costuma pertencer a um lugar. As Hespérides são ninfas.

  *Olimpo* (_Ólympos_, "o-LIM-po") — montanha altíssima do norte da Grécia. É de lá que descem os deuses.

  *oráculo* (_o-RÁ-cu-lo_) — o lugar aonde os gregos iam fazer uma pergunta aos deuses, e também a resposta que traziam de lá. A resposta nem sempre era a que a pessoa queria.

  *Orfeu* (_Orpheús_, "or-FEU") — o homem que desceu cantando ao mundo de baixo. Enquanto ele cantou, o mundo de baixo inteiro ficou pasmo e ninguém se mexeu.

  *Órtro* (_Órthros_, "ÓR-tro") — o cão de duas cabeças que guardava o gado vermelho de Gerião, na ilha de Eritia. É o primeiro nome da lista, no poema mais antigo.

  *Prometeu* (_Promētheús_, "pro-me-TEU") — o mais inteligente de todos, nas histórias gregas. Foi ele quem disse a Héracles: não entre naquele jardim; mande Atlas.

  *Quimera* (_Khímaira_, "qui-ME-ra") — a mais estranha da caverna: leão na frente, cabra no meio, serpente atrás, e um fio de fumaça saindo dela. Foi guardar as montanhas da Lícia.

  *Tártaro* (_Tártaros_, "TÁR-ta-ro") — o lugar mais fundo que existe, mais fundo até do que o mundo de baixo. É de lá que vem Tifão, e é para lá que ele volta.

  *Tebas* (_Thêbai_, "TE-bas") — cidade da Grécia com muros e uma estrada só. Foi essa estrada que a Esfinge guardou.

  *Tifão* (_Typhôn_, "ti-FÃO") — o maior de todos: mãos fortes, pés que não cansam, cabeças de serpente nascendo dos ombros, cada uma com uma voz. O único que não quis guardar uma porta.

  *Velo de Ouro* — a pele de um carneiro, toda de ouro, pendurada num carvalho da Cólquida. É a coisa preciosa que o dragão que nunca dormia guardava.

  *Zeus* (_Zeús_, "ZÊ-us") — o maior dos deuses gregos, o dono do raio. Desce do Olimpo uma vez neste livro.

  *zimbro* (_ZIM-bro_) — arbusto de cheiro forte. Medeia cortou um raminho dele, molhou no que trazia num pote e passou nos olhos do dragão.
])

// ---- p. 43 · De onde vêm estas histórias ----
// Encaixe de folha: p. 43 é RECTO (ímpar) e sua página de frente (p. 42) é o fim do
// glossário — aparato adulto, não arte infantil. O destino da Esfinge, declarado aqui
// em texto explícito, não fica exposto de frente para página ilustrada.
#pagina-aparato("De onde vêm estas histórias", [
  _Este livro foi recontado a partir do enredo documentado de poetas com nome e data. Aqui estão quais — e o que escolhemos, o que recusamos e o que inventamos._

  *A espinha.* A família deste livro existe porque *Hesíodo* (_Teogonia_, séc. VIII–VII a.C.) a catalogou: a caverna dada pelos deuses, os nomes, e o lugar de cada um. Sobre ele se apoiam quatro testemunhas mais tardias. *Apolodoro* (_Biblioteca_, séc. I–II d.C.) dá quase toda a matéria de Héracles — as maçãs de ouro e a almofada de Atlas (2.5.11), Cérbero levado e devolvido sem armas (2.5.12), o oráculo de Delfos e os doze anos (2.4.12), a Esfinge e o enigma (3.5.8), a Hidra (2.5.2). *Apolônio de Rodes* (_Argonáutica_ IV, séc. III a.C.) dá o dragão da Cólquida e o ramo de zimbro molhado, passado nos olhos. *Diodoro Sículo* (4.11.4) e *Higino* dão a pele vestida — não Apolodoro, ao contrário do que se lê com frequência. *Píndaro* (_Pítica_ 1.15–28) dá o Etna. *Virgílio* (_Geórgicas_ 4.481–484) dá a única cena romana do livro: Orfeu no mundo de baixo. Nela, Cérbero não adormece — fica _de bocas abertas, pasmo_.

  *O que vimos e não adotamos.* Onde as fontes divergem, escolhemos uma e a declaramos. _(a)_ *Ladon.* Apolodoro 2.5.11, que seguimos, tem um dragão imortal que nunca é confrontado — Héracles nem entra no jardim. Mas *Apolônio* (4.1396ss) o mata a flechadas, e o *próprio Apolodoro* registra logo adiante que "alguns dizem" que Héracles o matou. Existe, é antiga, e não está neste livro. _(b)_ *O dragão da Cólquida.* Em *Diodoro* (4.48.3) quem o mata é Medeia. Preferimos Apolônio, em que ele adormece e fica vivo — e a fonte é silente sobre o depois, de modo que o capítulo também é. _(c)_ *Equidna.* Apolodoro (2.1.2) conta que Argos a matou enquanto dormia. Adotamos o fecho de Hesíodo (295–305): a caverna, e uma ninfa que não morre nem envelhece. _(d)_ *A Esfinge.* Hesíodo, que é a fonte principal aqui, não conta o fim dela. *Apolodoro 3.5.8 conta: depois que Édipo respondeu, ela se lançou do alto da cidadela.* Este livro para na resposta e na estrada aberta. _(e)_ Orfeu adormecendo o dragão da Cólquida (Valério Flaco VIII) foi visto e não usado.

  *Um nome emprestado da fonte recusada.* Apolodoro, que seguimos, diz apenas "um dragão": não lhe dá nome. *"Ladon" vem de Apolônio* — exatamente a versão em que ele morre. Usamos o nome e recusamos o enredo.

  *A parentela diverge, e por isso o livro nunca diz o grau.* Hesíodo dá pais a Ladon (333–336) diferentes dos de Apolodoro 2.5.11, que a série adota. O dragão da Cólquida só é associado à família por listas tardias; Hesíodo não o inclui, e o miolo não afirma filiação nenhuma. E no verso 326, sobre a Esfinge e o leão, o texto grego não deixa claro quem é a mãe — o pai é Órtro nas duas leituras, e Apolodoro 3.5.8 faz a Esfinge filha direta de Equidna. Diante disso, o livro inteiro usa duas fórmulas e nenhuma outra: _"alguém da família de Equidna"_ e _"pela linha de Órtro"_.

  *O que é invenção nossa, declarada.* Três coisas neste livro não vêm de fonte nenhuma. _(1)_ *O luto de Equidna* — nenhum texto antigo registra reação dela à morte de filho algum. A frase do capítulo 3 é moldura da nossa narração, não coisa que os gregos contavam. _(2)_ *O cão que dorme com um ouvido acordado* — nada em Hesíodo, Apolodoro ou Píndaro liga Órtro a hábito de cão vivo; é comparação do narrador com o mundo de hoje, e por isso o capítulo nunca diz "é por isso que" nem "desde então". _(3)_ *A ternura da devolução de Cérbero* — a volta ao portão é fato de Apolodoro; o afeto é imagem nossa.

  *As cabeças que não se contam.* Hesíodo escreveu um número para Cérbero, Horácio escreveu outro muito maior, Apolodoro escreveu outro bem menor. Nenhum bate com o outro. A arte grega antiga, por sua vez, desenhava Cérbero com duas ou três cabeças, sempre contáveis: *a não-contabilidade é escolha nossa, de adequação à idade*, e não achado de fonte. O mesmo vale para Ladon e a Hidra.

  *O rosto de Equidna.* Não existe representação antiga segura dela. O rosto destas páginas é reconstrução a partir do texto de Hesíodo — metade mulher, de faces bonitas; metade serpente enorme —, não citação de uma imagem que exista.

  *Um corte.* No verso 301 Hesíodo a chama de comedora de carne crua. Está na fonte; não está neste livro.

  _Nenhuma linha aqui foi traduzida de edição protegida: os capítulos foram recontados a partir do enredo._
])

// ---- pp. 44–45 · Perguntas que as crianças fazem ----
#pagina-aparato("Perguntas que as crianças fazem", [
  _Estas são as perguntas que aparecem de verdade quando se lê este livro em voz alta. As respostas estão escritas para serem ditas assim como estão — e nenhuma delas mente._

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 1 — A caverna e as portas]

  *— Cadê a Hidra e a Quimera?* Elas estão no livro, mas não têm capítulo só delas: aparecem no primeiro, quando saem para as portas, e no último, quando são pequenas dentro da caverna. Este livro conta o começo das duas. O que aconteceu com elas depois é história de outro livro, e é história com herói dentro.

  *— Por que todo mundo foi embora?* Ninguém foi embora de nada. O mundo estava cheio de coisas preciosas sem ninguém na porta — um gado, um portão, um pântano, uma montanha, uma árvore — e cada um foi ficar numa. É o contrário de ir embora: é chegar num lugar que estava vazio.

  *— E ela ficou sozinha na caverna?* Ela ficou na caverna porque a caverna também é uma coisa preciosa, e quem cuida da porta de uma casa é quem mora nela. O poema mais antigo diz isso com todas as letras: ela guarda. São seis portas, e a dela é uma delas. Repare que a caverna está aberta na primeira página do livro e continua aberta na última.

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 2 — O dragão que nunca dormia]

  *— Ele acordou depois?* A história para ali e não diz. O que a gente sabe é o que aconteceu naquela noite: ninguém encostou uma arma nele, ninguém o feriu, e ele dormiu pela primeira vez na vida. Isso é o fim do capítulo porque é o fim do que o poeta contou.

  *— Eles roubaram o Velo de Ouro?* Levaram, sim. O livro conta o que aconteceu e não diz se foi certo ou errado — é uma pergunta boa para você e quem está lendo com você resolverem juntos. O que dá para dizer é que o dragão estava lá primeiro, e havia muito tempo.

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 3 — Órtro e o gado vermelho]

  *— Por que o Héracles matou eles?* Porque um rei, lá longe, mandou buscar o gado — e depois mandou buscar a pele, e depois mandou buscar o cão do portão. Héracles não escolheu nenhum desses serviços: um oráculo tinha mandado que ele os cumprisse. Isso explica por que ele foi. Não faz virar bonito o que ele fez, e a história antiga também não faz.

  *— O Órtro tinha feito alguma coisa errada?* Não. Ele estava fazendo o que fazia todo dia: correu para a frente do rebanho. É por isso que este capítulo é o mais tranquilo do livro até a última página — porque não tem nada acontecendo de errado nele.

  *— Meu cachorro dorme com um ouvido acordado por causa do Órtro?* Não. Essa é uma coisa que a gente reparou nos cachorros de hoje e pôs na história para você entender como era o trabalho dele. Os gregos nunca disseram isso. Eles disseram só uma coisa sobre o Órtro: onde ele ficava.

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 4 — Ladon e o gigante que segurou o céu]

  *— Por que o Atlas segura o céu?* Porque nas histórias gregas alguém precisa segurar, e coube a ele. Está nos ombros dele desde sempre. Repare que, nas duas vezes em que ele fica de mãos livres, ele faz a mesma coisa: sai andando.

  *— O Ladon não fez nada?* Nada. Viu o gigante chegar, viu o gigante sair, e continuou murmurando com muitas vozes. É o único guardião deste livro que ninguém tocou — e, no fim, as maçãs voltam para a árvore dele.

  *— Quem mais mora naquele jardim?* Umas moças chamadas Hespérides, que cuidavam da árvore. Apolodoro conta que elas mesmas andavam colhendo maçã escondido, e foi por causa disso que puseram um guardião ali. Colocaram o dragão por causa das próprias donas do jardim.

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 5 — A pergunta da Esfinge]

  *— O que aconteceu com a Esfinge?* Este livro para na resposta de Édipo e na estrada abrindo — é ali que a história dela acaba para a gente. O poeta mais antigo, que é de quem vêm quase todos os nomes deste livro, também não conta o fim dela. Um livro bem mais novo, de um senhor chamado Apolodoro, conta — e o que ele conta está escrito na página _De onde vêm estas histórias_, no fim deste livro, para quem estiver lendo com você. Não é uma parte alegre. A gente escolheu terminar na estrada aberta.

  *— E se eu não soubesse a resposta?* Ninguém soube. Todo mundo que subiu aquela estrada ficou parado embaixo da pedra com a pergunta na cabeça, e a estrada ficou anos sem ninguém. Era difícil mesmo. Não saber a resposta dessa pergunta é a coisa mais comum que existe.

  *— Por que a Hera mandou ela para lá?* A história não conta o motivo, e a gente não vai inventar um. Conta só que foi ela quem mandou. Quer dizer que a Esfinge não escolheu aquela estrada: alguém a pôs ali, como puseram cada um dos outros no lugar deles.

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 6 — O leão de pele impossível]

  *— O que aconteceu dentro da caverna?* O vale de Nemeia não viu, e o livro também não conta. Isso não é a gente escondendo: é a história inteira do capítulo. O que se sabe é que Héracles entrou sem nenhuma arma, e que a caverna ficou quieta.

  *— Por que ele ficou com a pele?* Porque era a pele que o rei tinha pedido, e porque nada nunca a atravessou — nem ponta, nem pedra, nem ferro. Ele a pôs em cima de si e ela nunca mais saiu. Em todos os desenhos gregos em que você encontrar Héracles, ele está usando o vale de Nemeia nas costas.

  *— O Molorco esperou os trinta dias mesmo?* Esperou. Ele era um homem que trabalhava por dia e não tinha quase nada, e mesmo assim contou até trinta e estava na porta no dia certo. É o único personagem deste livro que faz uma coisa difícil sem que ninguém tenha mandado.

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 7 — Cérbero volta para casa]

  *— O Cérbero é bravo?* Não. Ele é um guarda. Um guarda avisa quando alguém chega, e é isso que ele faz — não late, ressoa. Quando Héracles o abraçou, ele reagiu; quando voltou para o portão, deu três passos, sentou e baixou as orelhas. Cão bravo não baixa as orelhas.

  *— Quantas cabeças ele tem?* Ninguém nunca combinou. Um poeta grego escreveu um número, um poeta romano escreveu outro muito maior, e Apolodoro escreveu outro bem menor. Nenhum bateu com o outro. Por isso, neste livro, ninguém conta — e você pode desenhar quantas quiser.

  *— A cauda mordeu de verdade? Ele se machucou?* A cauda de dragão mordeu, sim, e Héracles não soltou. A história antiga não diz que ele se machucou nem que doeu — diz só que ele aguentou até o cão parar. E que largou o arco e a clava no chão antes, e não voltou para pegar.

  *— Por que ele devolveu o Cérbero?* Porque essa era a combinação com o dono da casa: podia levar, mas tinha de levar de volta. E porque o portão do mundo de baixo não pode ficar sem ninguém. Héracles desceu a escada uma segunda vez só para isso, e o cão foi na frente, porque sabia o caminho melhor do que ele.

  #text(font: FONTE-DISPLAY, weight: "bold", size: 10.5pt, fill: TERRACOTA-ESCURA)[Capítulo 8 — Tifão, o maior de todos]

  *— O Tifão é malvado?* Ele é o único da caverna que não quis guardar uma porta: quis o céu inteiro. Isso é diferente de todos os outros, e o livro diz isso — e para aí. Uma das cabeças dele gania como filhote de cachorro, e quem escreveu isso foi o poeta mais antigo de todos, que achou aquilo uma maravilha de ouvir.

  *— O Etna existe mesmo? Dá para ir ver?* Existe e dá. Fica na Sicília, que é uma ilha da Itália, e ainda solta fumaça. Foi um poeta chamado Píndaro que disse que Tifão está debaixo dela. Hesíodo, que é mais antigo, disse só que ele ficou no lugar mais fundo de todos.

  *— A Equidna vai ficar lá para sempre?* Vai. O poema diz duas coisas sobre ela: que os deuses lhe deram aquela casa, e que ela não morre e não envelhece. Esta é a última página do livro, e a caverna está do jeitinho que estava na primeira — com o mesmo teto alto, o mesmo eco e o mesmo traço de luz entrando de manhã.
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
