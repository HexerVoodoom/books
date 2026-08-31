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

#chapter-title(numero: 1, titulo: "Zeus · Baucis e Filêmon")

Nas colinas da Frígia, dois viajantes bateram numa porta. Ninguém abriu. Bateram na seguinte, e na seguinte. Mil portas, e mil trancas do outro lado.

A última casa da encosta era a menor de todas: paredes de vime, telhado de junco do brejo. Essa abriu na primeira batida.

— Entrem — disse Filêmon. — E abaixem a cabeça, que a porta é baixa.

Baucis e Filêmon tinham envelhecido ali, debaixo do mesmo teto. Eram pobres, sabiam disso e não faziam disso tristeza. Não havia criados na casa: quem mandava e quem obedecia eram as mesmas duas pessoas.

Baucis soprou as brasas de ontem até acordarem, alimentou o fogo com casca e folha seca e pendurou o caldeirão. Filêmon arrancou um repolho da horta. Do madeiro do teto desceu um pedaço de carne curada, e dele se cortou uma fatia fina — fina, mas foi.

A mesa tinha três pés, e um deles era curto. Baucis procurou no chão, achou um caco de telha e enfiou embaixo. A mesa parou de balançar. Depois ela esfregou o tampo com hortelã fresca.

Vieram azeitonas, rabanete, queijo, ovos assados na cinza morna. Vieram nozes, figos, ameixas, uvas. No meio de tudo, um favo de mel branco. Os copos eram de madeira de faia, untados de cera amarela.

Foi então que Baucis viu.

A jarra de vinho ficou vazia — e se encheu sozinha. Esvaziou de novo, e de novo se encheu, sem que ninguém a tocasse.

Os dois velhos ergueram as mãos, com medo.

— Perdoem a mesa — disse Baucis. — Não temos mais nada para pôr nela.

Depois pensaram no ganso branco que tomava conta da casa, a única coisa de valor que tinham. Queriam preparar o ganso para os hóspedes.

O ganso tinha outros planos.

Correu para a esquerda, correu para a direita, passou debaixo do banco e saiu pela porta. Filêmon foi atrás. Baucis foi atrás. O ganso deu duas voltas na casa, entrou de novo, abriu as asas — e foi se esconder atrás das pernas dos dois viajantes.

— Deixem ele em paz — disseram os hóspedes. — Nós somos deuses.

Eram Zeus e Hermes. Tinham batido em mil portas, e uma só abriu.

— Venham conosco. Subam o monte.

Baucis e Filêmon subiram devagar, de mãos dadas, do jeito que dois velhos sobem um monte. Lá em cima, olharam.

O vale inteiro tinha virado um lago calmo, cheio de aves. De todas as casas do lugar, só a deles ainda estava de pé.

E, atrás deles, a casa começou a mudar. Os paus de madeira que seguravam o teto se esticaram e viraram colunas. O telhado de junco foi ficando amarelo até virar ouro. Apareceram portas lavradas, e o chão de terra batida virou mármore. A choupana pequena demais para dois era agora um templo.

— Peçam o que quiserem — disse Zeus.

Filêmon conversou baixinho com Baucis. Depois se virou.

— Deixe que a gente cuide deste templo. E, já que vivemos tantos anos juntos, que a mesma hora leve nós dois. Que nenhum de nós dois fique aqui sozinho.

Foi o que aconteceu. Cuidaram do templo enquanto a vida durou. E um dia, já muito velhos, de pé nos degraus, contando a história daquele lugar, cada um viu no rosto do outro brotarem folhas.

Ainda deu tempo de se despedirem.

— Adeus, minha companheira.

— Adeus, meu companheiro.

E a casca subiu e fechou por cima dos dois ao mesmo tempo.

Quem passa hoje pelas colinas da Frígia vê um carvalho e uma tília lado a lado, nascidos do mesmo chão. Nos galhos, ainda penduram grinaldas.


#voce-sabia[
Na Grécia antiga, receber um desconhecido era lei — e a lei tinha dono. Chamava-se _xenia_, e quem tomava conta dela era _Zeus Xénios_, "Zeus dos Estrangeiros": todo forasteiro que batesse à porta estava sob a proteção dele. Por isso, nas histórias, ninguém nunca sabia quem estava do outro lado. Já em Homero se conta que os deuses andam pelas cidades disfarçados de viajantes de terras distantes, só para ver como as pessoas se comportam.
]

#glossario-do-capitulo[
- _xenia_ (_xenía_) — palavra grega para o dever de receber bem quem chega de fora. Na Grécia antiga era uma obrigação sagrada, dos dois lados: quem recebe e quem é recebido.
- _Zeus Xénios_ (Zeús Xénios) — "Zeus dos Estrangeiros": o nome de Zeus quando ele protege viajantes e visitantes. Fechar a porta a um forasteiro era ofendê-lo.
- _Hermes_ (Hermês) — mensageiro dos deuses e guia dos viajantes, jovem e sem barba. Carrega o _bastão de ouro de três ramos_ que Apolo lhe deu (a história está no capítulo 4) e sandálias com asas nos pés. _(Muito tempo depois, os gregos passaram a desenhar esse mesmo bastão com duas serpentes enroladas e a chamá-lo de _caduceu_.)_ ⚠️ _Verbete único do livro (X2):_ um objeto, um nome — _bastão de ouro_. O cap. 4 é a autoridade sobre ele; este verbete e a ilustração deste capítulo obedecem ao cap. 4.
- _tília_ — árvore europeia de flores muito perfumadas, com que se faz chá de tília. Em inglês chama-se _lime tree_, e por isso muita gente a confunde com o limoeiro: _ela não dá limão nenhum._ Baucis virou tília.
- _carvalho_ — árvore grande e de madeira dura, _a árvore sagrada de Zeus_. Filêmon virou carvalho.
- _vime_ — vara fina e flexível, tirada de certos arbustos, com que se tecem cestos, cercas e paredes de casa simples. As paredes da casa de Baucis e Filêmon eram de vime.
- _choupana_ — casa muito simples, feita de materiais do mato, como varas e palha.
- _faia_ — árvore de madeira clara; dela se faziam copos e tigelas escavados.
- _Frígia_ — região de colinas onde hoje fica a Turquia.
- _grinalda_ — coroa de flores ou folhas, feita para pendurar ou para pôr na cabeça.
]

#pagebreak()
#fullbleed("01-zeus-baucis-e-filemon", "p. 10", [Baucis e Filêmon de mãos dadas na encosta; a choupana virando templo ao fundo; Zeus e Hermes revelados em luz; o ganso branco vivo.])
#pagebreak()

#pagebreak()

#chapter-title(numero: 2, titulo: "Atena · A disputa por Atenas")

Atena nasceu de um jeito que nenhum outro deus nasceu: saiu de dentro da cabeça de Zeus, já crescida e já de armadura. Não foi bebê, não foi menina. Chegou ao mundo com elmo, lança e escudo, e com os olhos cinzentos de uma coruja. Não precisou aprender nada, porque veio sabendo.

Naquele tempo havia, no alto de um rochedo, uma cidade que ainda não tinha nome. Tinha casas, tinha gente e tinha rei: Cécrops, que nascera daquela mesma terra e por isso tinha cauda de serpente no lugar das pernas. Nome é que não tinha. E dois deuses quiseram aquela cidade para si.

Posêidon chegou primeiro. Subiu o rochedo com o tridente na mão, parou no ponto mais alto e bateu com as três pontas na pedra.

A pedra se abriu.

E de dentro dela, no alto de um morro, longe de qualquer praia, subiu água do mar. Água verde, com espuma, com cheiro de maré. O deus do mar tinha trazido o mar pela porta de cima e o deixado ali dentro, para sempre, no meio das casas. O povo se juntou em volta sem dizer nada. Ninguém nunca tinha visto uma coisa daquelas.

Então um homem se agachou, juntou a água nas mãos e bebeu.

Fez uma cara esquisita. Passou para o vizinho, que também fez uma cara esquisita, e o vizinho passou adiante. Era salgada.

Depois chegou Atena. Antes de fazer qualquer coisa, ela procurou o rei no meio da multidão.

— Cécrops — disse ela. — Chegue aqui. Fique olhando.

O rei chegou e ficou olhando. Só então Atena firmou a lança na terra, com as duas mãos, do jeito de quem planta uma estaca.

Do lugar onde a ponta encostou saiu um broto torto e prateado. O broto virou galho, o galho virou tronco, e o tronco abriu uma copa inteira por cima das cabeças do povo. Era uma oliveira, e já vinha carregada.

Uma menina alcançou uma azeitona e comeu.

Daquela árvore saía comida. Saía azeite para cozinhar, azeite para acender lamparina, madeira para consertar o que quebrasse e sombra para o meio-dia. E, quando se enterrava um galho dela na terra, nascia outra.

Os dois deuses queriam a mesma cidade, e nenhum queria ceder. Zeus separou os dois e disse que aquilo não se resolvia empurrando: chamou doze deuses para julgar. Os doze perguntaram quem tinha dado o quê.

Foi aí que o rei Cécrops contou o que tinha visto com os próprios olhos: a oliveira fora plantada por Atena, e ele estava lá.

Os doze ouviram a testemunha e entregaram a cidade a Atena. E a cidade, que até aquele dia não tinha nome, passou a se chamar Atenas.

Posêidon ficou com muita raiva. E, quando o deus do mar fica com raiva, o mar sobe: naquela noite a água avançou pela planície ao lado da cidade e cobriu a terra plana até onde a vista alcançava.

Depois baixou.

Lá em cima, no rochedo, os atenienses deixaram os dois presentes um ao lado do outro: a oliveira de Atena, com a coruja nos galhos, e o poço de água salgada de Posêidon, guardado dentro de um templo. Cuidaram dos dois. Honraram os dois deuses no mesmo lugar.


#voce-sabia[
Em 480 a.C., os persas tomaram a acrópole de Atenas e queimaram tudo o que havia lá em cima — inclusive a oliveira sagrada. No dia seguinte, os atenienses que subiram para fazer suas oferendas encontraram o toco preto de fumaça com um broto novo, do tamanho de um antebraço. Para eles, aquilo dizia uma coisa só: a cidade também ia brotar de novo. Quem conta é Heródoto.
]

