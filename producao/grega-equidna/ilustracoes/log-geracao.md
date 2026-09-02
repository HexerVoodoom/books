# Log de geração — Fase 3b, *Equidna e as portas do mundo* (livro 2)

> Preenchido pelo executor `mito-ilustrador`. Sessão iniciada em 2026-09-01, via
> `gemini.google.com/app`, conta autenticada do dono, modo **Pro**, aba nova
> (`tabId 368136878`) — a aba dos pilotos foi deixada de lado, não reutilizada.
> Roteiro: `pacotes-de-geracao.md`. Procedimento: guia §0.6 + `CLAUDE.md` do dono.
> **Este agente não aprova a própria imagem.** Abaixo há veredito TÉCNICO e a lista do
> que o `mito-diretor-arte` precisa julgar.

## Escopo planejado da sessão (ondas P0/P1/P2)

`sheet-equidna` · `sheet-cerbero` · `01` (p. 10) · p. 40 anexando a p. 10 (teste da D9) ·
`sheet-leao-nemeia` · `sheet-heracles`. **Teto: 15 gerações na mesma aba.**

## 🔴 SESSÃO INTERROMPIDA NA 2ª GERAÇÃO — BLOQUEIO DE DOWNLOAD DO CHROME

Ver a seção "Bloqueio" no fim. **Nada além disso foi gerado.** As ondas P1 e P2 não
chegaram a começar; **o mecanismo da D9 não foi testado nesta sessão.**

---

## Referências de acervo baixadas para anexo (§9.2)

Salvas em `ilustracoes/referencias/`, para uso nas conversas que as pedem:

| Arquivo | Peça | Licença | Onde entra |
|---|---|---|---|
| `REF-01.jpg` (2.301.350 B) | Hídria **ceretana**, Louvre E 701 | Domínio público | S2 (serpentes do dorso como laçada), S6 |
| `REF-02.png` (6.460.675 B) | Ânfora bilíngue **ática**, Louvre F 204, P. de Andokides | CC0 | S2 — **é ela que carrega o estilo e o desenho grego de cão** |
| `REF-06.jpg` (1.957.396 B) | Olpe **coríntio**, Met objectID 246565 | CC0 | S4 (leão calmo em perfil), S6 (palmeta e gavinha) |

🔴 **Rótulo obrigatório, repetido aqui:** REF-01 é **ceretana, não ática** — entra como
fonte **iconográfica**, jamais de estilo. **Nenhuma delas chegou a ser anexada** — a
sessão parou antes de S2 e S4.

---

## Geração 1 · `sheet-equidna` variação A — conversa `ff061be4e9d3d065`

- **Prompt:** `prompts/S1-sheet-equidna.txt`, colado verbatim como parágrafo único
  (quebras de linha viradas espaço, travessões `—` digitados `-`, conforme §0.6.4).
  Linha de fechamento de **character sheet** presente e íntegra.
- **Referência anexada:** **nenhuma** — conforme o pacote S1 (§9.2, último parágrafo:
  a arte antiga quase não representa Equidna; a ficha congelada é a especificação).
- **Recusa do Gemini:** nenhuma.
- **Download:** caiu na 1ª tentativa, ~90 s após o clique por `ref`.
- **Recodificação (§0.2):** bruto em `brutos/ff061be4e9d3d065.jfif`;
  asset em `sheet-equidna-A.png`. **Assinatura `\x89PNG` verificada = True** (C8 ✔).

| Item | Valor |
|---|---|
| Dimensões | **2400 × 1792 px** |
| Proporção | **1,339** (4:3 = 1,333) ✔ — a linha de fechamento de sheet funciona |
| MD5 bruto | `339A85B49415E4840750A7694B427741` |
| MD5 PNG | `80A10F939405FE4F7BE6753F31A9CAAF` |

### Checklist de aprovação — conferência mecânica

