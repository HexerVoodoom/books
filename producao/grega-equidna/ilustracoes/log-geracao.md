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


---

# SESSÃO 3 — 2026-09-02 (aba nova `368136927`)

> Escopo: `sheet-cerbero` r3 (`CROWN AND NAPE`, v2.2) → gatilho do Plano B · `sheet-leao-nemeia` ·
> `sheet-heracles` · p. 40 sob **D9-A**. Downloads em `E:\dowload`.

## 🔴 Colado antes de disparar a r3 — o gatilho armado (curadoria-3b §8.3)

> **Se a rodada 3 entregar de novo uma gola em que um adulto chega a um número em 10 s, o Plano
> B é acionado NA HORA, sem nova curadoria e sem quarta rodada** — `sheet-cerbero` é rebaixada ao
> desenho de Ladon (uma cabeça nítida, o resto dissolvido na gola), a folha vai ao `gate.md` com
> as três candidatas e o dono decide entre a folha rebaixada e abrir orçamento de geração extra.

---

## Geração 11 · `sheet-cerbero` RODADA 3 — `CROWN AND NAPE`

Conversa `3529beed9846ef2e` · prompt `prompts/S2r3-sheet-cerbero.txt` (r2 + bloco
`[MORE DOG BEHIND]` v2.2 + as duas emendas de layout do §9.4) · anexos **REF-02 + REF-01**.
- Asset: `sheet-cerbero-D-r3.png` · 2400×1792 (4:3) ✔ · PNGreal ✔
  MD5 bruto `F0CC1E586ED06FA5DBDD9A12233FC68B` · MD5 PNG `E60C9B1B6DA54ACE8D881A6468822644`

### O que `CROWN AND NAPE` produziu

✅ **A palavra funcionou como dispositivo.** Ao contrário de `SWELLING`, as nucas **existem
na imagem**: cabeças vistas de costas, calota e nuca, viradas para longe, **nenhum rosto novo,
nenhum olho, nariz ou boca atrás das três nítidas**. A revogação do `no ear` foi o que destravou
— as orelhas voltaram e são o que faz a massa ler como "mais cão". As três vistas trazem 3/3/3
cabeças nítidas; as orelhas caídas apareceram nas cabeças nítidas.

🔴 **E é exatamente por isso que ela REPROVA o item 11.** As nucas vieram **discretas, fechadas
e separáveis**: no estudo 1 conto **três nítidas + quatro nucas = sete**; no estudo 2,
**três + duas = cinco**. Em menos de 10 s. A cláusula `none of them is ever whole` / `SINK BACK
INTO THE RUFF` **não** foi obedecida: cada nuca fechou como forma inteira sobre a gola.

> **Diagnóstico para o diretor:** a r2 falhou por gola **lisa demais** (nada a contar, mas nada
> de "mais cão"); a r3 falha pelo **oposto** — a gola ganhou objetos, e objeto é justamente o
> que se conta. `CROWN AND NAPE` resolveu "sugerir mais cão sem rosto" e **não** resolveu
> não-contabilidade. O eixo do problema não é o substantivo: é que **tudo que este gerador
> desenha, ele desenha fechado**.

**Verbatim da resposta (checagem técnica obrigatória):** *"I have generated the character
reference sheet... The illustration adheres to the requirement of having exactly three sharp
heads, and I ensured that the complex ruff and the small cluster study remain faithful to the
distinct head counts and details specified. Please note that while the ornamental markings are
present, the decorative swirl in the three-quarter view appears on the shoulder rather than
exclusively along the animal's back."* → **declaração de desvio** (serpente no ombro = item 7 do
`[MUST NOT APPEAR]`). Não é declaração de sacrifício de personagem, mas é desvio declarado.

### 🔴 GATILHO ACIONADO — Plano B aplicado na hora, sem quarta rodada e sem nova curadoria

Item 11 reprovado pela **terceira** vez (piloto 1 por excesso · r2 por gola lisa · r3 por nucas
contáveis). Conforme §8.3 da curadoria e a instrução da sessão, **`sheet-cerbero` foi rebaixada
ao desenho de Ladon na mesma sessão**: uma cabeça nítida, todo o resto como ornamento dentro da
gola e no friso. Prompt do Plano B: `prompts/S2pb-sheet-cerbero-planoB.txt` (camada 1 substituída
pela redação do §0.7 dos pacotes; `[THE FUR BEHIND]` reescrito para ornamento aberto).

---

## Geração 12 · `sheet-cerbero` PLANO B (1ª)

Conversa `f7837cc85fb94357` · anexos REF-02 + REF-01 · sem texto de resposta (só imagem).
- Asset: `sheet-cerbero-E-planoB.png` · 2400×1792 ✔ · PNGreal ✔
  MD5 bruto `2BC8090ACCCD3ED2E5345D95B61E21A5` · MD5 PNG `CE9E9FCC987DAF495F6D395F9572FAD4`

