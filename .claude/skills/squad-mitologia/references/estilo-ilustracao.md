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

**Estado verificado em 2026-08-31, após o humano pôr o environment em "Full" network access:**

| Item | Estado |
|---|---|
| Rede até `google.com` / `gemini.google.com` | ✅ liberada (200) |
| Chromium alcança a web pelo proxy | ✅ **só com as flags abaixo** |
| Gemini abre e responde texto **deslogado** | ✅ (modelo Flash-Lite) |
| Gemini **gera imagem** deslogado | ❌ recusa: *"Você está conectado? …não consigo criar nenhuma"* |
| `generativelanguage.googleapis.com` (API) | ✅ alcançável (403 = falta chave, não bloqueio) |

**Flags obrigatórias do Chromium neste ambiente.** Sem elas o túnel abre e morre no handshake
TLS (`ws_closed_mid_exchange`, ~39 B de volta) e tudo dá `ERR_CONNECTION_RESET` — inclusive
`example.com`. A causa é ECH/TLS 1.3 contra o proxy que retermina TLS:

```python
executable_path="/opt/pw-browsers/chromium-1194/chrome-linux/chrome"  # versão do binário ≠ do pacote playwright
proxy={"server": os.environ["HTTPS_PROXY"]}   # a porta MUDA quando a política de rede é alterada — sempre ler do env
args=["--no-sandbox", "--ignore-certificate-errors", "--disable-quic",
      "--disable-features=EncryptedClientHello,UseDnsHttpsSvcb,AsyncDns,PostQuantumKyber,TLS13EarlyData",
      "--ssl-version-max=tls1.2"]
```

**Credencial — decisão pendente do humano.** A geração de imagem exige conta. Caminhos, do
mais limpo ao menos:
1. **Chave da API do Gemini** (aistudio.google.com/apikey) em variável de ambiente, nunca
   commitada: credencial escopada, revogável, feita para uso programático, e o endpoint já
   está alcançável. Modelo de imagem: `gemini-2.5-flash-image`.
2. **Rodar localmente:** o humano executa o script de geração na própria máquina, com o
   Chrome já logado, e devolve os PNGs ao repositório para a curadoria (3b) acontecer aqui.
3. ~~Transferir cookies de sessão do Google~~ — **não recomendado**: é acesso completo à
   conta, não é escopado nem revogável isoladamente.

## Esqueleto de prompt de cena
```
[ESTILO DA SÉRIE] Children's book full-page illustration, Alphonse Mucha art nouveau
composition with ornamental frame, soft watercolor rendering, paper grain —
[CAMADA CULTURAL do livro] — [DESCRIÇÃO CANÔNICA do(s) personagem(ns), verbatim] —
[CENA: ação + emoção + cenário + luz] — warm, wonder-filled, suitable for ages 4-7,
no text, no watermark
```
