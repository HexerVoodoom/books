# Log de geração — Fase 3b (execução local, `mito-ilustrador`)

> Preenchido pelo executor. Sessão iniciada em 2026-08-31, via Gemini web
> (`gemini.google.com/app`), conta autenticada do dono, modo Pro.

## Conferências transversais pedidas pelo dono (valem para toda imagem, todo capítulo)

- **O raio nunca é objeto na mão em nenhuma página** — só luz insinuada, em todas as
  aparições de Zeus antes da forja (cap. 1) e mesmo na cena da forja (10b) o raio é
  segurado apenas como o objeto recém-forjado, nunca como arma empunhada contra alguém.
  **Verificado nas 2 variações obtidas de `10b`: raio aparece como objeto na mão de Zeus,
  o que é esperado aqui — é a cena da forja, a exceção declarada em `prompts.md`.** Fica
  registrado para o diretor de arte cruzar contra o cap. 1 (`01-zeus-baucis-e-filemon`,
  ainda não gerado) onde o raio **não pode** ser objeto.
- **Zeus é maduro em todas as aparições**, inclusive na 10b, mesmo o texto do cap. 10
  narrando infância na gruta de Creta. **Verificado nas 2 variações de `10b`: Zeus
  aparece barbado e maduro, não criança/adolescente.** ✔

---

## `10b-do-caos-os-libertados.png` — ⭐ produzida primeiro, conforme ordem obrigatória

- **Prompt colado verbatim** de `prompts.md` (bloco `[BASE]` + bloco da cena), sem
  tradução, resumo ou acréscimo. Colado em conversa nova do Gemini.
- **Recusa:** nenhuma.
- **Variações obtidas: 2 de 4 pedidas.** A UI do Gemini web não expôs um controle
  confiável de "gerar mais variações" nesta sessão — o botão "Refazer" às vezes
  regenerou de fato, às vezes reapresentou a mesma imagem (hashes idênticos em downloads
  repetidos). Confirmado por hash MD5 que só 2 arquivos são visualmente distintos.
  **Faltam 2 variações — registrado como pendência, não decidido por mim resolver
  sozinho** (ver "Achados técnicos para o diretor de arte" abaixo).

| Arquivo | Dimensões (px) | Bytes | Formato real | Texto/marca-d'água visível? |
|---|---|---|---|---|
| `10b-do-caos-os-libertados-v1.png` | 1536 × 2752 | 4.048.984 | JPEG (não PNG, apesar da extensão) | Não |
| `10b-do-caos-os-libertados-v2.png` | 1696 × 2528 | 3.983.205 | JPEG (não PNG, apesar da extensão) | Não |

**Checklist de aceitação (`prompts.md`, bloco 10b) — conferência mecânica, item a item:**

- v1 e v2: os três atributos legíveis (raio, tridente, elmo) ✔ · elmo de Hades **na mão**,
  não na cabeça ✔ · gesto de Zeus incompleto (raio ainda não lançado) ✔ · Zeus maduro,
  mesmo rosto em ambas ✔ · nenhuma figura caída, nenhum sangue, nenhum deus posterior em
  cena ✔ (checagem visual rápida; validação fina de atributo-por-atributo é do diretor).
- v2: o próprio Gemini reportou, no texto de resposta, que **Posêidon saiu com barba
  azul** — desvio da hierarquia Mucha (personagens devem ser aquarela pura, não paleta
  "fantasia"). Repasso literal a autocrítica do modelo abaixo. **Não decidi eu se isso
  reprova a variação — é chamada do diretor de arte.**

> Texto literal do Gemini sobre v2: *"However, in this generation, Poseidon has been
> rendered with a blue beard. Since the prompt specified that all three brothers should
> be 'deliberately alike' with full, dark wavy beards—distinguished primarily by their
> attributes and robe colors—this fantasy-style blue beard deviates from the strict
> Mucha stylistic hierarchy for the characters and moves him closer to a 'later god'
> style."*