✅ **UMA cabeça nítida em todas as vistas; zero segunda face; nada contável.** A gola recebeu o
ritmo de palmetas/gavinhas pedido. Banda A e Banda B em faixas próprias. Orelhas caídas.
🔴 **C3 REPROVA:** a folha veio com **numerais circulados (①–⑤)** identificando os estudos —
"no labels, no annotations" não segurou. Reprova técnica, não de conceito.

## Geração 13 · `sheet-cerbero` PLANO B (2ª) — com a proibição de numeral endurecida

Conversa `a5d02684b3ba1039` · prompt `prompts/S2pb2-sheet-cerbero-planoB.txt`
(acrescenta `NO NUMBERS OF ANY KIND, no digits, no circled numerals...`) · anexos REF-02 + REF-01.
- Asset: `sheet-cerbero-F-planoB2.png` · 2400×1792 ✔ · PNGreal ✔
  MD5 bruto `92DB54B48E925B390FDAC370539758B1` · MD5 PNG `BE8AE3476B457567776D6DA20DF376ED`

✅ **C3 resolvido — zero numeral, zero legenda.** Uma cabeça nítida por estudo, nada contável,
gola com ornamento tecido, orelhas caídas, friso de felinos em banda própria.
🟡 **Defeito novo:** atrás do estudo maior aparece **mar e céu azuis** — fundo de cena, que o
`[SHEET LAYOUT]` e o §1.5d proíbem na folha (papel quente liso, luz plana, sem ambiente).
🟡 A folha traz mais de três estudos.

> **Estado de `sheet-cerbero` ao fim da sessão: candidatas ao gate, nenhuma aprovada por mim
> (não aprovo a própria imagem).** `A` (r1, camada 2 ausente) · `C-r2` (gola lisa) ·
> `D-r3` (nucas contáveis) — e, do rebaixamento, `E-planoB` (numerais) e `F-planoB2` (fundo de
> mar). **Decisão do diretor/dono:** qual candidata do Plano B corrigir com uma geração extra,
> ou abrir orçamento para uma 3ª do Plano B sem numeral E sem fundo.

---

## Geração 14 · `sheet-leao-nemeia` — DESTRAVADO pela regra §1.5d

Conversa `a5a92b32adb6182c` · prompt `prompts/S4r-sheet-leao-nemeia.txt` (S4 + o parágrafo de
âncora de cor do §1.5d: aquarela molhada de verdade, cor local quente e saturada com hex, fundo
de papel liso, **sem cena, sem atmosfera, sem céu**) · anexo **REF-06** (olpe coríntio, CC0),
com a instrução negativa obrigatória. Sem texto de resposta.
- Asset: `sheet-leao-nemeia-A.png` · 2400×1792 (4:3) ✔ · PNGreal ✔
  MD5 bruto `35FD6024E8D11573EE5D0EEDBC947EEF` · MD5 PNG `DFA28309AF24714FAD1605C139E7FADE`

✅ Três estudos do MESMO leão (deitado de lado · deitado frontal à altura da criança · cabeça e
juba grandes, dois olhos legíveis) · **os DOIS estudos de matéria existem e são grandes**
(couro + juba), que é o que trava S3, a vinheta 6.2 e a p. 33 · zero rugido, boca fechada, zero
dente, zero bote, zero contraluz · fundo de papel quente liso, luz plana, **sem cena** · cor
local quente e saturada (terracota/ocre), **o cinza-bege não voltou** — a regra §1.5d fez o que
foi escrita para fazer. Sem texto, sem numeral.
⚠️ **Piso de variações NÃO cumprido: 1 conversa, o piso de S4 é 2.** A 2ª tentativa foi
abortada pelo desgaste da aba (o menu de anexo virou toggle e parou de abrir). Fica como
pendência da próxima sessão.
🔴 **Registrar como divergência declarada (§3.8):** rosto **frontal** e postura **deitada** não
têm referência antiga possível — é [NOSSO], 100% Mucha/aquarela.

---

## Gerações perdidas · `sheet-heracles` — 1ª tentativa