#glossario-do-capitulo[
- _acrópole_ (_akrópolis_) — "cidade alta": o rochedo no alto de uma cidade grega, onde ficavam os templos. A de Atenas é a mais famosa de todas.
- _Atena_ (Athēnâ) — deusa da sabedoria, dos ofícios e da guerra pensada. Nasceu da cabeça de Zeus, já adulta e armada. Anda com elmo, lança e escudo; seus bichos e plantas são a _coruja_ e a _oliveira_. Atenas leva o nome dela.
- _Posêidon_ (Poseidôn) — deus do mar, irmão de Zeus. Carrega o _tridente_, com que abre a terra e agita as águas.
- _tridente_ — lança de três pontas, usada de verdade por pescadores gregos. É o objeto que distingue Posêidon de Zeus, que são os dois barbados e parecidos.
- _égide_ — o peitoral de Atena, franjado, com uma cabeça de monstro desenhada no meio. De onde veio essa cabeça, o capítulo de Perseu conta.
- _oliveira_ — árvore de folhas prateadas que dá azeitona e azeite. Vive séculos, aguenta seca e brota de novo do toco.
- _azeite_ — óleo tirado da azeitona. Na Grécia antiga servia para cozinhar, para passar no corpo e para _acender lamparina_: era comida e luz ao mesmo tempo.
- _Cécrops_ (Kékrops) — o primeiro rei de Atenas. Diziam que ele tinha nascido da própria terra da cidade e que, por isso, era homem de cima e serpente de baixo.
- _testemunha_ — quem estava presente e viu uma coisa acontecer, e pode contar depois o que viu.
]

#pagebreak()
#fullbleed("02-atena-disputa-por-atenas", "p. 14", [Atena e Posêidon diante do rochedo da Acrópole; a oliveira brotando ao lado da fonte salgada; Cécrops testemunha; o povo em silhueta.])
#pagebreak()

#pagebreak()

#chapter-title(numero: 3, titulo: "Leto e a ilha que ninguém queria")

Leto andava.

Leto ia ter dois filhos de Zeus. Precisava de um chão firme para eles nascerem. Mas nenhuma terra queria. Leto chegava a uma terra e pedia um pedaço de chão. A terra tremia e dizia não. Chegava a outra, e a outra tremia e dizia não. Nenhuma ousava recebê-la.

Andou por ilhas grandes, de trigo e de vinha. Andou por ilhas altas, de montanha e de pinheiro. Passou por praias, por portos, por costas inteiras, e em todas a mesma resposta: não.

Foi então que ela viu uma pedra no mar.

A pedra não estava parada. Não estava presa em lugar nenhum: boiava, ia, voltava, deixava-se levar. Era dura, era rochosa, não tinha vaca nem ovelha nem uma videira, e os marinheiros falavam mal dela quando falavam — que era quase nunca. O nome dela era Astéria, e ninguém sabia onde encontrá-la.

— Ilha — disse Leto. — Quero pedir uma coisa, e quero dizer a verdade antes. Se meu filho nascer aqui, você não vai ficar rica. Seu chão vai continuar duro. Mas as pessoas vão vir de todos os mares para procurar você, e nunca mais você vai ficar vazia.

A ilha demorou a responder.

— Eu queria — disse ela, baixinho. — Eu queria tanto. Mas eu tenho medo. E se ele abrir os olhos, olhar para mim e não gostar? Eu só tenho pedra. Sou pequena demais, sou dura demais. E se ele for embora?

— Então peça o que você quiser — disse Leto.

E a ilha pediu. Pediu uma coisa só, e pediu certo:

— Que seja aqui. Que seja aqui que ele vá falar com as pessoas. Que seja para cá que elas venham perguntar.

Leto jurou — e há juramentos que nenhum deus pode desfazer, nem depois, nem nunca.

A ilha estava com medo. E, mesmo com medo, disse sim.

Leto atravessou o prado, ajoelhou-se e pôs os braços em volta de uma palmeira. Ficou ali. A noite passou, e passou outra, e passou mais outra. As deusas do mar e do céu vieram e ficaram em volta dela, esperando junto.

Ártemis nasceu primeiro. E, sendo quem era, não ficou esperando: virou-se para a mãe e ajudou. Foi assim que Apolo chegou ao mundo — pelas mãos da irmã, que tinha uns minutos de idade e já era a dona de todas as florestas.

Enrolaram o menino numa faixa dourada. A faixa não segurou. As pontas se desfizeram sozinhas, e ele se pôs de pé no primeiro dia da própria vida.

Apolo abriu os olhos. A primeira coisa que viu foi a pedra que tinha dito sim — e gostou do que viu. Depois falou:

— A lira e o arco serão sempre meus. E é aqui que eu vou dizer às pessoas a vontade de Zeus.

Foi o que a ilha tinha pedido.

Então a pedra parou de boiar. Lá embaixo, no escuro da água, os pés da ilha soltaram raízes e agarraram o fundo do mar, e ela ficou. A luz do menino correu pela rocha como o sol corre pela manhã, e passou, e a rocha continuou dura como sempre foi; mas a grama riu por baixo dos joelhos de Leto e se abriu em flores do mato, como um cume de montanha na primavera.

E os marinheiros, que antes não a achavam, passaram a enxergá-la de longe. Deram-lhe outro nome. Chamaram-na Delos: a que se vê.


#voce-sabia[
Antes daquele dia, a ilha se chamava _Astéria_, "a estrelada", e vagava pelo mar sem parar em lugar nenhum — por isso quase ninguém a encontrava. Depois que criou raízes, os navegantes gregos passaram a chamá-la de _Delos_, que quer dizer "a que se vê". A ilha que ninguém achava virou a que todo mundo enxerga de longe.

_(Fonte: Calímaco, Hino IV a Delos — dossiê, "Material para Você sabia?", fato 2.)_
]

#glossario-do-capitulo[
- _Delos_ (_DÉ-los_) — ilha pequena e rochosa do mar Egeu, onde nasceram Ártemis e Apolo. Não confundir com _Delfos_, que é outro lugar.
- _Astéria_ (_as-TÉ-ri-a_) — "a estrelada": o nome da ilha enquanto ela ainda vagava pelo mar.
- _Leto_ (_LÉ-to_) — titânide, filha de Céos e Febe, mãe de Ártemis e Apolo. Em latim é chamada Latona.
- _Ártemis_ (_ÁR-te-mis_) — deusa das florestas, dos animais selvagens e da caça; carrega arco e aljava e nunca quis se casar. Irmã gêmea de Apolo, e a mais velha por alguns minutos.
- _Apolo_ (_a-PO-lo_) — deus da música, do arco de prata e dos oráculos: é ele que diz às pessoas a vontade de Zeus. Também chamado _Febo_, "o brilhante".
- _lira_ (_LI-ra_) — instrumento de cordas dedilhadas, tocado com os dedos ou com uma palheta; o instrumento de Apolo.
- _palmeira_ — a árvore em que Leto se apoiou. Séculos depois, ainda era mostrada aos visitantes de Delos.
- _titânide_ (_ti-TÃ-ni-de_) — mulher da geração dos Titãs, anterior aos deuses do Olimpo. Leto é uma delas.
]

#pagebreak()
#fullbleed("03-leto-e-a-ilha", "p. 18", [Delos ancorada entre ondas; Leto abraçada à palmeira; os gêmeos Ártemis e Apolo recém-nascidos; dupla luz sem astros.])
#pagebreak()

#pagebreak()

#chapter-title(numero: 4, titulo: "Hermes, o gado e a lira")

Isso aconteceu quando Hermes ainda não tinha o bastão de ouro.

Ele nasceu de manhã, numa caverna do monte Cilene, filho de Zeus e da ninfa Maia. A mãe o enrolou nos panos, deitou-o no berço e foi cuidar da sua vida. O bebê tinha poucas horas de idade.

Saiu do berço.

Na porta da caverna havia uma tartaruga pastando na grama. Hermes olhou para ela e viu outra coisa. Viu música.

Do casco liso ele fez a caixa. De duas canas, os braços. De um pedacinho de pau atravessado, a travessa. Esticou sete fios, um ao lado do outro, e passou o dedo por eles.

A caverna inteira soou.

Era a primeira lira do mundo, e tinha meio dia de idade, igual a ele.

De tarde, Hermes ficou com fome. Desceu até o campo onde pastava o gado do seu irmão mais velho, Apolo, e roubou cinquenta vacas.

Roubou mesmo. Não pegou emprestado.

E tocou as vacas para trás, de modo que os cascos deixassem pegadas apontando para o lado contrário. Quem seguisse a pista ia caminhar para bem longe delas. Depois trançou sandálias de vime, largas e desengonçadas, para que nem os próprios pés dissessem por onde tinha andado.

Escondeu as vacas numa gruta à beira do rio. E ali, junto da água, acendeu o primeiro fogo que já se acendeu no mundo. O que aconteceu naquela noite ao lado do fogo, a história não conta.

Antes do sol nascer ele estava em casa. Entrou pela fechadura, como entra uma névoa, enrolou-se de novo nos panos e ficou brincando com a ponta da coberta, com a lira escondida debaixo do braço esquerdo.

— Eu sei o que você fez — disse Maia.

Hermes não respondeu. Bebês não respondem.

Apolo chegou pouco depois, e chegou furioso. Olhou dentro do berço.

— Onde estão as minhas vacas?

— Que vacas? — disse o bebê. — Eu nasci ontem. Meus pés são macios e o chão lá fora é áspero. Eu gosto é de leite, de banho quente e desta coberta.

Apolo pegou o bebê no colo e o carregou até o Olimpo, diante de Zeus.

Apolo acusou. Hermes repetiu tudo, palavra por palavra: pés macios, leite, banho quente.

E Zeus riu. Riu alto, riu até as nuvens sacudirem, porque ninguém no mundo tinha mentido tão bem com um dia de idade. Quando parou de rir, não castigou ninguém. Disse só:

— Vão os dois. E tu vais na frente, mostrando onde é.

Voltaram ao rio. As vacas saíram da gruta e voltaram para o dono.

E mesmo assim Apolo continuava com raiva.

Então Hermes puxou a lira de baixo dos panos e tocou.

Apolo parou onde estava. No dia em que nasceu, ele tinha dito que a lira seria sempre dele. Só que ninguém no mundo tinha feito uma ainda. E agora havia uma, e ela cantava nas mãos do irmão que tinha um dia de vida.

— Isso — disse Apolo — vale cinquenta vacas.

Hermes esticou os dois braços e entregou a lira.

Apolo recebeu o instrumento e deu, em troca, o cuidado de todos os rebanhos: dali em diante Hermes seria o deus dos pastores. Depois jurou que nenhum outro deus lhe seria mais querido, e pôs na mão do irmão um bastão de ouro de três ramos, para mantê-lo seguro em qualquer estrada.

Foi assim que o bastão chegou até ele. Não pelo que escondeu. Pelo que deu.


#voce-sabia[
A primeira lira do mundo foi uma tartaruga. Hermes achou uma na porta de casa e montou o instrumento com o casco: canas atravessadas, couro esticado, dois braços, uma travessa e _sete cordas_. Os gregos chamavam essa lira de _chélys_ — que é, na língua deles, a palavra "tartaruga". E fabricaram liras assim por mais de mil anos.

_(Fonte: Hino Homérico a Hermes, 24–51 — dossiê, "Material para Você sabia?", fato 1.)_
]

