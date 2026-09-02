# Ensaio da Fase 5 — *Equidna e as portas do mundo* (`grega-equidna`)

> **2026-09-02 · `mito-diagramador`.** Antecipação da Fase 5 no mesmo espírito em que a
> Fase 4 foi antecipada com placeholders: rodar a cadeia inteira **agora**, com o miolo
> incompleto, para que a chegada das imagens seja um comando e não uma descoberta.
> Saída real de cada passo em `diagramacao/build.log`, seção “2026-09-02 — ENSAIO DA FASE 5”.

## Veredito

**A cadeia Typst → Ghostscript → PDF/X CMYK está PROVADA de ponta a ponta neste livro.**
`miolo-grafica.pdf`: **5.838.520 bytes · 48 páginas · 21,10 × 21,10 cm · imagens em
`/DeviceCMYK` · 6 fontes embutidas em subset · OutputIntent PDF/X-3 com 187.484 bytes de
ICC realmente embutidos.** Nada aqui é presunção: tudo saiu de comando executado.

## Correção de estado — são 5 ilustrações, não 6

O briefing dizia 6 encaixadas / 6 placeholders. O scan real diz **5 encaixadas / 7
placeholders**. Existem `05-a-pergunta-da-esfinge-A.png`, `06-o-leao-antes-A.png` e
`07-cerbero-o-abraco-sem-armas-A.png`, mas com sufixo de variante `-A`: são candidatos de
curadoria **não promovidos** ao id canônico que o `miolo.typ` chama. Promover é decisão do
`mito-diretor-arte` — o diagramador não renomeia arte por conta própria. Enquanto isso, o
encaixe de produção desenha placeholder e o build fica limpo.

De quebra: o `scan-imagens.sh` deste livro ainda varria os **ids do livro 1**. Reescrito
para os 12 ids reais (9 full-bleed + 3 vinhetas). O `verificar-dpi.py` tinha o mesmo
defeito e foi corrigido junto.

## Como o ICC foi resolvido

O `PDFX_def.ps` **não** apontava mais para `ISO Coated sb.icc` — alguém já tinha corrigido
para `E:/books/producao/grega/entrega/perfil.icc`. Mas isso é o `entrega/` **do livro 1**:
uma dependência cruzada entre livros que, no dia em que o livro 1 for movido ou limpo, faz
este livro voltar exatamente à armadilha — gs morto, PDF de 1 KB, exit code enganoso.

Feito:

1. `producao/grega-equidna/entrega/perfil.icc` criado a partir de
   `/e/tools/gs_extracted/iccprofiles/default_cmyk.icc` (187.484 bytes, md5
   `fd199526f0a7e0bceb294a777cd84252`) — o perfil que já vem no pacote oficial do
   Ghostscript, genérico e **livre de restrição de redistribuição** (FOGRA/SWOP não são).
2. Linha 43 do `PDFX_def.ps` apontada para esse caminho local.
3. `/Title` corrigido para o título deste volume.
4. A natureza provisória está **declarada em três lugares que a gráfica lê**: o cabeçalho
   do `.ps`, o `/OutputCondition` e o `/Info` do OutputIntent dentro do próprio PDF
   (`"perfil generico, pendente grafica"` / `"substituir pelo perfil da grafica escolhida"`).

**Quando o perfil real chegar, a troca é um caminho na linha 43 e recompilar.** Nada mais.

### A armadilha, reproduzida de propósito

Para o livro 3 não cair nela, o ensaio a provocou:

```
Last OS error: No such file or directory
GPL Ghostscript 10.07.1: Unrecoverable error, exit code 1
-rw-r--r--  1.263  armadilha.pdf
```

E, no mesmo ambiente, **chamando o `gs` dentro de um pipe (`| tail`), o `$?` lido foi `0`**
com o arquivo saindo a 1.263 bytes. Confirmação de campo da regra:
**conferir o TAMANHO do arquivo, nunca só o código de saída.**

## ⚠️ Correção de rota (mesmo dia, pelo coordenador)

