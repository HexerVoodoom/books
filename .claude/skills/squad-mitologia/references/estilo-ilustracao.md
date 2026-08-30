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
3. Ferramentas: Midjourney `--oref` (personagem) + `--sref`/`--sw` (estilo) quando
   disponível; Flux Kontext para edição consistente; para personagens muito recorrentes na
   série, considerar LoRA. Registrar no guia a ferramenta/parâmetros usados por livro.
4. Gerar em lote (3–4 variações) e **curar** — o diretor de arte escolhe/reprova.
5. Estilo aquarelado tolera microvariações; o que não pode variar: atributos, paleta
   pessoal, proporções e identidade facial.

## Esqueleto de prompt de cena
```
[ESTILO DA SÉRIE] Children's book full-page illustration, Alphonse Mucha art nouveau
composition with ornamental frame, soft watercolor rendering, paper grain —
[CAMADA CULTURAL do livro] — [DESCRIÇÃO CANÔNICA do(s) personagem(ns), verbatim] —
[CENA: ação + emoção + cenário + luz] — warm, wonder-filled, suitable for ages 4-7,
no text, no watermark
```