#glossario-do-capitulo[
- _Maia_ (_MÁI-a_) — ninfa, filha do titã Atlas; morava sozinha numa caverna do monte Cilene e é a mãe de Hermes.
- _lira de tartaruga_ ou _chélys_ (_QUÉ-lis_) — a lira feita com um casco de tartaruga por caixa de som. Foi a primeira de todas.
- _ninfa_ (_NIN-fa_) — moça divina que vive num rio, numa montanha, numa floresta ou no mar. Não é deusa do Olimpo, mas também não morre.
- _arauto_ (_a-RAU-to_) — quem leva e anuncia os recados de alguém importante. Hermes viria a ser o arauto dos deuses; o bastão de ouro é a marca do ofício. _4 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P2, por estarem ancorados no corrido: _Cilene_ ("numa caverna do monte Cilene"), _rebanho_ ("o cuidado de todos os rebanhos: dali em diante Hermes seria o deus dos pastores") e o verbete duplicado de _Hermes_.
]

#pagebreak()
#fullbleed("04-hermes-o-gado-e-a-lira", "p. 22", [O bebê Hermes entregando a lira de casco de tartaruga a Apolo, à beira do rio Alfeu.])
#pagebreak()

#pagebreak()

#chapter-title(numero: 5, titulo: "Hefesto: O trono de ouro")

Quando Hefesto nasceu, ele não andava como os outros deuses do Olimpo. Hera olhou para o filho e não quis ficar com ele. Mandou o bebê para longe do céu. Foi ela quem errou.

Quem recolheu Hefesto foi Tétis, do mar. Tétis o levou para uma gruta funda, onde a corrente de Oceano dá voltas e voltas sem parar. Lá dentro estava quente. Lá dentro estava seguro.

Hefesto ficou nove anos naquela gruta, e nesses nove anos as mãos dele aprenderam tudo. Aprenderam a bater no metal até ele virar folha. Aprenderam a torcer o ouro até ele virar flor. Ele fazia broches, pulseiras em espiral, colares tão finos que tremiam com a respiração.

E aprenderam a fazer fechos: fechos pequenos, fechos escondidos, fechos que abriam com um toque no lugar certo — e só no lugar certo. Não havia no céu nem no mar ninguém que soubesse fazer o que ele sabia fazer.

#pagebreak()
#fullbleed("05-hefesto-o-trono-de-ouro", "p. 24", [Hera no trono de ouro flutuando; Hefesto entrando com o martelo, ainda sem estender a mão; Dioniso e Ares ao fundo.])
#pagebreak()
Um dia chegou ao Olimpo um presente para Hera. Era um trono de ouro, o mais bonito que os deuses já tinham visto. Ninguém precisou perguntar quem tinha mandado: só existia um par de mãos assim no mundo inteiro.

E dentro do ouro, onde ninguém enxergava, Hefesto tinha escondido uma pergunta: quem me mandou embora, que me peça para voltar.

Hera sentou-se no trono. O trono subiu um palmo do chão e ficou ali, parado no ar, com ela em cima — presa por laços que não se viam.

Os deuses puxaram. Puxaram de um lado, puxaram do outro, puxaram todos juntos, com as sandálias escorregando no mármore. O trono não abriu, e não desceu. Aquele fecho tinha um dono só, e o dono estava na forja, lá embaixo.

Então Ares foi buscar Hefesto pela força. Foi de armadura, foi de elmo, foi de lança, e entrou na forja gritando ordens.

Saiu bem mais depressa do que entrou. Saiu numa nuvem de fumaça, com as sobrancelhas chamuscadas e cheirando a metal quente.

E saiu sem Hefesto.

Aí foi Dioniso. Dioniso não gritou e não arrombou nada. Bateu na porta e esperou. Levou uvas da própria vinha, levou flauta, levou tambor e levou tempo. Sentou-se num banco perto da bigorna e escutou o dia inteiro o que Hefesto tinha para contar — que era muita coisa, e fazia nove anos que ninguém pedia para ouvir.

No fim da tarde, Hefesto pegou o martelo e as tenazes. Dioniso trouxe um burro, e Hefesto montou de lado, sem pressa nenhuma. Subiram juntos para o Olimpo, e atrás deles subiu a festa inteira: flauta, tambor, uvas e gente dançando pela estrada.

A sala do Olimpo estava esperando. Hera no ar. Os deuses de mãos abertas. Ares emburrado no canto, de elmo debaixo do braço.

Hefesto atravessou a sala apoiado no bastão, com o martelo na mão, e todos os rostos viraram para ele.

Ele estendeu a mão e abriu o fecho que só ele sabia abrir. O trono desceu devagar e pousou no chão. Hera se levantou, e ficou olhando para ele.

Hefesto não foi embora depois. Escolheu a sua parte do monte, montou a sua forja ali e acendeu o fogo.


#voce-sabia[
Hefesto construiu os próprios apoios. Homero conta que ele fez, com as próprias mãos, ajudantes de ouro parecidas com moças de verdade, que falavam, andavam e o amparavam quando ele caminhava. Na mesma oficina saíam tripés com rodas de ouro, que iam sozinhos até a sala dos deuses e voltavam. São as máquinas automáticas mais antigas de que a literatura tem notícia.
]

#glossario-do-capitulo[
- _Hefesto_ (_Hḗphaistos_, "hê-FAIS-tos") — deus do fogo e das forjas; o melhor artesão do céu. Fazia as armas, os móveis e os palácios dos deuses.
- _Forja_ — oficina onde se aquece o metal no fogo para dar forma a ele com o martelo.
- _Bigorna_ — bloco pesado de ferro sobre o qual o ferreiro bate no metal quente.
- _Tenaz_ — pinça grande de ferro para segurar o metal em brasa sem se queimar.
- _Tétis_ (_Thétis_, "TÉ-tis") — ninfa do mar que acolheu Hefesto na gruta. ⚠️ Não confundir com _Tétis, a Titânide_ (_Tēthýs_), do capítulo 10.
- _Dioniso_ (_Diónysos_) — deus da vinha, da festa e do cortejo; carrega o tirso e um cacho de uvas.
- _Tirso_ — bastão enfeitado de hera, com uma pinha na ponta, que Dioniso sempre leva.
- _Ares_ (_Árēs_) — deus da guerra, sempre armado de elmo, lança e escudo.
- _Olimpo_ — o monte mais alto da Grécia, onde moram os deuses.
]


#pagebreak()

#chapter-title(numero: 6, titulo: "Deméter e Perséfone")

Onde Deméter passava, o trigo subia. Onde a filha dela brincava, o campo era só flor.

A filha se chamava Perséfone. Naquela manhã ela colhia violetas, açafrões e íris num prado macio, tão longe da mãe que a voz de uma não alcançava a outra.

Debaixo de tudo, mais fundo que as raízes, havia um outro reino. Quem mandava nele era Hades, irmão de Zeus, o dono do mundo de baixo. E o chamavam de Hospedeiro de Muitos.

No meio do prado nasceu uma flor que não estava ali antes: um narciso de cem cabeças, com um cheiro tão doce que fazia o céu rir.

Perséfone se abaixou para colher a flor mais bonita de todas — e a terra se abriu.

Quando Deméter chegou ao campo, só havia flores caídas no chão, e nenhuma filha.

Ela chamou. Chamou de novo. Ninguém respondeu. Então acendeu duas tochas, uma em cada mão, e saiu procurando. Procurou nove dias; e nas nove noites, aquelas duas chamas eram os únicos pontos de luz andando pelo mundo.

Duas testemunhas tinham escutado o que aconteceu no prado. Duas, e mais nenhuma.

Hécate saiu da caverna dela com uma tocha na mão.

— Eu ouvi o grito — disse ela. — Mas não vi quem levou.

E foi junto, procurar também.

Hélio, o Sol, que atravessa o céu inteiro todo dia e enxerga tudo o que acontece embaixo, parou os cavalos.

— Eu vi — disse ele. — Foi Hades quem a levou para o mundo de baixo. E ela não queria ir.

Então Deméter parou de fazer crescer.

As sementes ficaram na terra sem brotar. As árvores não deram fruto. Os campos ficaram cinzentos, e os bois puxaram o arado de um lado para o outro o dia inteiro, à toa, sem que nada nascesse atrás deles.

Quando a terra parou, Zeus mandou buscar Perséfone.

Quem desceu foi Hermes, de sandálias aladas e bastão de ouro. Atravessou o mundo de baixo e deu o recado: a mãe dela a quer de volta.

Hades não discutiu. Mandou preparar o carro de ouro e os cavalos imortais. Mas, antes de deixá-la ir, deu a Perséfone, às escondidas, uma semente de romã. E quem come alguma coisa no mundo de baixo sempre tem de voltar ao mundo de baixo.

Lá em cima, Deméter esperava em Elêusis. Viu o carro de ouro chegando e correu.

Perséfone saltou antes de o carro parar, correu pelo campo cinzento e caiu no pescoço da mãe. Deméter fechou os dois braços em volta dela e não disse nada. As tochas caíram no chão e apagaram.

E ali, no lugar exato onde as duas se abraçaram, uma flor começou a abrir. Depois outra. Depois o campo inteiro, em leque, correndo para longe: narcisos, açafrões, violetas, jacintos, íris. Lá no fundo, o trigo se levantou.

Por causa da semente, Perséfone passa uma parte do ano lá embaixo, no reino de Hades, e o resto do ano com a mãe.

Enquanto ela está embaixo, a terra descansa e espera.

E toda vez que ela volta, quem a vê primeiro é a mãe.


#voce-sabia[
Nos livros de hoje, Perséfone quase sempre come seis sementes de romã, uma para cada mês de inverno. No poema grego mais antigo que conta esta história, o _Hino Homérico a Deméter_, ela come _uma só_. E o acordo também não é de metade do ano: é de _uma parte_ do ano embaixo e _duas partes_ com a mãe. A versão de sete grãos veio bem depois, com o poeta romano Ovídio.
]

#glossario-do-capitulo[
- _Perséfone_ (_Persephónē_, "per-SÉ-fo-ne") — filha de Deméter; passa uma parte do ano no mundo de baixo e o resto com a mãe. Os gregos também a chamavam de _Coré_, "a Menina". ⚠️ Proparoxítona: nunca "perse-FÔ-ne".
- _Deméter_ (_Dēmḗtēr_, "de-MÉ-ter") — deusa do grão e de tudo o que cresce da terra; carrega espigas de trigo e, nesta história, duas tochas.
- _Hades_ (_Háidēs_, "Á-des") — irmão de Zeus, o dono do mundo de baixo. O poema o chama de _Hospedeiro de Muitos_, o nome de quem recebe muita gente em casa.
- _Hécate_ (_Hekátē_, "É-ca-te") — deusa que mora numa caverna e ouve tudo o que atravessa o ar; anda sempre com uma tocha.
- _Hélio_ (_Hḗlios_, "É-lio") — o Sol; atravessa o céu num carro puxado por cavalos e por isso vê tudo o que acontece na terra.
- _Romã_ — fruta de casca dura, cheia de sementes vermelhas por dentro. _6 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P2, por estarem ancorados no corrido: _Elêusis_ ("Lá em cima, Deméter esperava em Elêusis"), _narciso_ (o prado inteiro é de flores nomeadas) e _arado_ ("os bois puxaram o arado de um lado para o outro… sem que nada nascesse atrás deles"). O verbete de _Hades_ perdeu a explicação demográfica do epíteto (X9): "Hospedeiro de Muitos" fica como _nome_, e a pergunta de onde vem tanta gente é respondida na p. 52, não no glossário da criança.
]