Anexei o **bruto `.jfif`** do sheet do leão. **O Gemini leu o arquivo como TEXTO, não como
imagem** (*"It appears you have pasted a highly detailed image generation prompt directly
alongside the raw binary text of a JPEG image file"*). Conversa `456ea9e8c362f4c5`, sem imagem.
2ª tentativa: a conversa `3c1db8df9b96e927` **não persistiu** (falha do lado do Gemini; a URL
volta para `/app`). Duas gerações queimadas.

> 🔴 **ACHADO DE PROCESSO, VALE PARA TODA PEÇA COM ANEXO:** **nunca anexar o `.jfif` de
> `brutos/`.** O Gemini só reconhece como imagem o que chega com extensão `.png` ou `.jpg`.
> E o limite de upload da ferramenta é **10 MB somados** — os PNGs recodificados deste livro
> passam de 10 MB. **Procedimento novo:** gerar uma cópia `.jpg` (qualidade 95, tamanho nativo)
> do asset e anexar essa cópia. Foi assim que a p. 40 e o `sheet-heracles` saíram.

## Geração 15 · `sheet-heracles` — com o leão anexado como `.jpg`

Conversa `1df60b5b89921fa3` · prompt `prompts/S3r-sheet-heracles.txt` + âncora de cor do §1.5d ·
anexo: cópia `.jpg` de `sheet-leao-nemeia-A`, com `take ONLY the lion's fur colour and texture`.
- Asset: `sheet-heracles-A.png` · 2400×1792 (4:3) ✔ · PNGreal ✔
  MD5 bruto `6B882F9ACCBBF8CAF6BEC70571EEE433` · MD5 PNG `98CD65848DB36244EFDBE56023C67041`

✅ **D3 cumprida:** a cabeça do leão **pende no ombro/peito**, nunca sobre a cabeça dele —
nenhum quadro com capuz, elmo ou escalpo · clava presente e **baixa**, nunca erguida · a figura
da esquerda está **sem a pele** · zero sangue, zero ferida, zero corpo do leão carregado, zero
leão vivo na folha · zero pose triunfal · rosto grande de referência, sem capacete.
🔴 **FALHA DE CHECKLIST:** *"a pele cai do ombro ao chão — manto de corpo inteiro"*. Aqui a pele
é **pelego curto**: cobre ombros e peito e para na cintura, pernas nuas. É item duro de S3.
🟡 As duas figuras vestidas com a pele repetem a mesma solução; falta o manto-silhueta.

**Verbatim da resposta (checagem técnica obrigatória):** *"Here is the generated model sheet.
I've corrected the layout to include the requested frontal and three-quarter views and removed
the reference lion from the previous attempt. I should note that while the layout and border
textures are accurate, the facial styling may appear too realistic rather than capturing the
soft watercolour 'arabesque' look you specified. Additionally, the faces look somewhat identical
across all studies, meaning the expression and details of the three-quarter views may not be as
distinct as intended, though the body poses themselves are accurate."*
→ **Declaração de desvio de ESTILO (risco de C4), não de sacrifício de personagem.** A régua
D9-A reprova automaticamente quando o modelo declara ter sacrificado **quem o personagem é**;
não é o caso. Fica registrado para o diretor julgar C4.

---

## Geração 16 · 🔴 p. 40 (`08c-40-a-caverna-ultima-pagina`) — **D9-A, o teste da sessão**

Conversa `f7cf8e19fdc5dc7f` · prompt `prompts/A1r-40-caverna-D9A.txt` ·
anexo: **cópia `.jpg` de `01-equidna-a-caverna-C-dono.png`** — a página **aprovada pelo dono**
(`DIRECAO-DO-DONO.md`, resolução de 02/09: *"a imagem que o dono escolheu está APROVADA como
está"*; a FIXÁVEL-3 revisada permite anéis deitados no primeiro plano).
Estrutura do prompt: `[WHO SHE IS - UNCHANGED. THIS OUTRANKS EVERYTHING BELOW]` com a ficha
§3.1 **verbatim** + a anatomia em risco nomeada (`NO human legs, NO feet, NO knees, NO sandals,
NO skirt hem with feet under it`) → `[THE ONE CHANGE]` (bloco imperativo com critério de área:
*"PAINT THAT WHOLE UPPER BAND AS BARE CAVE STONE INSTEAD... fill the entire top of the picture"*)
→ `[IF THEY DO NOT FIT]` com a válvula de escape.
- Asset: `08c-40-a-caverna-ultima-pagina-A.png` · **2048×2048 (1:1)** ✔ · PNGreal ✔
  MD5 bruto `3CC5E65DD13A7B7D74431B3077C1B3D5` · MD5 PNG `66496C5F30948E98C16A3ABCD1543FF3`

### 🔴 D9-A FUNCIONOU — não houve declaração de sacrifício

**O Gemini respondeu SEM TEXTO NENHUM: só a imagem.** Zero declaração de conflito, zero
"inherent contradiction", zero "I have focused on the placement constraints". Comparando com a
geração 10 da sessão 2 — mesmo mecanismo, mesma classe de mudança, e lá ele **avisou por escrito**
que tinha trocado o personagem pela composição —, **a única diferença é o bloco de precedência
+ a válvula de escape.** É a evidência que a regra D9-A pedia.

**E a anatomia sobreviveu:** **zero pernas humanas, zero pés, zero joelhos, zero sandálias** —
o corpo de serpente continua, com as manchas grandes e arredondadas, os anéis deitados em
repouso. Foi exatamente o modo de falha que reprovou `01-D-dono-C1`, e ele não se repetiu.

**A mudança pedida foi executada:** a faixa alta virou **pedra de caverna nua** — não sobrou um
medalhão, uma vista distante nem o friso das cinco portas. Preservados: o feixe diagonal de luz
no chão (único movimento), a paleta fria e colorida da caverna, o enquadramento, a altura de
câmera à altura da criança, a moldura leve de meandro e palmetas, a manga cobrindo o ombro,
o cabelo recolhido.

⚠️ **O que EU não julgo, e vai ao diretor (D9 é dele):** o **delta de rosto** entre
`01-C-dono` e esta p. 40 — cruzar as duas lado a lado e decidir se é *"o mesmo rosto sem uma
ruga a mais"* ou se o fallback do §2.1 precisa ser discutido. Minha leitura técnica é que a
identidade se manteve na mesma família e o penteado, a idade e o desenho do olho batem, mas
**o veredito de D9 não é meu.**
⚠️ Piso de 3 conversas para a p. 40 **não cumprido** (1 conversa) — a aba chegou ao ponto de
parada. Duas variações ficam para a próxima sessão.

---

## Estado ao parar — sessão 3

| Peça | Status |
|---|---|
| `sheet-cerbero` r3 (`sheet-cerbero-D-r3.png`) | ✔ gerada e baixada — **item 11 reprovado 3ª vez** (nucas contáveis). Gatilho do Plano B **acionado** |
| `sheet-cerbero` Plano B (`E-planoB`, `F-planoB2`) | ✔ geradas e baixadas — não-contáveis ✅; `E` reprova C3 (numerais), `F` traz fundo de mar. **Pendentes do diretor/dono** |
| `sheet-leao-nemeia-A.png` | ✔ gerada, baixada, PNG real, checklist técnico OK — **pendente do diretor**; piso de variações 1/2 |
| `sheet-heracles-A.png` | ✔ gerada e baixada — **D3 cumprida**, mas a pele saiu **pelego curto** e não manto de corpo inteiro. Pendente do diretor; piso 1/2 |
| **p. 40 (`08c-40-a-caverna-ultima-pagina-A.png`)** | ✔ gerada e baixada — **D9-A sem declaração de sacrifício, anatomia preservada, mapa removido**. Pendente do delta de rosto (diretor); piso 1/3 |
| `01-C-dono` | **aprovada pelo dono, inalterada** — foi a referência anexada da p. 40 |
| `00-capa` | **não iniciada** — orçamento da aba esgotado antes |

**Gerações consumidas na aba `368136927`: 9 (7 com imagem, 2 perdidas).** Aba com sinais de
degradação no fim (timeouts de CDP no screenshot e no `type`; o menu de anexo deixou de abrir).
**Parada declarada aqui.**

## Achados de processo — sessão 3

- 🔴 **Anexo só funciona com `.png`/`.jpg`; `.jfif` é lido como TEXTO.** E o limite do upload é
  **10 MB somados** — os PNGs deste livro estouram. **Gerar cópia `.jpg` q95 e anexar essa
  cópia.** Custou 2 gerações descobrir.
- **Downloads: 6/6 caíram**, ~10–18 s após o clique por `ref`. Pasta: `E:\dowload`.
- **O botão `Envio e ferramentas` é um toggle instável:** de 1 a 5 cliques por `ref` até o
  `<input type=file>` existir no DOM. Sempre conferir por `find` antes de chamar o upload.
- **Uma conversa não persistiu** (URL válida no momento do envio, `/app` depois). Sinal de aba
  cansada; não insistir.
- **Não navegar para fora da conversa antes de a imagem terminar de renderizar** — foi o que
  matou a conversa perdida.
- **A regra "o objeto de `PAINT` tem de existir no repertório de desenho" está confirmada nas
  duas direções:** `CROWN AND NAPE` é desenhável e **foi desenhada** (ao contrário de
  `SWELLING`) — e é justamente por ser desenhável que virou objeto contável. **Para a
  não-contabilidade, o gerador precisa de uma coisa que ele desenhe ABERTA por natureza (o
  ornamento), e é isso que o Plano B entrega.**
- **`NO NUMBERS OF ANY KIND, no digits, no circled numerals`** resolveu a legenda numerada que
  `no labels, no annotations` não segurava. Vale acrescentar à linha de fechamento de todo sheet.


---

# SESSÃO 5 — 2026-09-02, abas `368136967` (7 gerações) → `368136970` → `368136973`

> ⚠️ **A sessão 4 não deixou registro neste arquivo** (morreu por limite de sessão da API).
> Os assets dela existem em disco e continuam **pendentes de curadoria**:
> `02-dragao-da-colquida-A.png`, `03-ortro-o-turno-de-trabalho-A.png` (**aprovada pela
> curadoria §§20–26**), `sheet-cerbero-G-planoB3.png` (**aprovada**), `sheet-heracles-B.png`
> (**reprovada por C4 — vetor chapado**). Não regerar `03`.

## Direção nova incorporada nesta sessão

- **`sheet-cerbero-G-REF.png`** (errata do diretor: estudo pequeno da cauda apagado) é a
  **única** cópia que vai anexada. Gerada a cópia `.jpg` q95 em `referencias/`. A
  `-planoB3.jpg` foi apagada de `referencias/` para não haver engano.
- **Cláusula obrigatória da cauda-dragão** (`MOUTH CLOSED ... It COILS AROUND AND HOLDS; it
  does not bite.`) acrescentada aos prompts da capa, `07`, `08b`.
- **Fórmula do ornamento (§1.5e)** aplicada como padrão: **UMA cabeça nítida** em Cérbero
  (capa, `07`, `08b`), em Tifão e na Hidra. 🔴 **Chamada do diretor:** o pacote F10 pedia
  **duas** cabeças nítidas na capa; usei **uma**, para bater com a folha aprovada e com a
  consequência 1 do §1.5e. Se o diretor quiser duas, é uma regeração.
- **Bloco `[HOW THIS IS PAINTED]` positivo** (§22.3 da curadoria) acrescentado a `07`, `05`
  e `06`, contra o modo de falha "vetor chapado com contorno preto uniforme".

## Prompts novos criados (`prompts/`)

`F7v2-07-cerbero-abraco.txt` · `F8v2-08a-tifao.txt` · `F9v2-08b-retrato-de-origem.txt` ·
`F10v2-00-capa.txt` — todos com header do dono (aquarela molhada) + fórmula do ornamento +
linha de fechamento com `NO NUMBERS OF ANY KIND`.

## Gerações

| # | Peça | Conversa | Asset | Dim | PNGreal | MD5 PNG |
|---|---|---|---|---|---|---|
| 1 | `04` tentativa 1 | `94c3f801b2425c68` | 🔴 **só texto, sem imagem** | — | — | — |
| 2 | `04-ladon` | `3be803b16626fd11` | `04-ladon-e-o-pedido-da-almofada-A.png` | 2048² (1:1 ✔) | ✔ | `16562301AF474772FA2DBBE7F6B56935` |
| 3 | `00-capa` | `2bd0064e54b3d982` | `00-capa-A.png` | 2048² ✔ | ✔ | `710335DE0AB3FCF80453B6D01869CD37` |
| 4 | `02` correção D9-A | `7c1c5205f4165938` | `02-dragao-da-colquida-B-umvelo.png` | 2048² ✔ | ✔ | `BB6E35EC8B2B6C1C7FB721EDC571185B` |
| 5 | `07` abraço | `2737b83b328c5825` | `07-cerbero-o-abraco-sem-armas-A.png` | 2048² ✔ | ✔ | `F2D054D80C096B3803A9F0A9847DFECD` |
| 6 | `05` esfinge | `35eb432e89058438` | `05-a-pergunta-da-esfinge-A.png` | 2048² ✔ | ✔ | `370255A60BE5E9C591A3EAA8E1750A05` |
| 7 | `06` leão antes | `4ec9cd82a68958b2` | 🔴 **gerada e renderizada, NÃO BAIXADA** | — | — | — |

**Anexos usados:** capa → `sheet-cerbero-G-REF.jpg` · `02` → a própria página `A` ·
`07` → `sheet-cerbero-G-REF.jpg` + `sheet-heracles-B.jpg` · `06` → `sheet-leao-nemeia-A.jpg` ·
`04` e `05` → nenhum (pacote não pede).

## Texto da resposta — checagem obrigatória, peça a peça

- **`04-ladon`:** *"I was able to correct the previous coloring error with the serpent... However,
  please note that Heracles is balancing a **woven container** on his head in this generation,
  rather than the specific soft cushion requested."* → **desvio declarado de adereço** (cesto em
  vez de almofada). Não é sacrifício de personagem. **Chamada do diretor.**
  Conferido a olho: esfera celeste **estrelada, sem continentes** ✔ · almofada **na cabeça** ✔ ·
  uma cabeça de Ladon nítida na folhagem ✔ · Hespérides em silhueta ✔ · 2 maçãs no chão ✔ ·
  🔴 **a terceira maçã NÃO está na mão dele** (as mãos estão no cesto e na clava baixa).
- **`00-capa-A`:** *"I have corrected the previous issues by ensuring the dog's gaze is now
  off-axis and the dragon tail is featureless. **However, please note that there are some
  distinct eyes visible on the ornamental profiles within the ruff**, which deviates from your
  requirement that these heads remain strictly non-anatomical. **Additionally, the upper third of
  the composition is a bit busier** than the quiet space you might need for later typography."*
  → 🔴 **DOIS desvios declarados que reprovam a capa:** olhos dentro da gola (§1.5e / item 11) e
  terço superior ocupado (reserva de tipografia). Trava 1 (cabeça contra creme) ✔ e trava 3
  (cauda sem boca/dente/olho) ✔ pela declaração dele; trava 2 (olhar fora de eixo) ✔ declarada.
  **A capa precisa de uma 2ª rodada** — o piso é 3 conversas e só houve 1.
- **`02-B-umvelo`:** **SEM TEXTO NENHUM** → zero declaração de sacrifício, D9-A limpa.
  Conferido a olho: **UM único Velo, o pendurado** ✔ · **Jasão de mãos vazias, alcançando o
  galho, rosto voltado ao dragão, com medo** ✔ · dragão de olhos fechados, mandíbula no chão ✔ ·
  Medeia no centro, mão no focinho, zimbro legível, cantando ✔ · zero arma ✔.
  🟡 **Três pontos para o diretor:** (a) a página clareou — o "escuro quente" da `A` virou uma
  floresta azul mais luminosa; (b) risco **C4** de novo: contorno escuro contínuo e preenchimento
  mais chapado do que a lavagem molhada do dono; (c) há **uma presa clara** aparecendo no canto
  da mandíbula inferior — checar contra o item "zero dente".
- **`07-A`:** *"I wasn't able to fully align with some of your complex anatomical constraints for
  Cerberus. While the overall look fits the description, **the additional heads are rendered as
  anatomical, radial figures rather than the 'woven ornament' you specified without eyes or
  mouths**. Furthermore, **the tail appears separated from the creature's body** rather than the
  tail being a dragon itself."* → 🔴 **desvio declarado que reprova o item 11** (a gola virou
  cabeças anatômicas com olho e boca) **e** quebra a continuidade da cauda. **`07` precisa de
  2ª rodada.** O piso do pacote é 2 conversas e só houve 1.
