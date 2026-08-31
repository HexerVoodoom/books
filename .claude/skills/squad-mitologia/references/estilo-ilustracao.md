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
- **Resolução e upscale:** geradores como Midjourney saem em ~1024–2048 px — chegar aos
  pixels finais **exige upscale, e isso é permitido** desde que declarado: ferramenta de
  upscale nomeada no guia de estilo, fator ≤2× a partir da maior saída nativa, e inspeção
  visual de nitidez num recorte a 100% (metadado de DPI não prova nada). Acima de 2×,
  reduza o trim size ou troque a ferramenta — nunca upscale disfarçado.
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

## Execução via Chrome + Gemini (decisão do humano, 2026-08-31)

A geração deixa de ser "pacote para o humano executar" e passa a ser **dirigida por agente
no navegador**: Chromium (Playwright) abre o Gemini, cola o prompt do
`templates/prompt-ilustracao.md`, gera as variações, baixa os PNGs para
`producao/<livro>/ilustracoes/` e o diretor de arte cura.

**Pré-condição de ambiente — verificar ANTES de abrir a Fase 3** (`references/pipeline-impressao.md`
tem o mesmo padrão para a toolchain de impressão):

```bash
curl -sS "$HTTPS_PROXY/__agentproxy/status"   # procurar recentRelayFailures
```

Estado verificado em 2026-08-31 **neste ambiente remoto**: `gemini.google.com:443` e
`www.google.com:443` recebem **403 no CONNECT** — negação de política de rede do ambiente,
não falta de login. Chromium existe em `/opt/pw-browsers/chromium-1194/chrome-linux/chrome`
(passar `executable_path`; a versão do pacote `playwright` não bate com a do binário).

Dois caminhos, decisão do humano no checkpoint:
1. **Liberar o domínio** na política de rede do ambiente (Claude Code na web →
   configuração do environment) e resolver a sessão Google. Aí a Fase 3 roda inteira aqui,
   com 3a e 3b colapsados num gate só.
2. **Rodar localmente:** a squad entrega, além dos prompts, um **script Playwright pronto**
   (`producao/<livro>/ilustracoes/gerar.py`) que o humano executa na própria máquina, onde o
   Chrome já tem a sessão do Google. As imagens voltam ao repositório e a curadoria (3b)
   acontece aqui normalmente.

## Esqueleto de prompt de cena
```
[ESTILO DA SÉRIE] Children's book full-page illustration, Alphonse Mucha art nouveau
composition with ornamental frame, soft watercolor rendering, paper grain —
[CAMADA CULTURAL do livro] — [DESCRIÇÃO CANÔNICA do(s) personagem(ns), verbatim] —
[CENA: ação + emoção + cenário + luz] — warm, wonder-filled, suitable for ages 4-7,
no text, no watermark
```
