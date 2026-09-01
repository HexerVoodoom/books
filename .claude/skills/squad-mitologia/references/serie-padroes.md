# Padrões da série (valem para todos os livros)

A coleção é o produto: um leitor que compra o segundo livro deve reconhecer o primeiro.

## Editorial
- Nome da série: **"Era Uma Vez um Mito"** (aprovado pelo humano no checkpoint da Fase 0 do
  livro grego, 2026-08-30). Livro 1: *Era Uma Vez um Mito — Grécia*.
- Disclosure de IA (ficha técnica, todos os livros): "Ilustrações criadas com auxílio de
  inteligência artificial generativa, sob direção de arte e curadoria humanas."
- Estrutura fixa de livro: ver `pipeline-impressao.md` §Estrutura.
- Capítulo específico: ~600–1.000 palavras · capítulo geral: ~1.200–2.000 (ver
  `adequacao-etaria.md`).
- Box "Você sabia?": mesmo título e posição em toda a série.
- Grafia de nomes: padronizada por livro no `livro-spec.md`; original entre parênteses na
  primeira ocorrência (ex.: "Tor (Thor)") — decisão de grafia é do editor, no gate da Fase 0.

## Visual
- Fórmula Mucha + aquarela + camada cultural: `estilo-ilustracao.md`.
- Grid de capa idêntico entre livros: título da série, título do livro, ilustração central
  com moldura cultural, mesmo lugar/tipografia.
- Tipografia da série: **decidida no primeiro run** (livro-piloto, Grécia, Fase 4,
  2026-09-01) — display/títulos: **Libertinus Serif**; corpo/leitura infantil: **DejaVu
  Sans**. Ambas embutem limpo no Typst (subset, `Type0`/CID) e as duas vieram já instaladas
  no ambiente de compilação (`typst fonts` confirma). Iguais em todos os livros da coleção
  a partir daqui — só a paleta de acento cultural muda por livro.
- Paleta: base neutra da série + acento cultural por livro (documentar hex no guia de estilo).

## Arquivos por livro — `producao/<slug>/`
```
livro-spec.md          # Fase 0
dossies/dossie-<mito>.md
capitulos/<nn>-<mito>.md
guia-de-estilo.md      # + character-sheets/
ilustracoes/<nn>-<mito>.png (300dpi, com sangria)
diagramacao/miolo.typ capa.typ build.log
entrega/miolo-grafica.pdf capa-grafica.pdf checklist.md
<fase>/gate.md
```
State em `producao/state/<slug>.json` (shape no CONTRACT §4).
