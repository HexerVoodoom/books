# Handoff — Livro 2 da coleção: Equidna e seus filhos

> **Status: run NÃO iniciado.** Não existe `producao/state/grega-equidna.json` e nenhuma fase
> foi aberta. Este documento é a **entrada da Fase 0**, escrito por quem fechou o livro 1
> (Grécia) para que a próxima sessão comece com o problema já mapeado — não é um artefato de
> fase e não substitui o `livro-spec.md`, que é o que a Fase 0 tem de produzir.

Slug proposto: **`grega-equidna`** · Posição na série: **livro 2**

---

## 1. O problema central deste livro (leia antes de qualquer coisa)

Equidna é a "mãe dos monstros". Os filhos dela são Cérbero, a Hidra, a Quimera, a Esfinge,
Ladon, Órtro, o Leão de Nemeia, a Águia do Cáucaso, o Dragão da Cólquida — e **quase todos
morrem nas mãos de um herói**, vários deles do mesmo herói (Héracles).

Escrito ingenuamente, este livro é a história de uma mãe cujos filhos são mortos um a um,
capítulo após capítulo, para uma criança de 4 anos. É provavelmente a estrutura mais pesada
que a coleção poderia produzir.

E as duas saídas fáceis estão **proibidas pelas regras da própria squad**:

- Fazer todos sobreviverem viola `adequacao-etaria.md`: *"Nunca: falsificar o desfecho do
  mito para 'acabar bem'."*
- Contar as mortes como elas são viola *"tensão sim, terror não"* e *"toda cena assustadora
  resolve dentro do capítulo"*.

**Portanto: o enquadramento do livro é a decisão nº 1 da Fase 0, e nada deve ser escrito
antes de ela estar fechada no gate humano.** As opções mapeadas estão na seção 3.

---

## 2. O que já está resolvido e não precisa ser rediscutido

Este livro nasce com muito mais chão pronto que o livro 1, porque **é a mesma cultura**.

| Item | Situação | Onde está |
|---|---|---|
| Camada cultural visual | **Herda inteira do livro 1** — moldura de vaso ático (meandro, palmetas, ovas-e-dardos) + aquarela Mucha, mesma paleta hex | `producao/grega/guia-de-estilo.md` |
| Tipografia da série | **Fechada no livro-piloto**: Libertinus Serif (display) + DejaVu Sans (corpo) | `references/serie-padroes.md` |
| Formato físico | Trim 20,5 × 20,5 cm, sangria 3 mm, 300 DPI (2492×2492 px por ilustração) | `references/pipeline-impressao.md` |
| Pipeline de geração de imagem | Método completo e verificado (Gemini web via `claude-in-chrome`, JFIF→PNG, linha de proporção obrigatória, upscale 1,2168× Lanczos) | `references/estilo-ilustracao.md` + `~/.claude/CLAUDE.md` |
| Toolchain de diagramação | Typst + Ghostscript instaláveis sem admin; `miolo.typ` do livro 1 é template parametrizado reutilizável | `references/pipeline-impressao.md`, `producao/grega/diagramacao/miolo.typ` |
| Character sheets reutilizáveis | Zeus e Hermes já existem em 4:3, aprovados | `producao/grega/ilustracoes/character-sheets/` |

**Consequência prática:** este run deve gastar seu esforço em **pesquisa, enquadramento e
escrita**, não em reinventar direção de arte ou produção. A Fase 3a herda o guia de estilo do
livro 1 e só acrescenta as descrições canônicas das criaturas novas.

---

## 3. Decisão nº 1 — o enquadramento (para o gate humano da Fase 0)

### Opção A — "Os Guardiões" ⭐ *recomendada*

A maior parte dos filhos de Equidna **guarda alguma coisa**: Cérbero guarda o portão dos
mortos, Ladon guarda a árvore de maçãs douradas, o Dragão da Cólquida guarda o Velo de Ouro,
Órtro guarda o gado de Gerião, a Esfinge guarda uma estrada com uma pergunta. Fio condutor:
*deram a cada um uma coisa para guardar, e cada um guardou.*

- **Por que é forte:** é factualmente verdadeiro (não inventa nada), dá ao livro uma
  mensagem central de coleção — cuidado, dever, lealdade — e permite escolher capítulos que
  não exigem morte, sem falsificar nada.
- **Custo:** exclui ou marginaliza a Hidra e a Quimera, que são as criaturas mais famosas e
  as que uma criança provavelmente já viu.

### Opção B — "O outro lado da história"

As aventuras dos heróis contadas do ponto de vista de quem estava do outro lado.

- **Por que é tentador:** camada adulta deliciosa (dupla audiência), e o livro 1 já provou
  que a coleção aguenta sofisticação.
- **Risco sério:** transforma Héracles em vilão. Isso é uma **falha de fidelidade** (ele não
  é vilão em fonte nenhuma) e confunde uma criança de 4 anos que talvez conheça o Hércules.

### Opção C — Bestiário (livro de retratos, não de narrativa)