- **`05-A`:** **SEM TEXTO NENHUM** → zero declaração de sacrifício. Ainda **não conferida item a
  item** (a sessão parou no bloqueio antes da varredura).
- **`06`:** **SEM TEXTO NENHUM**, imagem renderizada, **sem asset** (bloqueio).

## 🔴 BLOQUEIO DE DOWNLOAD — a sessão parou aqui

**Medido:** os 5 primeiros downloads da sessão caíram normalmente (11:02 → 11:36). A partir do
`06` **nada mais cai**.

Sequência exata na peça `06` (conversa `4ec9cd82a68958b2`), imagem **renderizada**:
1. clique por `ref` na aba de origem `368136970` → nenhum arquivo (o script recodificou o
   arquivo ANTERIOR: **MD5 idêntico ao do `05`** — o asset falso foi apagado);
2. aba **nova** `368136973`, conversa aberta pela URL, clique por `ref` → nada;
3. **reload pela URL** + `scroll_to` + clique por `ref` → nada.

**3 cliques, 2 reloads, 2 abas distintas, esperas de 18–20 s cada.** Nenhum `.crdownload`,
nenhum erro na página, o botão responde. É ponto por ponto o bloqueio já documentado no
`CLAUDE.md` do dono. **Não insisti** — a instrução da sessão manda parar e reportar.