**Rodadas:** 2 (dentro do teto de 3 antes de subir ao gate — mas o teto do guia é sobre
*reprovação e nova direção*, não sobre "não conseguir gerar as 4 variações"; sinalizando
a diferença para não confundir os dois problemas).

---

## Achados técnicos para o diretor de arte — bloqueiam a produção em lote das ~80 imagens restantes

1. **Proporção entregue não é 1:1.** O guia de estilo (`guia-de-estilo.md` §3, §3.1)
   e a tabela de parâmetros de `prompts.md` exigem **quadrado 1:1** para toda cena e para
   a capa. As duas variações de `10b` saíram **retrato** (1536×2752 e 1696×2528 —
   proporções ~0,56 e ~0,67, nem perto de 1:1). Busquei um seletor de proporção na UI do
   Gemini web (menu "+" → "Criar imagem") e não encontrei nenhum controle explícito de
   aspect ratio nesta sessão. **Isso não é um problema de prompt** — o próprio `[BASE]`
   colado verbatim de `prompts.md` não menciona proporção (a instrução "Square 1:1
   full-bleed composition" existe no template genérico do guia §3.2, mas **não foi
   incluída no `[BASE]` real que `prompts.md` manda colar**). Ou seja: há uma divergência
   entre o guia e o prompt congelado que o diretor de arte montou — o `[BASE]` de
   `prompts.md` não carrega a instrução de proporção, e a proporção deveria vir de
   **parâmetro de geração**, que a UI do Gemini não expôs nesta sessão. **Não alterei o
   prompt para compensar** (fora do meu mandato). Isso precisa de decisão do diretor:
   ou a proporção é fixada por outro caminho (API com parâmetro explícito de aspect
   ratio, por exemplo), ou o `[BASE]` de `prompts.md` precisa ganhar a linha de proporção
   de volta — e as duas são decisões dele, não minhas.
2. **Formato entregue é JPEG, não PNG.** O guia exige PNG na Fase 3 (`guia-de-estilo.md`
   §3.1). O Gemini web entrega `.jfif` (JPEG) por padrão nesta sessão. Non-conversão
   silenciosa: mantive o arquivo como veio, só troquei a extensão para `.png` pela
   convenção de nome pedida — **o conteúdo continua sendo JPEG**, o que é uma mentira de
   extensão que o diretor/diagramador precisa saber antes de aceitar o lote.
3. **Geração de 4 variações não é confiável via clique em "Refazer" na UI do Gemini
   web.** Em pelo menos uma tentativa, dois cliques em "Baixar" consecutivos baixaram o
   **mesmo arquivo** (hash idêntico), e um clique em "Refazer" não gerou nova imagem
   perceptível. Isso significa que garantir 4 variações distintas por bloco, para as
   ~20 imagens restantes, vai exigir mais cliques e mais verificação por hash do que o
   estimado — o volume real de trabalho de UI é maior que "4 gerações por bloco".

## Pendência herdada do guia, ainda não resolvida (registro, não é meu escopo fechar)

- `guia-de-estilo.md` §1.3 marca como pendente a verificação de `objectID`/link direto
  das referências do Met Museum (API bloqueada na sessão de fundação). Não teve rede
  liberada para verificar nesta sessão de execução; segue pendente.

## Status geral desta sessão

- **Gerado:** `10b-do-caos-os-libertados` — 2/4 variações, ambas fora de especificação de
  proporção (retrato, não 1:1) e de formato (JPEG, não PNG).
- **Faltam:** as 8 character sheets, as demais 10 cenas (01–09, 10a), a capa (`00-capa`) —
  nenhuma gerada ainda.
- **Recusas do Gemini:** nenhuma, até aqui.
- **Bloqueio ativo:** proporção 1:1 não confirmada como alcançável nesta ferramenta/sessão
  sem decisão do diretor de arte sobre como fixar o parâmetro de aspect ratio. Gerar as
  ~80 imagens restantes sem resolver isso primeiro arrisca desperdiçar todo o lote.