Um capítulo-retrato por criatura, sem arco narrativo.

- **Risco:** colide com a estrutura da coleção, que pede capítulos narrativos com mensagem
  central extraída do mito (`CONTRACT.md` §0).

> **Recomendação de quem escreve este handoff:** Opção A, com a Opção B entrando **apenas
> como camada adulta discreta** (uma ou duas frases por capítulo que o adulto capta e a
> criança não precisa captar) — exatamente o registro que o livro 1 já usa. Mas **a decisão é
> do humano no gate da Fase 0**, e o `mito-cetico` deve atacar a escolha antes de ela fechar.

---

## 4. Decisão nº 2 — o problema do Héracles

Héracles mata quatro ou cinco filhos de Equidna. Se o livro tem a mãe como centro emocional,
ele vira o antagonista por acumulação, mesmo sem o texto dizer isso.

O livro precisa segurar as duas coisas ao mesmo tempo: **Héracles é um herói de verdade E é o
que aconteceu com essa família.** Não é contradição — é a coisa mais adulta que a coleção pode
oferecer, e cabe num livro infantil se a voz do narrador não julgar.

Precedente já aprovado no livro 1, que resolve exatamente esse tipo de tensão: no cap. 10,
Cronos engole os filhos e o narrador **não o classifica** — a mudança de onda P4 cortou
justamente a frase em que o narrador classificava o que tinha acabado de contar.

**Sugestão a testar no gate:** Héracles aparece cumprindo trabalhos que **não escolheu** (os
doze trabalhos são uma punição/expiação — verificar com o pesquisador). Isso é fiel à fonte e
tira dele a moldura de "caçador de monstros por esporte" sem inventar nada.

---

## 5. Decisão nº 3 — o modelo da série mudou?

O `CONTRACT.md` §0 diz: *"um livro por mitologia (grega, nórdica, egípcia…)"*. Este livro é o
**segundo livro grego**. Isso significa que a coleção passa de *"um livro por mitologia"* para
*"livros temáticos agrupados por mitologia"*.

Não é uma questão de arquivo — é **decisão de produto** e afeta capa, numeração, lombada,
sumário da coleção e como o livro 3 é planejado. Precisa ser respondida explicitamente no gate
da Fase 0, e o `CONTRACT.md` §0 + `references/serie-padroes.md` precisam ser atualizados
depois, se a resposta for sim.

---

## 6. Proposta de sumário (rascunho para a Fase 0 atacar, não para aceitar)

Estrutura espelhando o livro 1: **9 capítulos específicos + 1 capítulo geral**, 56 páginas.

| # | Capítulo | O filho | Morre? | Nota |
|---|---|---|---|---|
| 1 | A caverna de Equidna | — | — | Abertura: quem é a mãe. Meio moça, meio serpente, numa caverna. |
| 2 | Órtro, o cão de duas cabeças | Órtro | ✝ sim | O irmão mais simples. Guarda o gado de Gerião. |
| 3 | O dragão que nunca dormia | Dragão da Cólquida | **não** | Medeia o faz dormir; Jasão leva o Velo. O dragão fica. |
| 4 | Ladon e as maçãs de ouro | Ladon | **variante** | Numa versão Héracles o mata; noutra, Atlas busca as maçãs e Ladon nem é tocado. |
| 5 | A pergunta da Esfinge | Esfinge | ✝ sim | A adivinha é ouro puro para 4–7 anos. A morte é elidível. |
| 6 | A Hidra que crescia | Hidra de Lerna | ✝ sim | "Corta uma, nascem duas" é matemática encantadora. A morte é a mais difícil do livro. |
| 7 | A Quimera | Quimera | ✝ sim | **Gancho já plantado no livro 1:** o cap. 7 excluiu Pégaso de propósito. |
| 8 | O leão de pele impossível | Leão de Nemeia | ✝ sim | Em Hesíodo é neto de Equidna (filho de Órtro) — verificar. |
| 9 | Cérbero volta para casa | Cérbero | **NÃO** | ⭐ **Capítulo-âncora.** Ver seção 7. |
| 10 | **Tifão e o pai de tudo** | (o pai) | — | **Capítulo geral.** Ver seção 8. |

⚠️ Isto é um **rascunho de trabalho**. Sete mortes em dez capítulos ainda é muito; a Fase 0
provavelmente deve cortar 2–3 dos capítulos com ✝ e/ou reordenar. A ordem acima já foi pensada
para **terminar em casa** (cap. 9) em vez de terminar em morte.

---

## 7. O capítulo-âncora: Cérbero

Este é o capítulo que torna o livro publicável, e ele **não exige nenhuma falsificação**.

No décimo segundo trabalho, Héracles precisa levar Cérbero para cima. Hades concorda **com uma
condição: sem armas**. Héracles o domina com os braços, leva-o, mostra-o — **e o devolve**.
Cérbero volta para o portão e continua lá. (Apolodoro 2.5.12 — *verificar na fonte*.)