### O que o dono precisa fazer (nenhum agente resolve)

1. Olhar a **barra de downloads** do Chrome e confirmar/descartar qualquer prompt nativo de
   "Manter/Descartar" para `.jfif`.
2. Liberar downloads automáticos para `gemini.google.com` em
   `chrome://settings/content/automaticDownloads`.
3. A conversa `4ec9cd82a68958b2` continua aberta com a imagem do `06` pronta — **dá para baixar
   sem regerar.**

## Achados de processo — sessão 5

- 🆕 **`Generate this illustration as an image now.` no início do prompt resolve a resposta
  só-de-texto.** A 1ª tentativa do `04` (sem a linha) veio só com texto descritivo; com a linha,
  **6 de 6** conversas entregaram imagem. Vale acrescentar a toda peça.
- 🆕 **Verificar o MD5 do bruto contra o download anterior ANTES de recodificar** — nesta sessão
  o download falho reentregou o arquivo já obtido **duas vezes** e os dois assets falsos só foram
  pegos pelo hash. Sem o hash, `05` e `06` teriam entrado no miolo como cópias do `07`.
- 🆕 **Abrir a conversa numa ABA NOVA destravou um download parado uma vez** (o `05` caiu assim
  depois de 2 falhas na aba de origem). **Não** funcionou no `06` — não é solução geral.