#pagebreak()
#fullbleed("06-demeter-e-persefone", "p. 30", [Perséfone abraçada a Deméter, os pés ainda no ar; flores abrindo a partir do abraço.])
#pagebreak()

#pagebreak()

#chapter-title(numero: 7, titulo: "Perseu e a Medusa: o escudo-espelho")

O pai de Perseu era Zeus. O avô dele era um rei que tinha medo.

O oráculo tinha avisado o rei Acrísio que um dia ele seria vencido pelo próprio neto. Então o rei pôs a filha, Dânae, e o bebê dentro de um baú de madeira, e mandou o baú para o mar.

Dânae ficou acordada a noite inteira. O bebê dormiu.

De manhã o baú encalhou na praia de Sérifos. Um pescador chamado Díctis puxou os dois para fora da água e levou os dois para casa dele. Foi ali que Perseu cresceu.

O irmão de Díctis era o rei da ilha. Chamava-se Polidectes, e queria casar com Dânae. Dânae não queria. E Perseu já era grande demais para o rei fazer o que bem entendesse.

Então o rei deu um banquete e pediu um presente a cada convidado. Todos prometeram cavalos. Perseu não tinha cavalo nenhum — e disse, alto, na frente de todo mundo, que não recuaria nem diante da cabeça da Górgona.

#pagebreak()
#fullbleed("07-perseu-e-a-medusa", "p. 32", [Perseu de costas, olhando o reflexo da Medusa adormecida no escudo-espelho; a foice de adamante ainda baixa.])
#pagebreak()
— Então me traga a cabeça da Górgona — disse o rei.

Perseu foi. E não foi sozinho.

Atena e Hermes seguiram na frente dele, abrindo o caminho. Levaram-no até três irmãs muito velhas, as Greias, que tinham um olho só para as três e um dente só para as três, e iam passando os dois de mão em mão.

Perseu esperou. Quando o olho saiu de uma mão e ainda não tinha chegado na outra, ele o pegou no ar.

— Me digam onde estão guardadas as três coisas de que eu preciso — pediu — e eu devolvo.

Elas disseram. Ele devolveu o olho, com cuidado, e foi buscar as três coisas. Sandálias com asas para os pés. Um alforje para carregar. E o elmo de Hades, que deixa invisível quem o põe na cabeça.

Hermes emprestou a quarta: uma foice de adamante, uma pedra tão dura que não quebra.

As Górgonas moravam no fim do mundo, do outro lado do mar. Eram três irmãs de cabeça coberta de escamas, com presas de javali, mãos de bronze e asas de ouro para voar. Quem olhasse para elas virava pedra. Duas não podiam morrer nunca. A Medusa podia.

Perseu chegou pelo ar e encontrou as três dormindo.

Ele deu as costas para elas. Levantou o escudo de bronze de Atena e olhou só para o reflexo: lá dentro, pequena e longe, a Medusa dormia.

Atena pôs a mão sobre a mão dele.

Perseu ergueu a foice de Hermes — sem tirar os olhos do escudo.

E então o mundo ficou quieto.

Do chão levantou-se um cavalo branco, com asas. Perseu nunca tinha visto uma coisa assim. O cavalo bateu as asas uma vez e subiu, e o nome dele era Pégaso.

Perseu guardou a cabeça da Górgona no alforje e fechou o alforje. As duas irmãs acordaram e saíram atrás dele — mas ele tinha posto o elmo, e ninguém alcança o que não consegue ver.

Em Sérifos, a mãe não estava em casa. Ela e Díctis tinham se escondido, porque o rei tinha perdido a paciência de esperar.

Perseu entrou no palácio, onde Polidectes estava com os amigos. Desviou o rosto e abriu o alforje.

E cada um ficou parado do jeito que estava.

Perseu fez Díctis rei de Sérifos.

Depois devolveu o resto. As sandálias, o alforje e o elmo, a Hermes. A cabeça da Górgona, a Atena, que a prendeu bem no meio do escudo dela — e está lá até hoje.

Ficou só com a história.


#voce-sabia[
O cavalo com asas mais famoso do mundo nasceu bem aqui, nesta história. O poeta Hesíodo explica o nome dele: _Pégaso_ vem de _pēgaí_, que em grego quer dizer _"fontes"_ — porque ele nasceu perto das nascentes do Oceano, lá no fim do mundo. Quem conta assim é a _Teogonia_, um poema grego com quase três mil anos.
]

#glossario-do-capitulo[
- _Perseu_ (_Perseús_, "per-SEU") — filho de Dânae e de Zeus, criado por um pescador na ilha de Sérifos.
- _Medusa_ (_Médousa_) — uma das três Górgonas, e a única que podia morrer. Quem a olhasse virava pedra.
- _Górgonas_ (_Gorgónes_) — três irmãs de cabeça coberta de escamas, presas de javali, mãos de bronze e asas de ouro.
- _Greias_ (_Graîai_, "GREI-as") — três irmãs grisalhas desde que nasceram, com um olho e um dente para dividir entre as três.
- _Oráculo_ — resposta que os gregos pediam aos deuses sobre o que ainda ia acontecer.
- _Adamante_ (_adámas_, "o que não se dobra") — nas histórias gregas, a pedra mais dura que existe: nada a arranha e nada a quebra. A foice de Perseu, a _harpē_, era feita dela. _6 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P2–P3, por estarem ancorados no corrido ou no box: _Dânae_ (apresentada em cena), _alforje_ ("um alforje para carregar"), _elmo_ ("o elmo de Hades, que deixa invisível quem o põe na cabeça"), _Pégaso_ (o box inteiro é dele) e _Sérifos_ ("a praia de Sérifos"). O verbete de _foice_ foi substituído pelo de _adamante_, que é a informação que a ressalva de fidelidade obriga a dar.
]


#pagebreak()

#chapter-title(numero: 8, titulo: "Teseu e o Minotauro: o fio no labirinto")

No coração da ilha de Creta havia um palácio, e debaixo do palácio havia o Labirinto.

Quem o tinha construído era Dédalo, que era arquiteto e sabia fazer corredores. Aqueles corredores davam voltas, e as voltas davam em outras voltas, e ninguém que entrava encontrava o caminho de volta.

Lá no fundo morava o Minotauro, que tinha rosto de touro e corpo de gente. Ele também nunca tinha saído dali.

De tempos em tempos, um navio de vela negra partia de Atenas. Levava sete rapazes e sete moças, e era o preço que a cidade pagava ao rei Minos. Os pais iam até o porto e voltavam sem os filhos. Depois o navio voltava também, com a vela negra e sem ninguém.

Na vez em que aquilo tinha de acontecer outra vez, os pais de Atenas reclamaram alto — e quem os ouviu foi Teseu, que era filho do rei Egeu.

#pagebreak()
#fullbleed("08-teseu-e-o-minotauro", "p. 36", [Teseu no coração do Labirinto, o fio na mão; a sombra do Minotauro projetada na parede.])
#pagebreak()
— Eu vou junto — disse ele.

Não foi sorteado. Escolheu.

Egeu não conseguiu impedir. Fez uma coisa só: entregou ao piloto do navio uma segunda vela, branca, dobrada.

— Se ele voltar vivo — disse o velho —, iça a branca. Eu vou estar olhando o mar.

Em Creta, quem olhou primeiro para Teseu foi Ariadne, filha de Minos. Ela não tinha exército, não tinha chave e não tinha força nenhuma. Tinha uma ideia — e a ideia nem era dela. Foi procurar Dédalo e perguntou como se sai do Labirinto. E Dédalo, que tinha feito o problema, sabia a solução.

À noite, Ariadne pôs nas mãos de Teseu um novelo de fio.

— Prende a ponta na porta — disse ela. — E não solta o resto.

Foi o que ele fez. Amarrou a ponta do fio na porta do Labirinto, entrou no escuro e foi deixando a linha correr atrás de si, volta por volta, corredor por corredor. Do lado de fora, Ariadne segurava a porta e esperava. Não dava para ver nada. Só dava para ver o fio, que ia diminuindo na mão dele e crescendo no chão.

O que aconteceu no fundo do Labirinto, só o Labirinto viu.

Teseu saiu de lá. Saiu recolhendo o fio, enrolando de novo o que tinha desenrolado, e a linha o trouxe até a porta onde ele mesmo a tinha amarrado. Os sete rapazes e as sete moças saíram com ele, e o navio partiu naquela noite.

Na volta, o navio parou na ilha de Naxos. Ariadne ficou ali — e ali, contam os poetas mais antigos, o deus Dioniso a tomou por esposa para sempre, e ela nunca mais envelheceu.

Depois o navio parou em Delos, aquela mesma ilha. Foi ali que a alegria pegou todo mundo de uma vez. Teseu e os jovens dançaram na praia uma dança de voltas e desvoltas, entrando e saindo em fila. Os habitantes de Delos deram um nome a ela: a Grua. E a dançaram por séculos.

Depois disso o navio seguiu para casa, e no navio ninguém se lembrou da vela.

Nem Teseu, nem o piloto. Tal era a alegria.

Egeu olhava o mar todo dia. Quando o navio apareceu no horizonte, a vela ainda era negra — e Egeu foi ao encontro do mar.

Contam que foi por isso que aquele mar ganhou o nome dele.

Atenas ficou de luto e ficou de pé. E quem olha aquele mar até hoje diz o nome do rei que ficava olhando.


#voce-sabia[
A dança de Teseu em Delos existiu de verdade. Os gregos a chamavam _a Grua_ (_géranos_), porque a fila de dançarinos parecia um bando dessas aves, e diziam que os passos imitavam "as passagens circulares do Labirinto". Setecentos anos depois da história, o escritor Plutarco anotou que os moradores de Delos ainda a dançavam.
]

