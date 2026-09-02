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