- **O `type` falha em silêncio com muita frequência nesta UI.** Procedimento que funcionou 100%:
  clicar por `ref` → digitar **um caractere** de sonda → screenshot → `ctrl+a` → digitar o
  prompt inteiro. Sem a sonda, três prompts foram perdidos.
- **O `type` de prompt longo estoura o timeout do CDP (30 s) mas o texto ENTRA.** Nunca repetir
  a digitação por causa desse erro — esperar 20 s e conferir por screenshot.
- **O botão `Envio e ferramentas` continua um toggle instável:** de 1 a 5 cliques por `ref` até
  o `<input type=file>` existir no DOM. Confirmado de novo.
- **Tempo de geração: 90–180 s**, mais longo que nas sessões anteriores.

## Estado ao parar — sessão 5

| Peça | Status |
|---|---|
| `04-ladon...-A` | ✔ baixada, PNG real, 1:1 — **pendente do diretor** (cesto em vez de almofada; 3ª maçã não está na mão) · piso 1/2 |
| `00-capa-A` | ✔ baixada, PNG real, 1:1 — 🔴 **dois desvios declarados (olhos na gola; terço superior ocupado)**; travas 1–3 declaradas cumpridas · piso 1/3 |
| `02-...-B-umvelo` | ✔ baixada, PNG real, 1:1 — **a mudança pedida foi executada, sem declaração de sacrifício** · risco C4 e presa no canto da mandíbula, para o diretor |
| `07-...-A` | ✔ baixada, PNG real, 1:1 — 🔴 **item 11 reprovado por declaração** (gola virou cabeças anatômicas) · piso 1/2 |
| `05-...-A` | ✔ baixada, PNG real, 1:1 — **pendente de varredura e do diretor** · piso 1/2 |
| `06-o-leao-antes` | 🔴 **gerada, renderizada, NÃO baixada** — bloqueio de download |
| `08a-tifao` · `08b-retrato` | **não iniciadas** — prompts prontos (`F8v2`, `F9v2`), bloqueadas pelo download |
| `sheet-heracles` r3 | **não iniciada** — bloqueada pelo download |
| vinhetas `06v1` / `06v2` | **não iniciadas** |