É um final feliz **documentado**, não inventado: o único filho que sai de casa, encontra o
herói, e volta. Se o livro termina aí (antes do capítulo geral), a mãe que abriu o livro
fecha-o com um filho de volta.

Bônus para o mesmo capítulo: **Orfeu adormece Cérbero com música** — outra passagem em que a
criatura não é ferida.

---

## 8. O capítulo geral: Tifão

**Achado verificado nesta sessão:** Tifão e Equidna **não aparecem em nenhuma linha do livro
1** (`grep` em `producao/grega/capitulos/`). O cap. 10 do livro 1 fecha na Titanomaquia e na
partilha do mundo. O espaço narrativo está **livre**, sem risco de duplicação.

Tifão é o último filho de Gaia, o maior adversário que Zeus enfrentou, e é enterrado sob o
Etna — que é por isso que a montanha ferve. É o análogo perfeito do "Do Caos ao Olimpo": a
grande narrativa que explica de onde vem todo mundo do livro.

⚠️ **Para o `mito-pesquisador` verificar antes de virar texto:** existe uma tradição de que
Zeus **poupou** Equidna e os filhos, deixando-os vivos como desafios para os heróis do futuro.
Se isso se confirmar na fonte, é o fecho temático do livro inteiro — e explica por que a mãe
sobrevive a tudo. **Não escrever isso antes de confirmar.**

---

## 9. Direção de arte — a inversão que precisa ser desenhada de propósito

Esta é a mudança conceitual mais importante em relação ao livro 1, e ela **contradiz duas
regras que passaram no gate do livro 1**:

| Livro 1 | Livro 2 |
|---|---|
| O Minotauro só existe como **sombra estática** numa parede lateral, que nunca toca Teseu | As criaturas são as **protagonistas** — precisam de rosto legível e expressivo |
| A Medusa só aparece como **reflexo pequeno e adormecido** dentro do escudo | O leitor de 4 anos tem de **gostar** delas na primeira olhada |

No livro 1, o monstro era o que **não se podia mostrar**. No livro 2, o monstro é quem a
criança precisa **amar**. A direção de arte precisa ser reconstruída em cima dessa inversão —
não é ajuste, é premissa nova, e o `mito-diretor-arte` deve tratá-la como tal na Fase 3a.

Perguntas concretas que a Fase 3a tem de responder:
- Como se desenha um cão de três cabeças **fofo** sem virar desenho animado e sem quebrar a
  fórmula Mucha/aquarela da coleção?
- A Hidra tem quantas cabeças no desenho? (No livro 1 houve um caso idêntico: o Cem-Mãos foi
  **reprovado** por ter braços contáveis — ver `ilustracoes/log-geracao.md`. A mesma armadilha
  vale aqui, ao contrário: se as cabeças forem contáveis, a criança vai contar.)
- Equidna é metade mulher, metade serpente. Como se desenha isso com dignidade materna e sem
  sensualizar? **Esta é a descrição canônica mais delicada do livro.**

---

## 10. Fontes de partida (a verificar, não a citar)

O `mito-pesquisador` levanta e o `mito-fidelidade` confere **de forma independente** — a regra
da squad é que o dossiê nunca é fonte única.

- **Hesíodo, _Teogonia_** ~270–336 — o catálogo dos filhos de Equidna. Fonte primária central.
- **Apolodoro, _Biblioteca_** — Cérbero (2.5.12), Ladon (2.5.11), e as parentelas alternativas.
- **Apolônio de Rodes, _Argonáutica_** IV — o Dragão da Cólquida adormecido por Medeia.
- Grafias em PT-BR: seguir a régua do livro 1 (Torrano para Hesíodo), fixada no `livro-spec`.

⚠️ **Divergências conhecidas de parentela** (a Fase 1 tem de arbitrar e registrar):
a Esfinge e o Leão de Nemeia são, em Hesíodo, filhos de **Órtro** (netos de Equidna, portanto),
mas outras fontes os põem como filhos diretos de Equidna. Cila aparece como filha dela em
algumas fontes e não em outras.

---

## 11. Riscos herdados do livro 1 que ainda estão abertos

Não bloqueiam este run, mas o mesmo humano decide os dois livros:

- Livro 1 fechou com **59 páginas, não 56** (múltiplo de 4 não fechou) — decisão de editor
  pendente. **Não repetir o erro:** medir a ocupação do aparato **antes** de escrever, não
  depois.
- Perfil ICC do livro 1 ainda é o genérico do Ghostscript; a gráfica não foi escolhida.
- Três pendências de arte do livro 1 (raio na capa, tridente da cena 02, elmo da cena 07)
  seguem aguardando o diretor de arte.

---

## 12. Primeiro passo concreto da próxima sessão

Abrir a **Fase 0** com o `mito-orquestrador`, tendo como primeiro item de pauta a **decisão de
enquadramento (seção 3)** — e não o sumário. Sumário sem enquadramento fechado é retrabalho
garantido.