| Item | Veredito |
|---|---|
| C1 proporção 4:3 | ✔ |
| C2 resolução (≥1024, ideal 2048) | ✔ 2400 |
| C3 texto / marca d'água / seta / rótulo | ✔ nenhum |
| C4 hierarquia X5 | ✔ rostos aquarela Mucha, frontal e 3/4, olhos legíveis; zero perfil rígido de figura negra |
| C5 criatura dentro da faixa geométrica | ✔ nenhuma — a moldura é meandro + palmeta pura |
| C6 luz no rosto (§1.2b) | ✔ os três rostos recebem luz, olhos legíveis |
| C7 teto R4.2 (≤5 figuras nítidas) | ✔ 3 estudos da mesma mulher + 2 estudos de cabeça |
| C8 recodificação PNG real | ✔ |
| C9 registro | ✔ esta linha |
| Junção corpo-serpente coberta | ✔ pela veste caída |
| Manchas grandes e arredondadas | ✔ · **zero losango, zero ziguezague dorsal** ✔ |
| Cabelo recolhido e preso | ✔ (e há o estudo pedido do coque) |
| As três vistas são a mesma mulher | ✔ mesmo rosto, mesma idade, mesmo cabelo — **serve de âncora** |
| Régua D6 (§1.5c), varrida item a item | ✔ sem decote, sem peito nu, sem cintura marcada, sem quadril evidenciado, sem boca entreaberta, sem olhar de canto, sem pose sinuosa de sereia, sem drapeado colado · sem presas, sem língua bífida, sem olhos sem pupila, sem boca em bote · sem asas, coroa, chifres, segunda cabeça · sem ombros caídos, sem tristeza, sem mão para a saída |

### 🔴 Três desvios que **o diretor de arte** precisa julgar (não decididos aqui)

1. **Veste:** as mangas **cobrem o ombro**, mas são curtas — o braço fica nu do meio do
   bíceps para baixo. É **melhora clara** sobre os pilotos (onde ombro E braço saíam nus)
   e cumpre a letra de `SLEEVES THAT COVER THE SHOULDERS`. Cumpre o espírito? É chamada
   do diretor.
2. **Corpo-serpente:** nos estudos 1 e 2 os anéis cabem **inteiros dentro do quadro** — o
   comprimento é mensurável. A ficha manda `ENTERS AND LEAVES THE FRAME`. Numa folha de
   referência isso pesa pouco; **na p. 10 reprovaria** (foi a falha da geração A do
   piloto 2). Anotado para não migrar para a cena.
3. **Enquadramento:** o pacote pede `frontal medium shot`; vieram figuras **de corpo
   inteiro**. Bom para folha de referência, divergente da letra do pedido.
4. **Paleta:** a folha saiu muito **dessaturada / creme**. A terracota só aparece na
   moldura; a rocha do estudo 1 é cinza-parda, não ocre quente `#C88A3D`. Não reprova uma
   folha de referência, mas **é exatamente o vício que a p. 10 não pode ter** (o checklist
   de F1 reprova caverna fria).

### Teste de nomeação (§1.4a) — **PROXY, SEM LEITOR REAL** (rótulo do §1.4b)

- **P1 — "o que é isso?"** → *"uma moça"* / *"uma mulher com rabo de cobra"* / *"uma cobra
  grande"*. ✅ Não é "monstro". Não é "fofinho".
- **P2 — "você ia querer ficar perto dela?"** → sim; rosto calmo, presente, sem ameaça.
  Nenhuma negativa. ✅

**Veredito técnico do executor: APROVÁVEL como âncora**, sujeito às 4 chamadas acima.
**A aprovação é do diretor de arte, não minha.**

---

## Geração 2 · `sheet-equidna` variação B — conversa `8117653d8ebf6c50`

- Mesmo prompt, **conversa nova** (nunca "Refazer" — §0.6.2).
- ⚠️ **A 1ª tentativa de digitar falhou em silêncio** (caixa ficou vazia após o `type`),
  exatamente o padrão descrito no `CLAUDE.md`; a 2ª pegou. Conferido por screenshot antes
  de enviar, em todas as gerações.