**A primeira redação deste relatório delegou os 247 dpi à gráfica. Errado.**
`references/estilo-ilustracao.md` §Resolução já tinha o caso resolvido e o dono nomeado:
o upscale de pré-impressão é permitido, é necessário, e **"quem faz esse upscale é o
`mito-diagramador`, na Fase 4, não o ilustrador"**. 247 dpi é o estado **esperado** no fim
da Fase 3b, não um defeito a escalar. Como fica depois da correção está na seção
[Upscale executado](#upscale-de-pré-impressão-executado) — o diagnóstico abaixo fica de pé
como registro do que foi medido antes.

## O achado que ninguém queria: 247 dpi

Medido no arquivo de origem **e** dentro do PDF gerado, pela matriz de transformação de
cada imagem:

| Página | px | tamanho impresso | dpi real |
|---|---|---|---|
| 10, 14, 18, 22 (full-bleed) | 2048 | 21,10 cm | **247** |
| 40 (vinheta `08c`) | 2048 | 16,90 cm | **308** ✔ |

A conta: 21,10 cm = 8,3071 in; 2048 ÷ 8,3071 = **246,5 dpi**. Para 300 dpi seriam
**2492 px**, e o Gemini entrega 2048. **As full-bleeds saem a 82 % do piso da série.**
A vinheta passa só porque é impressa menor.

## Upscale de pré-impressão — executado

Ferramenta declarada, como a referência exige: **Pillow 12.0.0,
`Image.resize((2492,2492), Image.LANCZOS)`**, alvo 300 DPI, teto de 2×.
Script novo e reutilizável: `diagramacao/upscale-preimpressao.py`.

A regra que ele implementa, e que a contagem de pixels sozinha não enxerga: **decide-se
pelo TAMANHO IMPRESSO, não pelo número de px.** A tabela `TAMANHO_IMPRESSO_CM` é a fonte
da decisão, e o `verificar-dpi.py` foi reescrito para ler a **mesma** tabela — antes ele
usava um piso cego de 2492 px e reprovava a vinheta à toa.

| id | antes | depois | fator | decisão |
|---|---|---|---|---|
| `01-equidna-a-caverna-e-as-portas` | 2048×2048 (247 dpi) | **2492×2492 (300 dpi)** | 1,2168× | upscalado |
| `02-dragao-da-colquida` | 2048×2048 (247 dpi) | **2492×2492 (300 dpi)** | 1,2168× | upscalado |
| `03-ortro-o-turno-de-trabalho` | 2048×2048 (247 dpi) | **2492×2492 (300 dpi)** | 1,2168× | upscalado |
| `04-ladon-e-o-pedido-da-almofada` | 2048×2048 (247 dpi) | **2492×2492 (300 dpi)** | 1,2168× | upscalado |
| `08c-a-caverna-final` (vinheta, 16,90 cm) | 2048×2048 (**308 dpi**) | — | 1,0× | **NÃO upscalado** |

1,2168× é **61 % do teto de 2×**. A vinheta ficou intacta de propósito: esticá-la seria
interpolar pixel sem ganho nenhum, só para bater um número de px.

**Rastro do aprovado:** os PNGs que o diretor de arte aprovou foram copiados **antes** de
qualquer escrita para `ilustracoes/originais/<id>.png`, com md5 no `build.log`, e o script
lê de lá quando reexecutado — **rodar duas vezes não empilha interpolação**.

### Reverificação dentro do PDF (número real, não esperado)

Medido por pilha `q`/`Q` na matriz de transformação acumulada de cada imagem em
`miolo-grafica.pdf` — não pelo arquivo de origem:

    p.10  2492px em 598.11 pts = 21.10 cm -> 300.0 dpi   /DeviceCMYK
    p.14  2492px em 598.11 pts = 21.10 cm -> 300.0 dpi   /DeviceCMYK
    p.18  2492px em 598.11 pts = 21.10 cm -> 300.0 dpi   /DeviceCMYK
    p.22  2492px em 598.11 pts = 21.10 cm -> 300.0 dpi   /DeviceCMYK
    p.40  2048px em 479.06 pts = 16.90 cm -> 307.8 dpi   /DeviceCMYK

`typst` EXIT=0 sem warning · `miolo.pdf` 70.921.806 bytes · `gs` 48 páginas, GS_EXIT=0 ·
`miolo-grafica.pdf` **7.340.608 bytes** · 48 páginas · mediabox 21,10 cm · OutputIntent
`/GTS_PDFX` com ICC `/N 4` intacto · `verificar-dpi.py` → `ABAIXO DO PISO: 0`, EXIT=0.

**No checklist, o item de dpi saiu de `🔶 delegado à gráfica` e virou ✅ verde com
evidência** (A9 e A10). O antigo B2 fica riscado, com o registro do erro e da correção.

## Observação lateral de qualidade

O `pdfwrite` recomprimiu as imagens de `/FlateDecode` (sem perda) para `/DCTDecode` (JPEG,
com perda), **sem downsample** — os 2048 px foram preservados. Se a gráfica reclamar de
artefato de compressão, o remédio é `-dAutoFilterColorImages=false
-dColorImageFilter=/FlateEncode` no mesmo comando. Conhecido, **não executado** neste ensaio.

## O que muda para quem vem depois

Quando as 7 ilustrações restantes caírem em `ilustracoes/` com o **id canônico**, a
publicação do miolo é:

```bash
export PATH="/e/tools/typst-x86_64-pc-windows-msvc:/e/tools/gs_extracted/bin:$PATH"
export MSYS2_ARG_CONV_EXCL="*"
cd producao/grega-equidna/diagramacao
PYTHONIOENCODING=utf-8 python upscale-preimpressao.py   # upscale só do que precisa
PYTHONIOENCODING=utf-8 python verificar-dpi.py          # tem de sair EXIT=0
bash scan-imagens.sh
typst compile --root .. miolo.typ miolo.pdf
gswin64c -dPDFX -dBATCH -dNOPAUSE -dNOSAFER -sDEVICE=pdfwrite \
  -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK \
  -dPDFXSETBLEEDBOXTOMEDIABOX -sOutputFile=miolo-grafica.pdf PDFX_def.ps miolo.pdf
ls -l miolo-grafica.pdf     # ← TAMANHO, não exit code
```

Se um id novo não estiver em `TAMANHO_IMPRESSO_CM` (`upscale-preimpressao.py`),
**acrescentar o tamanho impresso dele na tabela antes** — os dois scripts leem a mesma, e
id ausente é ignorado em silêncio.

Continuam abertos, e nenhum é de diagramação: **capa/lombada** (não existem como arquivo),
**provas em PNG + revisão humana**, **perfil ICC da gráfica**, **ISBN/CIP**, e a escolha
entre PDF/X-3 e X-1a. O dpi **saiu** dessa lista. Checklist completo em
`publicacao/checklist-grafica.md`.
