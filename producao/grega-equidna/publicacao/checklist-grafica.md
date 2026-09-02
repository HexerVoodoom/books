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
| A9 | **Todas as imagens encaixadas ≥ 300 dpi no tamanho impresso** | ✅ **verificado** | Seção “UPSCALE DE PRÉ-IMPRESSÃO” — medido **dentro do PDF**, pela matriz de transformação: pp. 10/14/18/22 = **300,0 dpi** (2492 px em 21,10 cm) e p. 40 = **307,8 dpi** (2048 px em 16,90 cm). `verificar-dpi.py` → `ABAIXO DO PISO: 0`, EXIT=0 |
| A10 | Upscale de pré-impressão declarado conforme `estilo-ilustracao.md` §Resolução | ✅ verificado | Pillow 12.0.0 · `Image.resize(..., Image.LANCZOS)` · **fator 1,2168×** (61 % do teto de 2×) nas 4 full-bleeds · vinheta da p. 40 **não** upscalada (já dava 308 dpi) · originais aprovados preservados com md5 em `ilustracoes/originais/` |

## B. Miolo — o que este ensaio NÃO pode fechar

| # | Item | Estado | Por quê |
|---|---|---|---|
| B1 | **12 ilustrações encaixadas** (hoje 5) | ⛔ bloqueado | Downloads do Chrome — pendência do dono. 7 páginas ainda com placeholder de encaixe. Além disso `05`, `06` e `07` existem só como variante `-A`, não promovida ao id canônico (decisão do `mito-diretor-arte`). |
| ~~B2~~ | ~~Todas as imagens ≥ 300 dpi efetivos~~ | **RESOLVIDO → ver A9/A10** | O ensaio tinha marcado isto `delegado à gráfica`. **Errado, e corrigido no mesmo dia:** `estilo-ilustracao.md` §Resolução já resolve o caso — 247 dpi é o estado esperado no fim da Fase 3b (o Gemini sai fixo em 2048 px) e **o dono do upscale de pré-impressão é o `mito-diagramador`, na Fase 4**. Não era decisão de gráfica; era um passo meu. Feito e verificado. |
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

**10 itens verdes com evidência de execução. 5 delegados (2 ao dono, 3 à gráfica). 1
bloqueado pelas imagens. 7 não iniciados** (capa, provas, gate).

O que este ensaio comprou: quando as 7 ilustrações restantes chegarem, a publicação do
miolo é a sequência mecânica de 5 comandos deixada pronta no fim do `build.log`, e não uma
descoberta de problema no fim.

O que ele desenterrou antes da hora: **as full-bleeds saíam a 247 dpi**. O ensaio errou ao
marcar isso como decisão de gráfica — a referência de estilo já dava o dono (o
diagramador) e a saída (upscale LANCZOS declarado, fator registrado, teto de 2×). Corrigido
no mesmo dia: **1,2168× nas 4 full-bleeds, a vinheta deixada intacta porque já dava 308
dpi, e o resultado medido dentro do PDF em 300,0 dpi.** Se o ensaio não tivesse rodado
agora, esse passo só apareceria com as 12 imagens na mão e a gráfica esperando.