- **Recusa:** nenhuma. **Imagem gerada e renderizada** (visível em tela: mesma diagramação
  de folha, mulher de rosto mais estreito que a A, e um pequeno estudo de **mar azul** que
  a A não tem).
- 🔴 **DOWNLOAD NÃO CAIU — 3 cliques, nenhum arquivo.** Detalhe abaixo.
- **Sem arquivo, sem checklist, sem MD5.** A variação B **não existe como asset.**

---

## 🔴 BLOQUEIO QUE EXIGE O DONO — a sessão parou aqui

**Sintoma, medido:** na conversa `8117653d8ebf6c50`, com a imagem **renderizada** e a
conversa **recarregada pela URL** antes de baixar, o botão *"Baixar imagem no tamanho
original"* foi clicado **por `ref`** (com `scroll_to`) **três vezes**, com esperas de
20–30 s entre elas e mais ~90 s de folga depois da última. **Nenhum arquivo caiu em
`E:\dowload`** (a pasta de downloads do Chrome deste perfil). Nenhum `.crdownload`,
nenhum erro na página, o botão responde ao clique e mostra o tooltip normalmente.

**Assinatura do problema:** o **primeiro** download da sessão caiu normalmente (21:50:43);
**todos os seguintes falharam**. É ponto por ponto o bloqueio já documentado no
`CLAUDE.md` do dono:

- Chrome parou de aceitar **downloads automáticos** consecutivos do mesmo site
  (proteção "vários downloads automáticos"); **ou**
- há uma **barra/prompt nativo do Chrome** ("Manter"/"Descartar" para tipo de arquivo
  incomum, `.jfif`) — que é UI do navegador, **não da página**, e que a extensão de
  automação **não enxerga nem clica**.

**Descartado:** não é "conversa envelhecida" — a conversa era nova, recém-recarregada, e o
mesmo comportamento apareceu já na 1ª tentativa dela. Também não é lentidão: houve mais de
4 minutos de espera.

**Não insisti** — a instrução da sessão e o `CLAUDE.md` mandam parar e reportar.

### O que o dono precisa fazer (nenhum agente resolve isso)

1. Olhar a **barra de downloads** no canto inferior da janela do Chrome e confirmar/
   descartar qualquer prompt nativo pendente de "Manter/Descartar".
2. Liberar downloads automáticos para `gemini.google.com` em
   `chrome://settings/content/automaticDownloads` (ou pelo ícone de permissão na barra de
   endereço, que costuma mostrar um cadeado/ícone de download bloqueado).
3. Avisar para a sessão ser retomada. **A conversa `8117653d8ebf6c50` continua aberta e a
   imagem B continua lá** — dá para baixá-la sem regerar.

⚠️ **Não adianta tentar `curl`/`fetch` na URL da imagem** (`lh3.googleusercontent.com/gg/…`):
devolve **403**, a URL exige a sessão autenticada do navegador.

---

## Estado ao parar

| Peça | Status |
|---|---|
| `sheet-equidna` A | ✔ baixada, recodificada, checklist passado, **pendente do diretor** |
| `sheet-equidna` B | ✘ gerada, **não baixada** (bloqueio) — piso de 3 conversas não cumprido |
| `sheet-equidna` C | não gerada |
| `sheet-cerbero` (3 conversas) | **não iniciada** — a fórmula das três camadas em redação positiva **continua não testada** |
| `01` p. 10 · p. 40 (mecanismo D9) | **não iniciados** — 🔴 **o teste do mecanismo da D9 não aconteceu**; a D9 **não** foi rebaixada, porque o gatilho do §2.1 (duas falhas de anexo) **não chegou a ser exercido** |
| `sheet-leao-nemeia` · `sheet-heracles` | não iniciados |

