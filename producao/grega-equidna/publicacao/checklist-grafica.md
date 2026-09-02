# Checklist de gráfica — *Equidna e as portas do mundo* (`grega-equidna`)

> **Estado: ENSAIO da Fase 5, 2026-09-02, `mito-diagramador`.** Rodado com o miolo real
> (5 ilustrações encaixadas + 7 placeholders de encaixe). Nenhum item fica ✅ sem saída de
> comando colada no `diagramacao/build.log` do mesmo run. O que depende do dono ou da
> gráfica é `🔶 delegado` — **nunca verde maquiado** (METODO, Fase 5).
>
> **Este checklist NÃO está assinado.** Quem assina é o `mito-editor-chefe`, e só depois
> das 7 ilustrações restantes e do gate humano.

## Legenda
`✅ verificado` = comando executado, saída no build.log · `🔶 delegado` = decisão do dono ou
da gráfica, fora da alçada do diagramador · `⛔ bloqueado` = depende de insumo que não
chegou · `⬜ não iniciado`.

---

## A. Miolo — o que este ensaio já provou

| # | Item | Estado | Evidência (build.log §) |
|---|---|---|---|
| A1 | Compilação Typst sem warning de fonte/imagem faltante | ✅ verificado | §2 — `typst compile --root .. miolo.typ miolo.pdf`, EXIT=0, sem warning |
| A2 | Dimensão da página = trim 20,5 cm + 2 × 3 mm de sangria | ✅ verificado | §6 — mediabox 598,11 × 598,11 pts = **21,10 cm** nos dois PDFs (pypdf) |
| A3 | Nº de páginas do miolo múltiplo de 4 | ✅ verificado | §6 — **48 páginas**, 48 % 4 == 0 |
| A4 | Conversão Ghostscript → PDF/X concluída de verdade (não PDF falso de 1 KB) | ✅ verificado | §3 — `miolo-grafica.pdf` = **5.838.520 bytes**; §5 reproduz a armadilha (1.263 bytes) para contraste |
| A5 | PDF final em CMYK | ✅ verificado | §6 — as 5 imagens saem `/DeviceCMYK` (entram `/ICCBased`) |
| A6 | Fontes embutidas em subset | ✅ verificado | §6 — 6 fontes `/Type0`, todas com `/FontFile*` e prefixo de subset de 6 letras |
| A7 | OutputIntent PDF/X presente com perfil embutido | ✅ verificado | §6 — `/S /GTS_PDFX`, `/N 4`, 187.484 bytes de ICC no `/DestOutputProfile`; `/GTS_PDFXVersion PDF/X-3:2002` |
| A8 | `/Title` e `/Trapped` corretos no DocInfo | ✅ verificado | §6 — `Equidna e as portas do mundo — Era Uma Vez um Mito — Grecia I`, `/Trapped /False` |

## B. Miolo — o que este ensaio NÃO pode fechar

| # | Item | Estado | Por quê |
|---|---|---|---|
| B1 | **12 ilustrações encaixadas** (hoje 5) | ⛔ bloqueado | Downloads do Chrome — pendência do dono. 7 páginas ainda com placeholder de encaixe. Além disso `05`, `06` e `07` existem só como variante `-A`, não promovida ao id canônico (decisão do `mito-diretor-arte`). |
| B2 | **Todas as imagens ≥ 300 dpi efetivos** | 🔶 **delegado à gráfica** | **Medido: 246,5 dpi.** 2048 px em 21,10 cm = 8,3071 in → 247 dpi; 300 dpi exigiriam 2492 px. As 4 full-bleeds ficam a **82 % do piso**. Só a vinheta da p. 40 passa (16,9 cm → 308 dpi). Saídas: a gráfica aceitar 240 dpi; upscale por IA (interpolação, decisão de arte); ou reduzir o trim (mudaria a spec da série). **Nenhuma tomada aqui.** |
| B3 | Nada essencial fora da zona segura (inspeção de cada spread) | ⬜ não iniciado | Precisa das provas em PNG e de olho humano; e das 7 páginas que ainda são placeholder |
| B4 | Sem transparência viva (exigência do X-1a) | 🔶 delegado à gráfica | Saímos em **PDF/X-3:2002**, que admite transparência. Se a gráfica exigir X-1a, refazer com `-dPDFX=1` e reverificar. Ninguém perguntou à gráfica ainda. |
| B5 | Compressão das imagens aceita pela gráfica | 🔶 delegado à gráfica | O `pdfwrite` recomprimiu de `/FlateDecode` (sem perda) para `/DCTDecode` (JPEG), sem downsample (2048 px preservados). Reversível com `-dAutoFilterColorImages=false -dColorImageFilter=/FlateEncode` |

## C. Cor

| # | Item | Estado | Nota |
|---|---|---|---|
| C1 | Perfil ICC apontando para arquivo que existe, no diretório do próprio livro | ✅ verificado | `producao/grega-equidna/entrega/perfil.icc`, md5 `fd199526f0a7e0bceb294a777cd84252`, 187.484 bytes. Antes o `.ps` apontava para o `entrega/` do **livro 1** — dependência cruzada que viraria PDF falso silencioso |
| C2 | **Perfil ICC final da gráfica** | 🔶 **delegado ao dono** — aberto desde o livro 1 | O que está lá é o `default_cmyk.icc` do próprio Ghostscript: genérico, livre de restrição de redistribuição, **declarado como provisório** no cabeçalho do `PDFX_def.ps` e no `/OutputCondition` e `/Info` do OutputIntent do PDF. Trocar = **um caminho na linha 43 do `PDFX_def.ps`** + recompilar |
| C3 | Prova digital da gráfica revisada | ⬜ não iniciado | Só existe depois de escolher a gráfica |

## D. Capa

| # | Item | Estado |
|---|---|---|
| D1 | `capa.typ` diagramada | ⬜ não iniciado — capa e lombada ainda não existem como arquivo |
| D2 | Lombada na medida da gráfica (gramatura × 48 pp) | 🔶 delegado à gráfica — a medida vem dela |
| D3 | Capa convertida a PDF/X CMYK | ⬜ não iniciado |

## E. Gate humano

| # | Item | Estado |
|---|---|---|
| E1 | Provas em PNG geradas para o checkpoint | ⬜ não iniciado |
| E2 | Prova revisada pelo humano | ⬜ não iniciado |
| E3 | ISBN / ficha CIP na ficha técnica | 🔶 delegado ao dono |
| E4 | Checklist assinado pelo `mito-editor-chefe` | ⬜ não iniciado |

---

## Resumo honesto

**8 itens verdes com evidência de execução. 6 delegados (2 ao dono, 4 à gráfica). 1
bloqueado pelas imagens. 7 não iniciados** (capa, provas, gate).

O que este ensaio comprou: quando as 7 ilustrações restantes chegarem, a publicação do
miolo é **um comando de scan + um de typst + um de gs**, e não uma descoberta de problema
no fim. O que ele desenterrou antes da hora: **o dpi das full-bleeds fica em 247, não em
300** — decisão de gráfica que agora aparece com semanas de antecedência, e não na véspera.