#glossario-do-capitulo[
- _Teseu_ (_te-SEU_) — príncipe de Atenas, filho do rei Egeu; o rapaz que se ofereceu para ir a Creta no lugar de outro.
- _Labirinto_ (_la-bi-RIN-to_) — construção de corredores que se cruzam e se repetem, feita para que quem entra não ache a saída.
- _Minotauro_ (_mi-no-TAU-ro_) — a criatura de rosto de touro e corpo de gente que vivia no Labirinto. O nome próprio dela, nas histórias antigas, era _Astérion_.
- _Ariadne_ (_a-ri-AD-ne_) — filha do rei Minos, de Creta; foi ela quem deu o fio a Teseu.
- _Egeu_ (_e-GEU_) — rei de Atenas, pai de Teseu. O mar Egeu tem o nome dele.
- _novelo_ (_no-VE-lo_) — bola de fio enrolado. Desenrolando um novelo, dá para marcar por onde se passou. _6 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P3, por estarem ancorados no corrido ou no box: _Dédalo_ ("que era arquiteto e sabia fazer corredores"), _Minos_ ("o preço que a cidade pagava ao rei Minos") e _Grua_ (o box explica o nome e a ave).
]


#pagebreak()

#chapter-title(numero: 9, titulo: "Midas: O toque de ouro")

No palácio do rei Midas, na Frígia, a festa já ia pelo décimo dia.

Tinha começado assim. Uns camponeses acharam nas vinhas um velho que havia se perdido do seu grupo: cabeça calva, barba branca, pesado de anos e cansado de tanto andar. Andava devagar e parava muito. Amarraram-no com correntes de flores e o levaram ao rei. Midas olhou uma vez e reconheceu: era Sileno, o velho que tinha criado o deus Dioniso desde pequeno.

Então o rei desatou as flores, sentou Sileno no melhor lugar da sala e mandou abrir a festa. Ela durou dez dias e dez noites.

Na manhã do décimo primeiro dia, Midas levou o velho de volta ao seu deus.

Dioniso era jovem, sem barba, de cabelos longos e coroa de hera. Quando viu Sileno chegar inteiro, ficou tão contente que disse:

#pagebreak()
#fullbleed("09-midas-o-toque-de-ouro", "p. 40", [Midas à mesa farta, o pão já virado ouro pálido a meio caminho da boca.])
#pagebreak()
— Peça o que você quiser. O que pedir, eu dou.

Midas não pensou muito.

— Faça com que tudo o que eu tocar vire ouro.

O deus ficou um instante calado. Depois concedeu, triste.

Midas saiu correndo para experimentar.

Puxou um raminho verde de uma azinheira, e o raminho endureceu de ouro na mão dele. Pegou uma pedra do chão, e a pedra amarelou. Colheu uma maçã, e ela ficou pesada e brilhante como um sol pequeno. O rei ria alto. Passou a mão nas colunas da porta só para ver, e as colunas acenderam. Atrás dele o palácio foi ficando mais claro, sala por sala.

Mandou pôr a mesa.

Puseram pão, carne, uvas e uma jarra de água. Midas sentou-se com fome de rei e pegou o pão.

Levou o pão à boca.

O pão era duro, frio e brilhante. Não dava para comer.

Ninguém na sala disse nada.

Ele pegou uma uva. A uva endureceu entre os dedos. Pegou outra, e outra, e o cacho inteiro virou enfeite.

O rei ficou olhando aquele cacho como se olhasse uma palavra escrita numa língua que ele não sabia ler.

Puxou o prato para perto, e o prato virou ouro com a comida dentro, tudo num bloco só.

Então pediu água. Ergueram a jarra — e a água virou ouro antes de chegar aos lábios dele.

Midas ficou sentado à mesa mais rica do mundo, com fome e com sede.

Levantou os braços, que reluziam, e chamou o deus.

— Eu errei — disse. — Pedi errado. Tira isso de mim.

Dioniso escutou, e não repreendeu. Desfez o presente e explicou o caminho:

— Vai ao rio que passa perto de Sardes. Sobe pela margem, montanha acima, até onde a água nasce da pedra. Ali mergulha a cabeça e o corpo inteiro na espuma, e a correnteza leva embora o que ficou.

Midas foi. Subiu o rio até a nascente e entrou na água fria de cabeça e tudo.

E a força do ouro saiu dele e passou para o rio.

Desde aquele dia o Pactolo corre com areia dourada, e os campos das margens guardam uma veia pálida de metal.

O rei voltou para casa com as mãos vazias. E almoçou.


#voce-sabia[
A história não terminou no rio. No mesmo poema, Ovídio conta que, numa disputa de música entre Pã e Apolo, Midas disse que Pã tinha tocado melhor — e Apolo esticou as orelhas dele em orelhas de burro. Midas as escondeu debaixo de um turbante, e só o barbeiro sabia. Sem aguentar o segredo, o barbeiro cavou um buraco no chão e sussurrou lá dentro. No lugar cresceram caniços que, quando o vento passa, contam tudo até hoje.
]

#glossario-do-capitulo[
- _Midas_ (_Mídas_, "MI-das") — rei da _Frígia_, um povo que existiu de verdade. É um homem, não um deus. Usa o gorro de ponta caída dos frígios, o _barrete frígio_.
- _Sileno_ (_Seilēnós_, "si-LÊ-no") — o velho que criou Dioniso quando ele era pequeno, e que anda com ele por toda parte, montado num burrico.
- _Pactolo_ (_Paktōlós_, "pac-TO-lo") — rio que passa perto de _Sardes_, na Turquia de hoje, e que corre com areia dourada.
- _Azinheira_ — árvore parecida com o carvalho, de folha dura e sempre verde; é dela que Midas arranca o raminho. _4 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P3: _Dioniso_ (verbete único do livro, já impresso pelo cap. 5 — dedup), _Frígia_ (já impresso pelo cap. 1; o barrete migrou para o verbete de Midas), _sátiro_ (palavra difícil usada só para definir outra palavra difícil — o verbete de Sileno foi reescrito sem ela), _Sardes_ e _nascente_ (ancorados no corrido) e _guirlanda_ (que _não aparece_ no texto: lá são "correntes de flores").
]


#pagebreak()

#chapter-title(numero: 10, titulo: "Do Caos ao Olimpo")

Antes de tudo, havia o Caos.

Caos não quer dizer bagunça. Quer dizer abertura: uma fenda escancarada, um vazio enorme e escuro onde ainda não havia nada — e onde tudo ainda ia caber.

Da abertura veio Gaia, a Terra de peito largo, que é chão firme para sempre. E Gaia, sozinha, gerou um filho do tamanho exato dela, para cobri-la inteira: Urano, o Céu estrelado. Depois gerou as montanhas, e depois o mar.

Então Gaia e Urano tiveram filhos juntos.

Primeiro doze irmãos enormes, os Titãs, e o mais novo e o mais terrível deles se chamava Cronos. Depois três ferreiros com um olho só no meio da testa, os Ciclopes. Depois três gigantes com cem braços cada um, os Cem-Mãos.

Urano olhou aqueles filhos e não gostou de nenhum.

Um por um, assim que nasciam, ele os empurrava de volta para dentro da Terra e não deixava nenhum vir à luz. E se alegrava com isso.

Gaia ficou apertada por dentro, cheia de filhos que não podiam sair.

#pagebreak()
#fullbleed("10a-do-caos-abertura", "p. 44", [Gaia emergindo da terra até a cintura; Urano como o céu estrelado arqueado sobre ela.])
#pagebreak()
Então ela fabricou uma foice de adamante — pedra cinzenta, tão dura que nada quebra —, com dentes serrilhados, mostrou a foice aos filhos e perguntou quem tinha coragem. Todos ficaram calados. Só Cronos estendeu a mão e pegou.

E naquela noite o Céu se afastou da Terra e nunca mais desceu. Ficou onde está até hoje, bem lá em cima.

Cronos reinou no lugar do pai.

Só que Gaia e Urano tinham avisado uma coisa a ele: um filho seu ia lhe tomar o lugar, do mesmo jeito. Cronos passou a ter medo dos próprios filhos.

Então, toda vez que Reia, a mulher dele, tinha um bebê, Cronos pegava o bebê e engolia. Inteiro. Héstia, Deméter, Hera, Hades, Posêidon: cinco.

O pai tinha empurrado os filhos para dentro da terra. Agora o filho empurrava os filhos para dentro de si.

#pagebreak()
#fullbleed("10b-do-caos-os-libertados", "p. 46", [Zeus, Posêidon e Hades libertando os Ciclopes e os Cem-Mãos; o raio recém-forjado, ainda quente.])
#pagebreak()
Quando o sexto estava para nascer, Reia foi pedir socorro a Gaia. E fez o que a Terra mandou: teve o bebê de noite, escondida numa gruta de Creta, e deixou o menino ali. Depois voltou para o marido com uma trouxa de panos nos braços.

Dentro dos panos havia uma pedra do tamanho de um bebê.

Cronos engoliu sem olhar.

O menino da gruta era Zeus, e cresceu longe do pai. Quando estava crescido, voltou e deu a Cronos uma coisa que fez Cronos devolver tudo o que tinha engolido.

Primeiro saiu a pedra.

Depois saíram os cinco, inteiros e vivos, do mesmo jeito que tinham entrado. E era essa a família: gente que cabe inteira dentro de alguém. Muito tempo depois, o próprio Zeus faria o que o pai fazia — e o que saiu dele saiu já crescido e já de armadura. Mas isso é outro capítulo, e você já leu.

Agora eram seis contra os Titãs, e seis é pouco.

Zeus foi então até o lugar mais fundo debaixo da terra, onde Urano tinha acorrentado os Cem-Mãos, e soltou os três. Deu a eles néctar e ambrosia, a comida e a bebida dos deuses, até que ficassem fortes de novo. Coto, Briareu e Giges olharam a luz, que não viam havia tanto tempo, e disseram que lutariam.

Zeus soltou também os Ciclopes.

E os Ciclopes agradeceram do jeito que sabiam: acenderam a forja. Bateram naquelas bigornas até sair de lá o trovão, o relâmpago e o raio, e puseram o raio na mão de Zeus. Fizeram um tridente de três pontas e deram a Posêidon. E fizeram um elmo de deixar invisível quem o põe na cabeça, e deram a Hades — o mesmo elmo que, muitos e muitos anos depois, um rapaz chamado Perseu ia pedir emprestado.

A guerra durou dez anos inteiros.

Não era uma guerra de soldados: era uma tempestade. Cronos e os Titãs que ficaram do lado dele estavam num monte, os deuses estavam no outro, e no meio o mar fervia, a terra bramia e o ar rachava de trovão. Dez anos, e nenhum dos dois lados ganhava.

Aí entraram os Cem-Mãos.

Trezentas pedras de uma vez, e mais trezentas, e o céu escureceu de pedra. Os Titãs foram vencidos e levados para muito longe, lá embaixo, mais fundo que o fundo, atrás de portões de bronze. O lugar se chama Tártaro.

E quem ficou tomando conta dos portões foram Coto, Briareu e Giges — que um dia tinham estado presos ali.