## Curadoria §27 chegou depois do bloqueio — fila da próxima sessão

**Aprovadas e já no miolo (não regerar):** `00-capa-A` · `02-dragao-da-colquida-B-umvelo` ·
`04-ladon-e-o-pedido-da-almofada-A`. Livro em 48pp / 46,6 MB, 5 das 12 posições.

🔴 **`05-a-pergunta-da-esfinge` REPROVADA** (lê "estátua", item 10 / D7). Regerar com: **rocha
alta e rachada no lugar da coluna jônica** (sem capitel, sem base) · **câmera de baixo** ·
**uma asa mais alta que a outra** · **Édipo ao pé da pedra olhando para cima**. Manter rosto,
asas, paleta, estrada, Tebas e moldura.

🔴 **`07-cerbero-o-abraco-sem-armas` REPROVADA** por 4 motivos: cauda-dragão de **boca aberta,
dentes e olho aceso** e **solta do cão** · gesto de **uma mão no focinho** em vez de abraço ·
**seis cabeças fechadas** atrás · **Héracles em vetor chapado** contra o cão em aquarela.
Regerar com: cauda **presa ao traseiro do cão** + a cláusula `MOUTH CLOSED` · **nenhuma outra
criatura na página** · **os DOIS braços em volta do alto da cabeça, entre as orelhas, rosto no
pelo** · gola idêntica à de `sheet-cerbero-G-REF` (anexar) · bloco `[HOW THIS IS PAINTED]`
aplicado **a Héracles e à leontê**. Arco e clava continuam no chão.

🟡 **Opcional em `04`** (já aprovada): pintar o meio-campo (céu frio e horizonte, sem papel
branco dentro da cercadura) e manter o corpo de Ladon dentro da banda da árvore.

**Nada disso pôde ser executado:** o bloqueio de download acima impede recuperar qualquer
imagem nova. **4º clique e 3º reload testados depois da curadoria — continua sem arquivo.**

## ⚠️ 2026-09-02 — O "bloqueio de download do Chrome" tem outra causa

Reportado como bloqueio do Chrome **três vezes** neste run (sessões 1, 4 e 5). Nas três, o
orquestrador testou clicando no botão logo depois e **o arquivo caiu de primeira**.

**A causa real é degradação de aba/CDP, não a proteção do Chrome contra downloads automáticos.**
Na sessão 5 havia **7 abas do Gemini abertas** quando o download parou; fechadas as abas, o
mesmo botão da mesma conversa baixou sem erro.

**Procedimento novo (substitui "PARE e reporte" como primeira reação):**
1. **Fechar cada aba com `tabs_close_mcp` assim que a peça termina.** Nunca mais de 2 abertas.
2. Se um download falhar: **fechar as abas, abrir aba nova, tentar de novo.**
3. Só declarar bloqueio do Chrome **depois** disso — e aí sim é o dono que resolve.

Isso não revoga o alerta do `CLAUDE.md` (a proteção do Chrome existe e já mordeu na sessão 1,
quando o dono precisou liberar `chrome://settings/content/automaticDownloads`). O que muda é a
**ordem de diagnóstico**: aba degradada é muito mais frequente, e custa 3 cliques descartar.

---

# SESSÃO 6 (2026-09-02, tarde) — 1 geração, 0 downloads

## O que foi preparado antes do navegador

- **`F5v3-05-esfinge.txt`** — reescrito a partir de `F5v2` pela §27.6: coluna jônica → **rocha
  alta e rachada** (`no capital, no volute, no fluting, no base, no dressed stone`), **câmera
  contre-plongée**, **uma asa mais alta que a outra / never mirrored**, **Édipo ao pé da rocha
  olhando para cima**, bloco `[ATTACHED REFERENCE - THE ONE CHANGE]`, e a lista negativa ganhou
  `no column, no pedestal, no statue, no monument, no perfect symmetry`. Rosto, asas, paleta,
  estrada, Tebas e moldura mandados manter verbatim.
- **`F7v3-07-cerbero-abraco.txt`** — reescrito a partir de `F7v2` pela §27.6: cauda-dragão
  **`GROWS OUT OF HIS HINDQUARTERS and is ATTACHED TO HIS BODY`** + a cláusula `MOUTH CLOSED`
  integral; **`IT IS THE ONLY OTHER CREATURE-SHAPE ON THE PAGE`**; abraço reescrito para
  **`BOTH of his arms wrapped right around the TOP of the dog head, high up BETWEEN THE TWO
  EARS, hands meeting over the crown, his own face pressed into the fur`** com negação explícita
  de mão-no-focinho/braço-no-pescoço/um-braço-só; bloco novo **`[THE RUFF IS THE ONE IN THE
  ATTACHED SHEET]`** (`NOBODY CAN COUNT HEADS IN IT — not six, not three, not two`); e o bloco
  **`[HOW THIS IS PAINTED]`** do §22.3 aplicado **a Héracles e à leontê**, fechando com
  `THE MAN AND THE DOG ARE PAINTED IN ONE AND THE SAME TECHNIQUE`.
