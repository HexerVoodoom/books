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

Isso não é problema de diagramação e não se corrige no `miolo.typ`. As três saídas:

- **(a) a gráfica aceitar 240 dpi** — piso comum em offset a 150 lpi. É pergunta para ela,
  e é a saída mais barata se a resposta for sim;
- **(b) upscale por IA antes do encaixe** — decisão do `mito-diretor-arte`; é interpolação,
  não resolução nativa, e precisa ser declarada como tal;
- **(c) reduzir o trim** — a 17,3 cm as 2048 px dariam 300 dpi, mas isso muda a spec física
  da **série inteira**, com o livro 1 já fechado a 20,5 cm. Praticamente vetado.

**Nenhuma foi tomada aqui.** O item está `🔶 delegado` no checklist. O valor de ter rodado o
ensaio é exatamente este: a pergunta chega à gráfica com semanas de antecedência, e não na
véspera do envio — e vale para **todas as 12** ilustrações, não só para as 5 que já existem.

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
bash scan-imagens.sh
typst compile --root .. miolo.typ miolo.pdf
gswin64c -dPDFX -dBATCH -dNOPAUSE -dNOSAFER -sDEVICE=pdfwrite \
  -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK \
  -dPDFXSETBLEEDBOXTOMEDIABOX -sOutputFile=miolo-grafica.pdf PDFX_def.ps miolo.pdf
ls -l miolo-grafica.pdf     # ← TAMANHO, não exit code
```

Continuam abertos, e nenhum é de diagramação: **capa/lombada** (não existem como arquivo),
**provas em PNG + revisão humana**, **perfil ICC da gráfica**, **ISBN/CIP**, e a pergunta
do dpi. Checklist completo em `publicacao/checklist-grafica.md`.