Terminada a guerra, os deuses foram até Zeus e pediram que ele fosse o rei. Ele aceitou, e repartiu as honras entre todos.

Depois os três irmãos sacudiram as sortes, para ver quem ficava com quê. A Posêidon coube o mar cinzento. A Hades, o mundo de baixo, com a névoa e o escuro. A Zeus coube o céu largo, com as nuvens e o ar claro.

E sobrou uma coisa que ninguém sorteou: a terra, e o alto Olimpo. Essas duas ficaram sendo dos três ao mesmo tempo.

Zeus estava com o raio na mão e podia ter ficado com tudo. Ficou com um terço, e com dois irmãos.


#voce-sabia[
O raio não nasceu com Zeus: foi fabricado. Quem o fez foram os Ciclopes, três ferreiros, em agradecimento por terem sido soltos. Na mesma ocasião eles forjaram o tridente de Posêidon e o elmo de Hades, que deixa invisível. Os três objetos mais famosos da mitologia grega saíram da mesma forja, no mesmo dia — e nenhum dos três é um poder de nascença. São presentes.
]

#glossario-do-capitulo[
- _Caos_ (_Kháos_, "CA-os") — não é bagunça: é _abertura_, uma fenda escancarada. O vazio enorme que existia antes de tudo, e onde tudo coube depois.
- _Gaia_ (_Gaîa_, "GÁI-a") — a Terra, e ao mesmo tempo uma deusa. Os poetas a chamam de "a de peito largo" e "o assento firme de todos". É ela quem dá conselho em toda esta história.
- _Urano_ (_Ouranós_, "u-RA-no") — o Céu estrelado, filho de Gaia e depois companheiro dela. Do nome dele vem o nome do planeta Urano.
- _Cronos_ (_Krónos_, "CRO-nos") — o mais novo dos doze Titãs, pai de Zeus. ⚠️ Não é o Tempo: _Chronos_, com H, é outra palavra grega e outra figura. Confusão antiga, mas confusão.
- _Cem-Mãos_ ou _Hecatônquiros_ (_Hekatónkheires_, "he-ca-TON-qui-ros") — Coto, Briareu e Giges: três gigantes com cem braços e cinquenta cabeças cada um. Primeiro prisioneiros, depois guardas da porta.
- _Tártaro_ (_Tártaros_, "TÁR-ta-ro") — o lugar mais fundo que existe, tão abaixo da terra quanto a terra está abaixo do céu. É uma prisão, e _não_ é o mundo de baixo de Hades: são dois lugares diferentes. _6 verbetes ✔_ (teto R5.2 = 6). _Dedup verificada contra os capítulos 1–9:_ ficaram de fora _adamante_ (verbete único do cap. 7), _Olimpo_ (cap. 5), _Hades_, _Posêidon_, _tridente_ e _Deméter_ (caps. 2 e 6), _titânide_ (cap. 3). Ficaram de fora por estarem ancorados no corrido: _Ciclopes_ ("três ferreiros com um olho só no meio da testa"), _Reia_ ("a mulher dele"), _néctar e ambrosia_ ("a comida e a bebida dos deuses"), _Héstia_ (nomeada de passagem e sem capítulo), _Titãs_ ("doze irmãos enormes").
]


#pagebreak()

// ============================================================================
// 6. APARATO PÓS-TEXTUAL (pp. 49–54) — corpo 9,5/12 pt, 2 colunas (X5)
// ============================================================================

// ---- pp. 49–50 · Glossário ----
#pagina-aparato("Glossário", [
  #set text(size: 9.5pt)
  #set par(leading: 0.26em)
  _Nomes, grafia, transliteração e palavras difíceis do livro, capítulo a capítulo. Um termo,
  um verbete (livro-spec R5.2)._

  - _xenia_ (_xenía_) — palavra grega para o dever de receber bem quem chega de fora. Na Grécia antiga era uma obrigação sagrada, dos dois lados: quem recebe e quem é recebido.
- _Zeus Xénios_ (Zeús Xénios) — "Zeus dos Estrangeiros": o nome de Zeus quando ele protege viajantes e visitantes. Fechar a porta a um forasteiro era ofendê-lo.
- _Hermes_ (Hermês) — mensageiro dos deuses e guia dos viajantes, jovem e sem barba. Carrega o _bastão de ouro de três ramos_ que Apolo lhe deu (a história está no capítulo 4) e sandálias com asas nos pés. _(Muito tempo depois, os gregos passaram a desenhar esse mesmo bastão com duas serpentes enroladas e a chamá-lo de _caduceu_.)_ ⚠️ _Verbete único do livro (X2):_ um objeto, um nome — _bastão de ouro_. O cap. 4 é a autoridade sobre ele; este verbete e a ilustração deste capítulo obedecem ao cap. 4.
- _tília_ — árvore europeia de flores muito perfumadas, com que se faz chá de tília. Em inglês chama-se _lime tree_, e por isso muita gente a confunde com o limoeiro: _ela não dá limão nenhum._ Baucis virou tília.
- _carvalho_ — árvore grande e de madeira dura, _a árvore sagrada de Zeus_. Filêmon virou carvalho.
- _vime_ — vara fina e flexível, tirada de certos arbustos, com que se tecem cestos, cercas e paredes de casa simples. As paredes da casa de Baucis e Filêmon eram de vime.
- _choupana_ — casa muito simples, feita de materiais do mato, como varas e palha.
- _faia_ — árvore de madeira clara; dela se faziam copos e tigelas escavados.
- _Frígia_ — região de colinas onde hoje fica a Turquia.
- _grinalda_ — coroa de flores ou folhas, feita para pendurar ou para pôr na cabeça.
- _acrópole_ (_akrópolis_) — "cidade alta": o rochedo no alto de uma cidade grega, onde ficavam os templos. A de Atenas é a mais famosa de todas.
- _Atena_ (Athēnâ) — deusa da sabedoria, dos ofícios e da guerra pensada. Nasceu da cabeça de Zeus, já adulta e armada. Anda com elmo, lança e escudo; seus bichos e plantas são a _coruja_ e a _oliveira_. Atenas leva o nome dela.
- _Posêidon_ (Poseidôn) — deus do mar, irmão de Zeus. Carrega o _tridente_, com que abre a terra e agita as águas.
- _tridente_ — lança de três pontas, usada de verdade por pescadores gregos. É o objeto que distingue Posêidon de Zeus, que são os dois barbados e parecidos.
- _égide_ — o peitoral de Atena, franjado, com uma cabeça de monstro desenhada no meio. De onde veio essa cabeça, o capítulo de Perseu conta.
- _oliveira_ — árvore de folhas prateadas que dá azeitona e azeite. Vive séculos, aguenta seca e brota de novo do toco.
- _azeite_ — óleo tirado da azeitona. Na Grécia antiga servia para cozinhar, para passar no corpo e para _acender lamparina_: era comida e luz ao mesmo tempo.
- _Cécrops_ (Kékrops) — o primeiro rei de Atenas. Diziam que ele tinha nascido da própria terra da cidade e que, por isso, era homem de cima e serpente de baixo.
- _testemunha_ — quem estava presente e viu uma coisa acontecer, e pode contar depois o que viu.
- _Delos_ (_DÉ-los_) — ilha pequena e rochosa do mar Egeu, onde nasceram Ártemis e Apolo. Não confundir com _Delfos_, que é outro lugar.
- _Astéria_ (_as-TÉ-ri-a_) — "a estrelada": o nome da ilha enquanto ela ainda vagava pelo mar.
- _Leto_ (_LÉ-to_) — titânide, filha de Céos e Febe, mãe de Ártemis e Apolo. Em latim é chamada Latona.
- _Ártemis_ (_ÁR-te-mis_) — deusa das florestas, dos animais selvagens e da caça; carrega arco e aljava e nunca quis se casar. Irmã gêmea de Apolo, e a mais velha por alguns minutos.
- _Apolo_ (_a-PO-lo_) — deus da música, do arco de prata e dos oráculos: é ele que diz às pessoas a vontade de Zeus. Também chamado _Febo_, "o brilhante".
- _lira_ (_LI-ra_) — instrumento de cordas dedilhadas, tocado com os dedos ou com uma palheta; o instrumento de Apolo.
- _palmeira_ — a árvore em que Leto se apoiou. Séculos depois, ainda era mostrada aos visitantes de Delos.
- _titânide_ (_ti-TÃ-ni-de_) — mulher da geração dos Titãs, anterior aos deuses do Olimpo. Leto é uma delas.
- _Maia_ (_MÁI-a_) — ninfa, filha do titã Atlas; morava sozinha numa caverna do monte Cilene e é a mãe de Hermes.
- _lira de tartaruga_ ou _chélys_ (_QUÉ-lis_) — a lira feita com um casco de tartaruga por caixa de som. Foi a primeira de todas.
- _ninfa_ (_NIN-fa_) — moça divina que vive num rio, numa montanha, numa floresta ou no mar. Não é deusa do Olimpo, mas também não morre.
- _arauto_ (_a-RAU-to_) — quem leva e anuncia os recados de alguém importante. Hermes viria a ser o arauto dos deuses; o bastão de ouro é a marca do ofício. _4 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P2, por estarem ancorados no corrido: _Cilene_ ("numa caverna do monte Cilene"), _rebanho_ ("o cuidado de todos os rebanhos: dali em diante Hermes seria o deus dos pastores") e o verbete duplicado de _Hermes_.
- _Hefesto_ (_Hḗphaistos_, "hê-FAIS-tos") — deus do fogo e das forjas; o melhor artesão do céu. Fazia as armas, os móveis e os palácios dos deuses.
- _Forja_ — oficina onde se aquece o metal no fogo para dar forma a ele com o martelo.
- _Bigorna_ — bloco pesado de ferro sobre o qual o ferreiro bate no metal quente.
- _Tenaz_ — pinça grande de ferro para segurar o metal em brasa sem se queimar.
- _Tétis_ (_Thétis_, "TÉ-tis") — ninfa do mar que acolheu Hefesto na gruta. ⚠️ Não confundir com _Tétis, a Titânide_ (_Tēthýs_), do capítulo 10.
- _Dioniso_ (_Diónysos_) — deus da vinha, da festa e do cortejo; carrega o tirso e um cacho de uvas.
- _Tirso_ — bastão enfeitado de hera, com uma pinha na ponta, que Dioniso sempre leva.
- _Ares_ (_Árēs_) — deus da guerra, sempre armado de elmo, lança e escudo.
- _Olimpo_ — o monte mais alto da Grécia, onde moram os deuses.
- _Perséfone_ (_Persephónē_, "per-SÉ-fo-ne") — filha de Deméter; passa uma parte do ano no mundo de baixo e o resto com a mãe. Os gregos também a chamavam de _Coré_, "a Menina". ⚠️ Proparoxítona: nunca "perse-FÔ-ne".
- _Deméter_ (_Dēmḗtēr_, "de-MÉ-ter") — deusa do grão e de tudo o que cresce da terra; carrega espigas de trigo e, nesta história, duas tochas.
- _Hades_ (_Háidēs_, "Á-des") — irmão de Zeus, o dono do mundo de baixo. O poema o chama de _Hospedeiro de Muitos_, o nome de quem recebe muita gente em casa.
- _Hécate_ (_Hekátē_, "É-ca-te") — deusa que mora numa caverna e ouve tudo o que atravessa o ar; anda sempre com uma tocha.
- _Hélio_ (_Hḗlios_, "É-lio") — o Sol; atravessa o céu num carro puxado por cavalos e por isso vê tudo o que acontece na terra.
- _Romã_ — fruta de casca dura, cheia de sementes vermelhas por dentro. _6 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P2, por estarem ancorados no corrido: _Elêusis_ ("Lá em cima, Deméter esperava em Elêusis"), _narciso_ (o prado inteiro é de flores nomeadas) e _arado_ ("os bois puxaram o arado de um lado para o outro… sem que nada nascesse atrás deles"). O verbete de _Hades_ perdeu a explicação demográfica do epíteto (X9): "Hospedeiro de Muitos" fica como _nome_, e a pergunta de onde vem tanta gente é respondida na p. 52, não no glossário da criança.
- _Perseu_ (_Perseús_, "per-SEU") — filho de Dânae e de Zeus, criado por um pescador na ilha de Sérifos.
- _Medusa_ (_Médousa_) — uma das três Górgonas, e a única que podia morrer. Quem a olhasse virava pedra.
- _Górgonas_ (_Gorgónes_) — três irmãs de cabeça coberta de escamas, presas de javali, mãos de bronze e asas de ouro.
- _Greias_ (_Graîai_, "GREI-as") — três irmãs grisalhas desde que nasceram, com um olho e um dente para dividir entre as três.
- _Oráculo_ — resposta que os gregos pediam aos deuses sobre o que ainda ia acontecer.
- _Adamante_ (_adámas_, "o que não se dobra") — nas histórias gregas, a pedra mais dura que existe: nada a arranha e nada a quebra. A foice de Perseu, a _harpē_, era feita dela. _6 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P2–P3, por estarem ancorados no corrido ou no box: _Dânae_ (apresentada em cena), _alforje_ ("um alforje para carregar"), _elmo_ ("o elmo de Hades, que deixa invisível quem o põe na cabeça"), _Pégaso_ (o box inteiro é dele) e _Sérifos_ ("a praia de Sérifos"). O verbete de _foice_ foi substituído pelo de _adamante_, que é a informação que a ressalva de fidelidade obriga a dar.
- _Teseu_ (_te-SEU_) — príncipe de Atenas, filho do rei Egeu; o rapaz que se ofereceu para ir a Creta no lugar de outro.
- _Labirinto_ (_la-bi-RIN-to_) — construção de corredores que se cruzam e se repetem, feita para que quem entra não ache a saída.
- _Minotauro_ (_mi-no-TAU-ro_) — a criatura de rosto de touro e corpo de gente que vivia no Labirinto. O nome próprio dela, nas histórias antigas, era _Astérion_.
- _Ariadne_ (_a-ri-AD-ne_) — filha do rei Minos, de Creta; foi ela quem deu o fio a Teseu.
- _Egeu_ (_e-GEU_) — rei de Atenas, pai de Teseu. O mar Egeu tem o nome dele.
- _novelo_ (_no-VE-lo_) — bola de fio enrolado. Desenrolando um novelo, dá para marcar por onde se passou. _6 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P3, por estarem ancorados no corrido ou no box: _Dédalo_ ("que era arquiteto e sabia fazer corredores"), _Minos_ ("o preço que a cidade pagava ao rei Minos") e _Grua_ (o box explica o nome e a ave).
- _Midas_ (_Mídas_, "MI-das") — rei da _Frígia_, um povo que existiu de verdade. É um homem, não um deus. Usa o gorro de ponta caída dos frígios, o _barrete frígio_.
- _Sileno_ (_Seilēnós_, "si-LÊ-no") — o velho que criou Dioniso quando ele era pequeno, e que anda com ele por toda parte, montado num burrico.
- _Pactolo_ (_Paktōlós_, "pac-TO-lo") — rio que passa perto de _Sardes_, na Turquia de hoje, e que corre com areia dourada.
- _Azinheira_ — árvore parecida com o carvalho, de folha dura e sempre verde; é dela que Midas arranca o raminho. _4 verbetes ✔_ (teto R5.2 = 6). Saíram na poda da onda P3: _Dioniso_ (verbete único do livro, já impresso pelo cap. 5 — dedup), _Frígia_ (já impresso pelo cap. 1; o barrete migrou para o verbete de Midas), _sátiro_ (palavra difícil usada só para definir outra palavra difícil — o verbete de Sileno foi reescrito sem ela), _Sardes_ e _nascente_ (ancorados no corrido) e _guirlanda_ (que _não aparece_ no texto: lá são "correntes de flores").
- _Caos_ (_Kháos_, "CA-os") — não é bagunça: é _abertura_, uma fenda escancarada. O vazio enorme que existia antes de tudo, e onde tudo coube depois.
- _Gaia_ (_Gaîa_, "GÁI-a") — a Terra, e ao mesmo tempo uma deusa. Os poetas a chamam de "a de peito largo" e "o assento firme de todos". É ela quem dá conselho em toda esta história.
- _Urano_ (_Ouranós_, "u-RA-no") — o Céu estrelado, filho de Gaia e depois companheiro dela. Do nome dele vem o nome do planeta Urano.
- _Cronos_ (_Krónos_, "CRO-nos") — o mais novo dos doze Titãs, pai de Zeus. ⚠️ Não é o Tempo: _Chronos_, com H, é outra palavra grega e outra figura. Confusão antiga, mas confusão.
- _Cem-Mãos_ ou _Hecatônquiros_ (_Hekatónkheires_, "he-ca-TON-qui-ros") — Coto, Briareu e Giges: três gigantes com cem braços e cinquenta cabeças cada um. Primeiro prisioneiros, depois guardas da porta.
- _Tártaro_ (_Tártaros_, "TÁR-ta-ro") — o lugar mais fundo que existe, tão abaixo da terra quanto a terra está abaixo do céu. É uma prisão, e _não_ é o mundo de baixo de Hades: são dois lugares diferentes. _6 verbetes ✔_ (teto R5.2 = 6). _Dedup verificada contra os capítulos 1–9:_ ficaram de fora _adamante_ (verbete único do cap. 7), _Olimpo_ (cap. 5), _Hades_, _Posêidon_, _tridente_ e _Deméter_ (caps. 2 e 6), _titânide_ (cap. 3). Ficaram de fora por estarem ancorados no corrido: _Ciclopes_ ("três ferreiros com um olho só no meio da testa"), _Reia_ ("a mulher dele"), _néctar e ambrosia_ ("a comida e a bebida dos deuses"), _Héstia_ (nomeada de passagem e sem capítulo), _Titãs_ ("doze irmãos enormes").
])