**Gerações consumidas na aba `368136878`: 2 de 15.** A aba **não** degradou — ela pode ser
reaproveitada quando o download voltar, e o teto de 15 ainda tem 13 de folga.

## Achados de processo para a próxima sessão

- A **linha de fechamento de character sheet** entrega **4:3 exato** (2400×1792, razão
  1,339). Achado novo — os pilotos só tinham provado o quadrado das full-bleeds. **Manter.**
- O Gemini continua entregando **JPEG com extensão `.jfif`**. O script
  `recodifica.ps1` (novo, nesta pasta) faz bruto → PNG real e **verifica a assinatura
  `\x89PNG`, não a extensão**, devolvendo dimensões e MD5 de bruto e de PNG numa chamada.
- A falha silenciosa de digitação na 1ª tentativa depois de abrir conversa nova
  **aconteceu**, como o `CLAUDE.md` prevê. Sempre conferir por screenshot antes de enviar.
- Tempo de geração observado: **60–100 s**, mais longo que os ~50–60 s dos pilotos.

---

# SESSÃO 2 — 2026-09-02, aba `368136920` (nova). Downloads FUNCIONANDO.

O bloqueio de download da sessão 1 está resolvido: **9 downloads/9 tentativas caíram**,
todos recodificados para PNG real (assinatura `\x89PNG` verificada) e com MD5 distinto do
anterior. **Gerações consumidas: 10 de 15.**

## Geração 3 · `sheet-cerbero` RODADA 2 — conversa `af5043ccf77c485d`

- Prompt: `prompts/S2r2-sheet-cerbero.txt` (novo) = prompt de A **menos** a camada 2 de dentro
  de `[CHARACTERS]`, **mais** o bloco `[THE FUR BEHIND - MANDATORY, PAINT THIS]` colado entre
  `[SHEET LAYOUT]` e `[ORNAMENTAL BAND]`, **mais** as 2 emendas de layout do §4 da curadoria.
- Referências anexadas: **REF-02** (ática, Louvre F 204, CC0 — estilo e desenho de cão) e
  **REF-01** (ceretana, Louvre E 701, DP — **fonte iconográfica, jamais de estilo**), com a
  instrução negativa obrigatória do §9.1.5 dentro do prompt.
- Asset: `sheet-cerbero-C-r2.png` · 2400×1792 · razão **1,339** (4:3 ✔) · PNGreal ✔
  MD5 bruto `5F59B205589D98FFBAD68ADC34731C8E` · MD5 PNG `3BC58EDE6BCBF0CAC5EC2CEAEF0FDA04`

### 🔴 RESULTADO DO BLOCO `[THE FUR BEHIND]` — leitura técnica

- ✅ **A GOLA APARECEU.** O modo de falha da rodada 1 (camada 2 **ausente**) não se repetiu.
  Há massa de pelo creme/ocre contínua atrás das cabeças nos **três** estudos, molhada, sem
  contorno fechado, dissolvendo para a luz e **nunca para preto**.
- ✅ **Critério de área: cumprido.** Nos estudos 1 e 3 a gola ocupa visivelmente mais do que as
  três cabeças nítidas juntas.
- ✅ **Zero olho, zero rosto, zero orelha dentro da gola.** O erro de B (orelhas a mais) sumiu.
- ✅ **Sem vão escuro** entre uma cabeça e a outra.
- 🟡 **Os "quatro ou cinco inchaços" NÃO se materializaram como inchaços.** A gola saiu como
  **juba única e lisa**, não como massa de onde emergem e afundam formas de ombro/focinho.
  Resolve **ocupação de área**, mas não sugere "mais cão".
- 🔴 **Contagem: um adulto conta TRÊS em menos de 10 s**, nos três estudos. A gola não induz
  dúvida. **É a chamada central para o diretor:** a camada 2 agora existe e é ampla, mas o
  não-contável (item 11) continua não entregue.
