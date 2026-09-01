# Estilo de ilustração da coleção

## Fórmula da série

**Base fixa (toda a coleção):** art nouveau à la **Alphonse Mucha** — composição com moldura
ornamental, linhas de contorno fluidas, figura central heroica, halos/arcos decorativos —
com **acabamento aquarelado**: cores translúcidas, bordas suaves, granulação de papel.

**Camada variável (por livro):** a moldura ornamental, a paleta e os motivos decorativos
absorvem o **estilo artístico da cultura** (ver tabela em `acervos-de-imagem.md`). Ex.: no
livro grego, o arco de Mucha vira meandro e a paleta puxa terracota/negro da cerâmica; no
nórdico, a moldura é entrelaçado de Urnes; no egípcio, a paleta é ocre/lápis-lazúli e os
ornamentos citam hieróglifos.

A figura e a cena permanecem legíveis e acolhedoras para uma criança de 4 anos: rostos
expressivos, sem estilização que apague a emoção.

## Especificação técnica
- 1 ilustração de **página inteira** por capítulo + arte de capa.
- Tamanho final + 3 mm de sangria por lado, **300 DPI** (calcular pixels pelo trim size do
  `livro-spec.md`; ex.: 20,5×20,5 cm + sangria ≈ 2610×2610 px @300 DPI).
- **Resolução e upscale:** o Gemini web (ver §Execução abaixo) sai fixo em **2048×2048 px**
  por variação, **sempre**, independente do trim size pedido — não dá para pedir mais pelo
  prompt. Isso fica abaixo do piso de 300 DPI para um trim de 20,5 cm+sangria (2492×2492 px
  necessários). **Upscale é necessário e é permitido**, desde que declarado: ferramenta
  nomeada (verificado nesta coleção: Pillow, `Image.resize(..., Image.LANCZOS)`), fator
  registrado por imagem (2048→2492 = 1,2168×, bem abaixo do teto de 2×), e conferência por
  `verificar-dpi.py` antes de fechar o gate. **Distinção que importa:** isto é diferente do
  "upscale disfarçado" que o `mito-ilustrador` está proibido de fazer sozinho — aquele é
  sobre esconder baixa resolução do diretor de arte *antes* da aprovação; o upscale de
  pré-impressão acontece *depois*, sobre imagem já aceita, com fator e ferramenta expostos
  no `build.log`. Quem faz esse upscale é o `mito-diagramador`, na Fase 4, não o ilustrador.
- Zona segura: nada essencial a menos de 10 mm da borda; prever a margem interna (lombada).
- A cena retrata **o momento central do capítulo**, com os personagens **fiéis à descrição
  canônica do dossiê** (atributos: raio de Zeus, martelo de Thor…).

## Consistência de personagem (obrigatório)
1. **Character sheet primeiro:** antes de qualquer cena, gerar folha de referência do
   personagem (frente/perfil, 2–3 expressões) e aprovar com o diretor de arte.
2. **Descrição canônica congelada** no `guia-de-estilo.md` do livro: idade aparente, corpo,
   pele, cabelo, vestes, atributos, paleta pessoal. Todo prompt de cena **cola essa
   descrição verbatim** — nunca parafraseia.
3. **Ferramenta da coleção: Gemini** (decisão do humano, 2026-08-31), dirigido pelo
   navegador — ver §Execução via Chrome. Alternativas registradas: Midjourney `--oref`
   (personagem) + `--sref`/`--sw` (estilo); Flux Kontext para edição consistente; LoRA para
   personagens muito recorrentes na série. Registrar no guia a ferramenta/parâmetros por livro.
4. Gerar em lote (3–4 variações) e **curar** — o diretor de arte escolhe/reprova.
5. Estilo aquarelado tolera microvariações; o que não pode variar: atributos, paleta
   pessoal, proporções e identidade facial.

## Execução via Chrome + Gemini (método verificado em produção, 2026-08-31/09-01, livro Grécia)

**A geração é dirigida pelo agente no navegador REAL do dono**, autenticado — não um
Chromium isolado via Playwright/proxy (essa via foi tentada antes e não conseguia gerar
imagem deslogada; abandonada). O método que funcionou fim-a-fim, usado para as 21
ilustrações do livro-piloto:

- Ferramenta: **`claude-in-chrome` MCP** (extensão do Chrome do próprio usuário, já logada
  em `gemini.google.com/app`, modo Pro) — **nunca** a Claude_Browser/browser em sandbox do
  agente, que é uma origem isolada e não-autenticada.
- Processo completo, com todos os achados de confiabilidade da UI (aba em primeiro plano,
  nova conversa por variação, 1ª tentativa de colar falha, download imediato sem navegar
  para fora): ver a seção **"Gerar várias imagens via Gemini"** em `~/.claude/CLAUDE.md`
  (config global do usuário, fora deste repo) — é o registro canônico e reutilizável entre
  projetos, não duplicado aqui.
- **Achado específico desta coleção:** o Gemini entrega o arquivo com extensão `.png`, mas
  o **conteúdo real é JPEG/JFIF** (confirmado com `file` em toda imagem baixada nesta
  sessão). Isso quebra qualquer ferramenta que valide a assinatura do PNG (Typst inclusive:
  "Invalid PNG signature"). Recodificar sempre antes de usar: `PIL.Image.open(...).save(
  format="PNG")` preserva os pixels e resolve.
- **Aspect ratio:** o prompt tem que terminar com uma linha explícita de proporção
  ("Square 1:1 full-bleed composition." ou equivalente) — sem ela a saída vem em proporção
  aleatória. Ver nota em `templates/prompt-ilustracao.md` se o `[BASE]` do livro ainda não
  tiver essa linha.

**Credencial:** a conta do Gemini é a do dono, já logada no Chrome real — não há chave de
API nem cookie a gerenciar; o MCP opera a sessão do navegador como está.

## Esqueleto de prompt de cena
```
[ESTILO DA SÉRIE] Children's book full-page illustration, Alphonse Mucha art nouveau
composition with ornamental frame, soft watercolor rendering, paper grain —
[CAMADA CULTURAL do livro] — [DESCRIÇÃO CANÔNICA do(s) personagem(ns), verbatim] —
[CENA: ação + emoção + cenário + luz] — warm, wonder-filled, suitable for ages 4-7,
Square 1:1 full-bleed composition. no text, no watermark, no lettering
```
⚠️ **A linha de proporção ("Square 1:1 full-bleed composition." ou o equivalente 4:3 para
character sheets) é obrigatória e vai no FIM do prompt, sempre.** No livro grego, o
`[BASE]` congelado em `prompts.md` saiu sem essa linha (só teve o resto do esqueleto) e o
Gemini devolveu proporções aleatórias (retrato, paisagem, nunca quadrado) até a linha ser
adicionada manualmente pelo executor a cada prompt colado. Ao congelar o `[BASE]` de um
livro novo, copiar este esqueleto por extenso, com a linha de proporção incluída — não
confiar em "o resto do prompt já implica quadrado".