// ---- p. 51 · De onde vêm estas histórias (fontes + bibliografia comprimida — R5.3) ----
#pagina-aparato("De onde vêm estas histórias", [
  _Uma página para quem lê em voz alta. Cada capítulo deste livro nasceu de um poeta com nome e data. Aqui está qual, e o que mudamos pelo caminho._

_1 · Baucis e Filêmon._ A única versão conservada é latina: Ovídio, _Metamorfoses_ VIII, onde os dois deuses são _Júpiter e Mercúrio_. Grafar _Zeus_ e _Hermes_ é decisão editorial deste livro, não dado da fonte. O lastro grego é a _teoxenia_ de Homero (_Odisseia_ XVII.485–488) e o culto de _Zeus Xénios_. No original a aldeia é destruída; aqui, o vale vira lago. _(57)_

_2 · A disputa por Atenas._ Seguimos _Apolodoro_ (III.14.1), em que a fonte é de água salgada e o veredito se dá _por testemunho de Cécrops_ — a comparação dos presentes é tradição ovidiana. O cavalo (Virgílio) e o voto dos cidadãos (Varrão _apud_ Agostinho) foram vistos e não adotados. A planície inundada é a _Triásia_; o culto conjunto dos dois deuses no _Erecteion_ é histórico. _(59)_

_3 · Leto e a ilha que ninguém queria._ _Hino Homérico a Apolo_, a parte délia. O oráculo que Apolo promete "aqui" é o de _Delos_; o oráculo famoso, o de _Delfos_, fica no continente e vem depois, quando o deus mata a serpente Píton e toma o lugar dela. Delos e Delfos são duas casas do mesmo deus. A ilha errante chamava-se _Astéria_. _(55)_

_4 · O bebê, o gado e a lira._ _Hino Homérico a Hermes_. No poema, Hermes não devolve o rebanho inteiro: _duas vacas são abatidas_ junto ao fogo e repartidas em _doze porções_, uma para cada deus — a primeira oferenda do mundo. Nosso texto silencia a cena e, por isso, também não afirma que todas voltaram. O juramento falso do bebê ficou fora. _(54)_

_5 · O trono de ouro._ A história chega por duas vias independentes: _Alceu_ de Lesbos (fr. 349, séc. VII–VI a.C.) e _Pausânias_ (I.20.3), que descreve a cena pintada no templo de Dioniso em Atenas. Duas testemunhas separadas por seis séculos contam o mesmo enredo — é o que autoriza um episódio sem poema conservado inteiro. O vinho de Dioniso virou companhia. _(55)_

_6 · Deméter e Perséfone._ _Hino Homérico a Deméter_. _Uma_ semente de romã, dada "às escondidas" (_láthrē_, v. 372) — as seis ou sete sementes vêm de Ovídio e dos recontos modernos. O acordo é de _uma parte_ do ano embaixo e _duas_ com a mãe, não de metade. O episódio de Elêusis e os _Mistérios_ que dele nasceram ficaram fora. _(55)_

_7 · Perseu e a Medusa._ _Apolodoro_ (2.4.2), inclusive a foice de _adamante_ e a mão de Atena. A variante de Ovídio — a Medusa castigada por Atena — foi vista e _não adotada_: é romana, tardia, e faz da vítima uma culpada. O escudo: Apolodoro diz apenas "um escudo de bronze"; foram os pintores de vasos que fizeram dele o escudo de Atena. Seguimos os pintores. _(59)_

_8 · Teseu e o Minotauro._ _Apolodoro_ (Epít. 1.7–1.11), _Higino_ (_Fábulas_ 41–43) e _Plutarco_ (_Vida de Teseu_ 15–22, de onde vem a dança da Grua). O tributo é _anual_ em Higino e _de nove em nove anos_ em Plutarco — por isso escrevemos "de tempos em tempos". Sobre Ariadne em Naxos as fontes divergem: casamento com Dioniso (Hesíodo, Apolodoro), abandono (Higino), fuga (Plutarco). _(56)_