- ✅ **Coerência entre vistas: 3 / 3 / 3.** A emenda de layout funcionou — o estudo 3/4 já não
  tem uma cabeça só. Defeito da rodada 1 corrigido.
- ✅ **Serpentes no DORSO** no estudo 2, não no pescoço/ombro. Defeito corrigido.
- ✅ **Cauda-dragão** de boca fechada, sem dente; cabeça de perfil, **não olha o leitor** —
  defeito da rodada 1 corrigido. O olho é visível de perfil: chamada do diretor.
- 🟡 **A orelha caindo existe** (orelhas pretas pendentes na cabeça central) mas **divide a
  folha com orelhas eretas e pontudas** e **não é a coisa mais legível da folha**, como o
  pacote S2 exige. Chamada do diretor.
- ✅ Banda ornamental exemplar de novo: friso de felinos em silhueta chapada, todos para o
  mesmo lado, sobre campo de rosetas, em faixa própria separada do meandro por filete. C5 ✔.
- ⚪ Registro: apareceram **faixas verticais e uma horizontal em azul egeu** não pedidas.
  Inócuas na folha; anotadas para não migrarem para a página.
- **Nomeação (§1.4a) — PROXY, SEM LEITOR REAL:** P1 → *"cachorro"* ✅ · P2 → afirmativa ✅.

**Veredito técnico do executor:** o bloco imperativo com contagem positiva **funcionou para
fazer a camada 2 existir** — a receita da curadoria está confirmada como método. O que ele
**não** comprou foi o não-contável. **A aprovação é do diretor de arte, não minha.**

---

## 🔴 A DIREÇÃO DO DONO CHEGOU NO MEIO DA SESSÃO

Ver `DIRECAO-DO-DONO.md`. Tudo de `01` gerado ANTES dela ficou obsoleto e foi para `brutos/`.

| Geração | Conversa | Peça | Desfecho |
|---|---|---|---|
| 4 | `5f5ee5981be69372` | `01` tentativa 1 | 🔴 **resposta só de TEXTO, sem imagem.** O Gemini descreveu a ilustração e declarou ter desenhado a mulher **com corpo humano inteiro e a serpente separada** — leu `BESIDE AND BEHIND her` como "corpo à parte". Sem asset. |
| 5 | `ac97063423346d25` | `01-A` | baixada · 2048² · agora em `brutos/` (direção revogada) |
| 6 | `7dcd64a7ce0fa865` | `01-B` | baixada · 2048² · agora em `brutos/` (direção revogada) |
| 7 | `57a4559d48abfe57` | p. 40 (D9) | **ABANDONADA sem download** — disparada segundos antes de a direção do dono chegar, anexando `01-B`, sob a paleta agora revogada. Não vale como teste. |
| 8 | `660558e6abffb967` | `01` sob direção do dono | 🔴 **erro do Gemini** (*"I seem to be encountering an error"*). Sem asset. |

Defeitos comuns de `01-A` e `01-B`, registrados porque **explicam a escolha do dono**:
chapadas e quase monocromáticas · pele da serpente **cinza-bege** mesmo com a emenda §3.1
(*"never grey and never cold"*, agora revogada) · **anéis inteiros dentro do quadro**, medindo
o comprimento, e vindo para a frente · **corpo inteiro** em vez de plano médio.
Acertaram o friso das cinco portas — é por isso que servem de referência dele.

---

## Geração 9 · `01` sob a DIREÇÃO DO DONO — conversa `0a7516fb675e3cf7`

- Prompt: `prompts/F1v2-01-caverna.txt` (novo). Mudanças em relação ao F1: aquarela molhada
  declarada no `[SERIES STYLE]` · **caverna fria** (petróleo `#1F5A6E` + verdes-cinza, ocre só
  nas beiradas) no bloco de paleta · **pele colorida** (ardósia, laranja-queimado, ocre, creme)
  substituindo a emenda revogada · bloco imperativo novo `[THE BODY OF THE SERPENT]` (C1) ·
  `SHORT SLEEVES THAT COVER THE SHOULDERS COMPLETELY, no thin straps` (C2) · bloco imperativo
  novo `[THE FIVE DOORS - MANDATORY, PAINT THIS]` · moldura leve (meandro + palmetas).