- `referencias/05-a-pergunta-da-esfinge-A.jpg` gerada (1600 px) para anexo.
- Ambos os prompts abrem com `Generate this illustration as an image now.` (achado da sessão 5).

## `05-a-pergunta-da-esfinge` rodada 2 — GERADA, NÃO BAIXADA

Conversa nova: **`e18660aafee4dada`** ("Refining the Sphinx Illustration"). Anexo: `05-A.jpg`.
Imagem renderizada e conferida por screenshot.

**Leitura da imagem na tela (não é curadoria, é registro):** rocha alta e rachada no lugar da
coluna ✔ · nenhum capitel, base ou pedestal ✔ · Édipo ao pé da rocha, próximo, de cajado e
**com o rosto virado para cima olhando para ela** ✔ · estrada larga em curva, Tebas ao fundo à
direita, moldura de meandro e friso de felinos preservados ✔ · aquarela, paleta mantida ✔.

🔴 **DECLARAÇÃO DE SACRIFÍCIO DO GEMINI, verbatim:**
> *"However, the specific composition constraints proved challenging to isolate; the wings
> remain perfectly mirrored rather than showing one raised higher, and the camera is a direct
> head-on view instead of the low-angle shot looking up. Therefore, the dynamic sense of
> movement you described is less pronounced than intended."*

**2 dos 4 redirecionamentos da §27.6 falharam por declaração** (asa assimétrica e
contre-plongée). Pela régua da squad, declaração de sacrifício = **reprova**. A peça consumiu a
rodada 2 de 2 sem entregar; a decisão sobre uma 3ª rodada é do diretor.

## 🔴 BLOQUEIO DE DOWNLOAD — desta vez esgotado o procedimento novo, e ele NÃO resolveu

O procedimento da sessão 5 (fechar abas → aba nova → tentar de novo) foi executado **inteiro**
e o arquivo continua não caindo. Registro do que foi tentado, para o dono não repetir:

| # | Contexto | Ação | Resultado |
|---|---|---|---|
| 1 | aba `368136985`, 1 aba aberta | reload por URL + clique por `ref` | nada em `E:\dowload` |
| 2 | **aba nova `368136988`, as outras 2 fechadas com `tabs_close_mcp`** | reload por URL + clique por `ref` | nada |
| 3 | mesma aba nova | clique **por coordenada** no ícone de download (1204, 361) | nada |
| 4 | mesma aba nova | reload por URL + clique por `ref` | nada |
| 5 | — | conferidas **as duas** pastas (`E:\dowload` e `C:\Users\spera\Downloads`) | último arquivo é o de **11:50** (o `06-o-leao-antes` recuperado pelo dono) |

**Nunca houve mais de 2 abas abertas nesta sessão** — a hipótese de degradação de CDP por
excesso de abas está descartada como causa desta vez. A aba responde: `find` acha o botão,
o clique registra, o screenshot mostra a imagem renderizada em tamanho cheio.

**Sintoma restante = exatamente o descrito no `CLAUDE.md`:** botão responde, imagem pronta,
nenhum arquivo cai, sem erro nenhum. As duas causas que **só o dono** pode verificar:
1. **`chrome://settings/content/automaticDownloads`** — a proteção contra vários downloads
   automáticos do mesmo site (já mordeu na sessão 1).
2. **A barra de downloads do Chrome** (canto inferior da janela) — o prompt nativo
   *"Manter / Descartar"* para `.jfif`. A extensão de automação **não enxerga nem clica nisso**.

**Pedido ao dono, antes da sessão 7:** abrir a janela do Chrome, olhar a barra de downloads e
a permissão de downloads automáticos, e recuperar `e18660aafee4dada` (a Esfinge rodada 2) —
a imagem está viva na conversa e é a única peça produzida nesta sessão.

## Estado ao parar — sessão 6

| Peça | Status |
|---|---|
| `05-a-pergunta-da-esfinge` r2 | 🔴 **gerada em `e18660aafee4dada`, renderizada, NÃO baixada** · **declaração de sacrifício** em asa e câmera |
| `07-cerbero-o-abraco-sem-armas` r2 | **não iniciada** — prompt `F7v3` pronto, bloqueada pelo download |
| `08a-tifao` · `08b-retrato` | **não iniciadas** — `F8v2` / `F9v2` prontos, bloqueadas |
| vinhetas `06v1` / `06v2` | **não iniciadas** — bloqueadas |
| `sheet-heracles` r3 | **não iniciada** — bloqueada |

⚠️ **Divergência de briefing a resolver:** o orquestrador instruiu *"proporção das vinhetas: não
são 1:1"*, mas os pacotes **A2** e **A3** fecham os dois prompts com `Square 1:1 full-bleed
composition` e a §0.1 do guia trata essa linha como **reprovação automática se ausente**.
Nenhuma emenda do guia (v2.3 / v2.4) muda a proporção de vinheta. **Segui o pacote (1:1);
se o diretor quiser outra proporção, ela precisa entrar no guia antes da geração.**