_9 · O toque de ouro._ Ovídio, _Metamorfoses_ XI.85–145 — inclusive a água que vira ouro nas mãos do rei. _A filha transformada em estátua não é grega:_ é invenção de Nathaniel Hawthorne (1851), e não entra aqui. A variante em que Midas captura Sileno embriagando-o numa fonte (Heródoto VIII.138, Xenofonte I.2.13) foi vista e não adotada. _(50)_

_10 · Do Caos ao Olimpo._ _(a redigir na onda P4 — 60 palavras reservadas.)_

  === Para ler mais (e para ler junto)

  Os quatro poetas deste livro são _Homero_ (ou melhor: a tradição que leva esse nome), _Hesíodo_, os autores anônimos dos _Hinos Homéricos_ e o romano _Ovídio_. Os três primeiros escreveram em grego entre os séculos VIII e VI a.C.; Ovídio, em latim, na virada para a nossa era — sete séculos depois, e é bom lembrar disso quando ele conta uma história grega. A eles somam-se dois compiladores tardios de que ninguém escapa: _Apolodoro_ (a _Biblioteca_, séc. I–II d.C.) e _Higino_, além do viajante _Pausânias_, que no séc. II d.C. percorreu a Grécia anotando o que via nos templos — e é por isso que ele aparece tanto nas linhas acima: às vezes a única testemunha de um mito é uma pintura que ele descreveu.

Em português, as traduções que recomendamos ao adulto curioso são a _Teogonia_ de Hesíodo por _Jaa Torrano_ (Iluminuras), a _Odisseia_ e a _Ilíada_ por _Frederico Lourenço_ (Penguin/ Companhia das Letras) ou por _Carlos Alberto Nunes_ (Hedra), os _Hinos Homéricos_ por _Ordep Serra_ (Odysseus) e as _Metamorfoses_ de Ovídio por _Domingos Lucas Dias_ (Ed. 34). Nenhuma linha deste livro foi traduzida dessas edições: os capítulos foram _recontados a partir do enredo_, e as citações eventuais vêm de traduções em domínio público.

Para consulta rápida e confiável na internet, em inglês: _Theoi Project_ (theoi.com), que reúne as passagens antigas mito a mito, e a _World History Encyclopedia_ (worldhistory.org). Para as imagens: o acervo _Open Access do Metropolitan Museum_ (metmuseum.org), de onde vêm as referências de cerâmica ática que orientaram a arte destas páginas.

E, se a criança quiser mais depois de fechar o livro: os mitos gregos não têm versão oficial. Cada poeta contou do seu jeito, e discordar deles é uma tradição de três mil anos.

_(~300 palavras ✔)_
])

// ---- pp. 52–53 · Perguntas que as crianças fazem (R5.3) ----
#pagina-aparato("Perguntas que as crianças fazem", [
  _Estas são as perguntas que aparecem de verdade quando se lê este livro em voz alta. As respostas estão escritas para serem ditas assim como estão — e nenhuma delas mente._

  === Capítulo 1 — Baucis e Filêmon

_— E os vizinhos, que não abriram a porta?_ O vale deles virou um lago. A história não conta o que aconteceu com cada um, e a gente também não vai contar. O que ela conta é que a casa que abriu a porta ficou de pé.

_— Por que os deuses estavam disfarçados?_ Porque assim ninguém abre a porta por medo, nem para ganhar alguma coisa. Quem abre, abre porque quer.

_— Eles morreram no fim?_ Eles ficaram velhinhos, muito velhinhos, e viraram duas árvores no mesmo instante — que era exatamente o que os dois tinham pedido: não ficar sozinho.

=== Capítulo 2 — A disputa por Atenas

_— E as pessoas, quando o mar subiu?_ O mar cobriu a planície do lado da cidade, onde tem plantação e não tem casa, e depois baixou. As pessoas estavam lá em cima, no rochedo.

_— Ela saiu mesmo da cabeça de Zeus?_ Saiu — já crescida e já de armadura. Como uma pessoa inteira cabe dentro de uma cabeça é justamente o que o último capítulo do livro conta.

_— Posêidon ficou sem nada?_ Não. A fonte dele ficou lá em cima, guardada dentro de um templo, e os atenienses cuidaram das duas coisas. Perder a cidade não é o mesmo que ser posto para fora dela.

=== Capítulo 3 — Leto e a ilha que ninguém queria

_— Por que ninguém queria receber a Leto?_ Porque tinham medo do que ia acontecer com elas. A ilha também tinha medo — a diferença é que disse sim mesmo com medo.

_— A ilha ficou rica?_ Não, e Leto tinha avisado que não ficaria. O chão continuou duro. O que ela ganhou foi parar de vagar sozinha pelo mar.

=== Capítulo 4 — Hermes, o gado e a lira

_— O que aconteceu junto ao fogo?_ Hermes fez a primeira fogueira do mundo e preparou comida, e a parte maior ele repartiu para os deuses. No poema antigo, duas vacas ficaram por lá. Por isso a nossa história diz que as vacas voltaram, e não diz quantas.

_— Ele não foi de castigo?_ Não. Zeus achou graça — e o que resolveu a briga foi Hermes dar de presente a coisa mais bonita que tinha feito.

_— Bebê de um dia faz isso?_ Nas histórias gregas, deus recém-nascido já sai andando e falando. É uma das melhores coisas que essas histórias inventaram.

=== Capítulo 5 — Hefesto, o trono de ouro

_— Por que a mãe dele não quis ficar com ele?_ Porque ela errou. A história diz isso com todas as letras: quem errou foi ela, e não o bebê.

_— Ele ficou bravo para sempre?_ Ele fez uma pergunta em forma de trono: _quem me mandou embora, que me peça para voltar._ E alguém pediu. O que aconteceu depois entre os dois, a história deixa em aberto.

=== Capítulo 6 — Deméter e Perséfone

_— Que grito foi esse que a Hécate ouviu?_ O de Perséfone chamando pela mãe quando a terra se abriu. Hécate estava na caverna dela e ouviu sem ver; quem viu foi o Sol, que vê tudo.

_— Por que o Hades deu a semente para ela?_ Porque quem come alguma coisa lá embaixo sempre volta lá para baixo. Ele deu às escondidas, sem explicar a regra — e é por isso que ela vai e volta até hoje.

_— Quem mora no mundo de baixo?_ Todo mundo que já viveu, um dia. Por isso o chamavam de Hospedeiro de Muitos: é o rei que recebe mais gente em casa.

=== Capítulo 7 — Perseu e a Medusa

_— Por que o avô mandou o bebê para o mar?_ Porque tinha ouvido que um dia perderia para o próprio neto, e teve medo. Foi ele quem fez a coisa errada, não o bebê.

_— O que aconteceu com o rei Polidectes?_ Ele e os amigos ficaram parados do jeito que estavam, virados em pedra. Perseu não olhou. Quem mandou buscar aquela cabeça foi o próprio rei.

_— Ele machucou as velhinhas?_ Não. Ele pegou o olho no ar, pediu uma informação e _devolveu_ o olho, com cuidado. É a primeira vez que ele devolve alguma coisa neste capítulo — e no fim ele devolve tudo.

=== Capítulo 8 — Teseu e o Minotauro

_— O que aconteceu com as outras crianças?_ Os sete rapazes e as sete moças saíram do Labirinto com Teseu e voltaram para casa no mesmo navio. Foi por isso que houve dança em Delos.

_— Por que Ariadne ficou em Naxos?_ Aqui as histórias antigas discordam entre si. A que este livro conta é a mais antiga: ela ficou e se casou com o deus Dioniso. Outros poetas contam que Teseu a deixou lá — e essa versão existe, mas não é a única.

_— O pai do Teseu morreu?_ O navio chegou com a vela errada, o rei foi ao encontro do mar, e o mar ficou com o nome dele. A história para aí, e a gente também. Atenas ficou de luto e ficou de pé.

=== Capítulo 9 — Midas, o toque de ouro

_— Ele ia ficar com fome para sempre?_ Não. Ele pediu ajuda no mesmo dia, o deus desfez o presente, e a última coisa que ele faz na história é almoçar.

_— Por que ele pediu uma coisa dessas?_ Porque não pensou muito. Todo mundo já pediu alguma coisa sem pensar — a diferença é que a dele foi atendida.

_— A menina que virou estátua de ouro não está aqui?_ Não, e não está de propósito: essa parte não é grega. Foi um escritor americano que a inventou, quase dois mil anos depois. No poema grego, o que vira ouro é a comida.

  === O que mudamos, e por quê

  #set text(size: 8.5pt)
  - _Cap. 1_ — a aldeia destruída no original ficou em elipse: aqui, o vale vira lago.
- _Cap. 1_ — o ganso não é preparado nem morto; termina vivo, na cena.
- _Cap. 2_ — _Métis_, a mãe de Atena, não é nomeada; o livro não a nega em nenhuma linha.
- _Cap. 2_ — a inundação da Triásia é contada sem nenhuma pessoa em quadro.
- _Cap. 3_ — Hera não é nomeada como quem persegue Leto; fica "nenhuma terra ousava recebê-la".
- _Cap. 3_ — a deusa do parto retida por Hera (correção 4.2) não entra na narrativa.
- _Cap. 4_ — o abate das duas vacas, a morte da tartaruga e o juramento falso ficaram fora.
- _Cap. 5_ — o vinho de Dioniso foi trocado por companhia.
- _Cap. 5_ — a queda de Hefesto em Lemnos não é contada; ele é recolhido por Tétis.
- _Cap. 6_ — Perséfone é levada sem querer; a cena não é mostrada, e nenhum motivo é dado.
- _Cap. 6_ — o consentimento de Zeus ao rapto ficou omitido, nem afirmado nem negado.
- _Cap. 6_ — Demofonte e o jejum de nove dias ficaram fora.
- _Cap. 7_ — a chuva de ouro e a concepção de Perseu ficaram fora; a paternidade é uma linha.
- _Cap. 7_ — o golpe acontece fora de quadro; Andrômeda e a morte de Acrísio não entram.
- _Cap. 7_ — as ninfas que guardavam os três objetos foram comprimidas em "onde estavam guardadas".
- _Cap. 8_ — Pasífae e a origem do Minotauro ficaram fora; ele já existe na primeira página.
- _Cap. 8_ — Plutarco diz rochedo; seguimos Higino, que diz o mar.
- _Cap. 8_ — o que acontece no fundo do Labirinto não é narrado.
- _Cap. 9_ — no poema, Sileno está pesado de vinho; aqui, só de cansaço.
- _Cap. 9_ — o vinho da mesa virou água, que é o que Ovídio também transforma em ouro.
- _Cap. 9_ — as orelhas de burro saíram da narrativa e ficaram no box.
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