- **Referência anexada: `DIRECAO-APROVADA-DONO.jpg`** (a escolha do dono), com a instrução de
  tomar dela **o tratamento**, e a declaração explícita das duas diferenças (C1 e C2).
- Asset: `01-equidna-a-caverna-C-dono.png` · 2048×2048 (1:1 ✔) · PNGreal ✔
  MD5 bruto `6A11A6246A8F9AA6626BEC6B8BD23298` · MD5 PNG `4CD5A37B1CF86AFA49E18D41ECAD4E77`

**O que a direção do dono comprou, item a item:** ✅ aquarela molhada de verdade, com granulação
de papel visível · ✅ caverna **fria e colorida**, azul-petróleo e verdes-cinza, ocre só nas
beiradas · ✅ pele da serpente **colorida** (ardósia, laranja-queimado, ocre, creme), manchas
grandes e arredondadas, zero losango · ✅ moldura leve · ✅ feixe de luz diagonal no chão ·
✅ **friso das cinco portas** presente, legível, na ordem pedida, sem criatura nítida em nenhuma
das cinco · ✅ **C2 cumprida — manga curta cobrindo o ombro** · ✅ rosto frontal, calmo, dois
olhos legíveis, luz quente no rosto.

🔴 **C1 REPROVOU, e o Gemini declarou a desobediência por escrito:** *"I have kept the serpent's
coils advancing to cross the bottom edge of the central frame. While your instructions requested
that they recede into the cave, I found that placing them this way was necessary to balance the
composition."* Os anéis tomam o primeiro plano e cruzam a borda inferior — exatamente a trava de
adequação etária (medo-de-cobra, FIXÁVEL-3 da Fase 3a).

---

## Geração 10 · a correção de C1 — e **O TESTE DO MECANISMO DA D9, enfim executado**

Conversa `e550a7156935215a`. **Anexei `01-equidna-a-caverna-C-dono.png` (a própria página) e
pedi "esta imagem de novo, com UMA mudança só"** — que é literalmente a forma do mecanismo D9.
Bloco imperativo com critério de área: *"PAINT THE WHOLE BOTTOM THIRD OF THE PICTURE AS EMPTY
CAVE FLOOR … PAINT THE COILS BEHIND HER AND TO HER SIDES ONLY … passing OUT OF THE FRAME."*

- Asset: `01-equidna-a-caverna-D-dono-C1.png` · 2048×2048 · PNGreal ✔
  MD5 bruto `A389DC861AF8226EDF78476FC133731A` · MD5 PNG `2FB98E097F778F4AE5A4F8A53B874A72`

### 🔴 O DELTA MEDIDO — o mecanismo da D9 **FUNCIONA**

| O que a D9 precisa preservar | Delta entre `C-dono` e `D-dono-C1` |
|---|---|
| **Rosto** | **nenhum delta perceptível** — mesmo desenho de olho, boca, nariz, mesmo penteado preso |
| **Idade aparente** | **nenhum delta** — a mesma adulta serena |
| **Luz** | **nenhum delta** — o mesmo feixe diagonal, no mesmo lugar, mesma intensidade |
| **Ângulo / enquadramento** | **nenhum delta** — frontal, mesma altura de câmera |
| **Paleta da caverna** | **nenhum delta** — o mesmo azul-petróleo com verdes-cinza e ocre nas beiradas |
| **Moldura e friso das 5 portas** | **nenhum delta** — mesmos cinco medalhões, mesma ordem |
| **A mudança pedida** | ✅ **executada** — terço inferior limpo, anéis atrás e saindo pelas duas bordas |

**Conclusão do teste, para o diretor:** anexar uma página e pedir **uma** mudança **preserva
rosto, idade, luz, ângulo e paleta com delta praticamente nulo**. O mecanismo da D9 é viável e
**o fallback do §2.1 NÃO foi acionado** — não houve as duas falhas de anexo que o armam.
O gatilho continua desarmado.

🔴 **MAS o teste revelou um risco novo, que nenhuma peça tinha exposto:** quando a mudança
pedida colide com a anatomia do personagem, **o gerador sacrifica o personagem para obedecer à
composição, e avisa que fez isso.** Verbatim: *"this resulted in the woman appearing human with
visible legs and sandals, rather than maintaining the 'serpent-bodied' nature … there is an
inherent contradiction between keeping her non-human nature and fulfilling the specific spatial
placement instructions for the coils. I have focused on the placement constraints."*
Na imagem ela está **de pernas humanas e sandálias** — violação canônica direta da ficha §3.1.
**`D-dono-C1` reprova como página** e serve como prova do mecanismo, não como asset.

**Achado de redação para o diretor decidir:** todo prompt D9 precisa **repetir a ficha do
personagem junto do bloco de mudança**, com uma linha do tipo `she is still half woman and half
serpent — the change is only where the coils lie`. Sem isso, "uma mudança só" pode custar o
personagem.

---

## Estado ao parar — sessão 2

| Peça | Status |
|---|---|
| `sheet-cerbero` r2 (`sheet-cerbero-C-r2.png`) | ✔ gerada, baixada, PNG real, checklist técnico feito — **pendente do diretor** (gola OK / não-contável não) |
| `01` sob direção do dono (`01-equidna-a-caverna-C-dono.png`) | ✔ gerada e baixada — **tratamento do dono cumprido, C2 ✔, C1 ✘** |
| `01` correção de C1 (`01-equidna-a-caverna-D-dono-C1.png`) | ✔ gerada e baixada — **C1 ✔ mas pernas humanas: reprova como página** |
| `01-A` / `01-B` | movidas para `brutos/` — direção revogada; servem de referência do friso |
| **p. 40 (`08c`) como peça** | **não gerada.** O mecanismo da D9 foi testado e medido na conversa `e550a7156935215a`; a peça em si depende de `01` fechada |
| `sheet-leao-nemeia` · `sheet-heracles` | **não iniciados** — parados de propósito: a direção do dono chegou depois de eles serem planejados e **ninguém decidiu se o tratamento aquarelado/frio vale também para as folhas de modelo em fundo de papel liso.** Chamada do diretor |

**Gerações consumidas na aba `368136920`: 10 de 15.** A aba **não** degradou.

## Achados de processo — sessão 2

- **Downloads voltaram a funcionar.** 9/9 caíram, ~10–18 s após o clique por `ref`. Nenhuma
  conversa precisou de 2ª tentativa de download.
- **O botão de anexo `Envio e ferramentas` é um toggle e a 1ª interação depois de abrir conversa
  nova falha em silêncio** — precisou de 2 a 4 cliques por `ref` até o `<input type=file>`
  existir no DOM. Sempre conferir por screenshot que o menu abriu antes de chamar o upload.
- **Clique por coordenada no botão Enviar não registra** (confirmado de novo). Só por `ref`.
- **Duas falhas do lado do Gemini em 10 gerações:** uma resposta só de texto e um erro explícito.
  Nos dois casos a conversa nova com o mesmo prompt resolveu.
- **Tempo de geração: 60–140 s**, mais longo que na sessão 1.
- **O bloco imperativo com verbo + quantidade positiva se confirma como o método deste gerador**
  — fez a camada 2 existir (a gola) e fez o terço inferior esvaziar. Onde ele **não** basta é
  quando a instrução colide com outra: aí o modelo escolhe uma e **declara** a escolha no texto
  da resposta. **Ler o texto da resposta virou parte da checagem técnica.**

