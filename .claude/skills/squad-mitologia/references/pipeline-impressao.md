# Pipeline de diagramação e impressão

## Stack
**Typst** compõe o miolo e a capa → **Ghostscript** converte para PDF/X CMYK. Nenhuma
ferramenta open-source gera PDF/X de gráfica "de fábrica" — a etapa Ghostscript é
obrigatória, não opcional.

## Especificação física (default da série — confirmar com a gráfica no run)
- Trim size: **20,5 × 20,5 cm** (quadrado, padrão de livro ilustrado) — página Typst =
  trim + sangria: 21,1 × 21,1 cm.
- Sangria: **3 mm** em toda borda; ilustração de página inteira cobre até a sangria.
- Margem de segurança: 10 mm; margem interna maior conforme lombada.
- Imagens: **300 DPI no tamanho final**, sem upscale disfarçado.
- Fontes embutidas (Typst embute por padrão); mínimo de corpo 14–16 pt para o texto.
- Miolo: múltiplo de 4 páginas. Capa em arquivo separado (frente + lombada + verso,
  largura da lombada = f(nº páginas, papel) — pedir tabela da gráfica).

## Estrutura do livro (ordem)
1. Capa · 2. Falsa folha de rosto · 3. Folha de rosto · 4. Ficha técnica/créditos ·
5. Sumário ilustrado · 6. Abertura ("Bem-vindo ao mundo de…") · 7. Capítulos específicos
(spread: ilustração página inteira à esquerda ou direita + texto) · 8. Capítulo geral ·
9. Glossário · 10. "De onde vêm estas histórias" (fontes) · 11. Contracapa (texto de quarta
capa).

## Setup da toolchain (pré-condição da Fase 4 — provar por execução)

O ambiente **não vem com nada disso instalado**. A Fase 4 abre instalando e provando.
**Instalado e verificado em 2026-08-31 (Linux) e de novo em 2026-09-01 (Windows, sem
admin):** `typst 0.15.1` · `gs 10.02.1`/`10.07.1` · `pdfinfo`/`pdffonts` 24.02.0 (Linux) ou
`pypdf` (Windows, quando poppler-utils não está disponível) — o BLOQUEIA B1 do QA da squad
está resolvido nos dois SOs. Nota: o `apt-get install` falha com 404 se o índice estiver
velho; rode `apt-get update` antes.

⚠️ **No Windows os binários NÃO estão no PATH** (reconfirmado 2026-09-01, livro 2). Eles
existem, extraídos pelo run do livro 1 — não reinstale, só exporte o PATH:

```bash
export PATH="/e/tools/typst-x86_64-pc-windows-msvc:/e/tools/gs_extracted/bin:$PATH"
export MSYS2_ARG_CONV_EXCL="*"    # senão o MSYS2 quebra /DeviceCMYK
# typst 0.15.1 · gswin64c 10.07.1 · ICC e PDFX_def.ps em /e/tools/gs_extracted/{iccprofiles,lib}
```

`pdfinfo`/`pdffonts` continuam **ausentes** no Windows; o substituto é `pypdf` (6.13.1,
Python 3.14 — já instalado). Cuidado com o `PDFX_def.ps` do pacote: a linha 45 vem com
`/ICCProfile (ISO Coated sb.icc)`, arquivo que **não existe** — sem trocar por um caminho
real o `gs` morre com `/undefinedfilename`, e ainda assim sai um PDF de 1 KB (exit code do
pipe engana). Sempre conferir o **tamanho** do PDF de saída, não só o exit code.

```bash
# Linux — Typst (binário oficial)
curl -fsSL https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz \
  | tar -xJ && install typst-x86_64-unknown-linux-musl/typst /usr/local/bin/
# Linux — Ghostscript + poppler-utils (pdfinfo/pdffonts)
apt-get install -y ghostscript poppler-utils   # (ou apt equivalente do ambiente)
typst --version && gs --version && pdfinfo -v && pdffonts -v   # colar no build.log
```

### Windows sem privilégios de admin (achado 2026-09-01, livro Grécia)

`choco install` falha com `Unable to obtain lock file access` quando o shell não está
elevado — comum em sessão de agente, que não pode pedir UAC. Caminho que funciona sem
admin nenhum:

```bash
# Typst: binário oficial, zip, sem instalador — só baixar e apontar o PATH pra pasta
curl -L -o typst.zip https://github.com/typst/typst/releases/latest/download/typst-x86_64-pc-windows-msvc.zip
unzip typst.zip   # typst.exe fica pronto pra usar, nenhuma instalação

# Ghostscript: o instalador oficial (gsNNNNw64.exe) é um NSIS self-extracting.
# `/S` (silent) do NSIS pode falhar ou pendurar sem admin — mas o 7-Zip EXTRAI um NSIS
# sem rodar o instalador, sem precisar de admin:
"C:\Program Files\7-Zip\7z.exe" x -y gsNNNNw64.exe -o<pasta-destino>
# gswin64c.exe fica em <pasta-destino>/bin/ — e os perfis ICC genéricos do próprio pacote
# ficam em <pasta-destino>/iccprofiles/ (útil pra §Dependências de cor abaixo).
```

`pdfinfo`/`pdffonts` (poppler-utils) muitas vezes não têm build Windows-sem-admin fácil.
Substituto verificado, mesmas perguntas: **`pypdf`** (Python) —
`PdfReader(...).pages`, `.mediabox.width/height` (dimensões/contagem de páginas) e
inspecionar `/Resources/Font` de uma página (`/BaseFont`, presença de `/FontDescriptor`) —
o prefixo de 6 letras aleatórias no nome (`ex.: TNXSQP+LibertinusSerif`) confirma subset
embutido. Colar a saída no `build.log` do mesmo jeito que colaria `pdffonts`.

Se a instalação for impossível no ambiente, os itens de verificação correspondentes são
marcados `delegado a ambiente com toolchain` no checklist — nunca verdes sem execução.

## Dependências de cor (pendência aberta na Fase 0, dona: mito-editor-chefe)

- **Perfil ICC:** pedir o da gráfica escolhida. Sem gráfica definida, usar um perfil coated
  padrão obtido de fonte oficial (perfis FOGRA têm restrição de redistribuição — **não
  commitar** no repo; documentar a origem no run). Caminho local: `producao/<livro>/entrega/perfil.icc`.
  **Fallback verificado (livro Grécia, 2026-09-01):** sem gráfica escolhida, o próprio pacote
  do Ghostscript já vem com `iccprofiles/default_cmyk.icc` — genérico, mas livre de
  restrição de redistribuição (é parte do instalador oficial). Serve como placeholder
  documentado até a gráfica real entrar; nunca apresentar como perfil final de produção.
- **`PDFX_def.ps`:** gerar no run a partir do exemplo da documentação do Ghostscript —
  ele já vem no pacote (`lib/PDFX_def.ps`), não precisa buscar online. Customizar só
  `/Title` e `/ICCProfile`.

## Comandos do pipeline
```bash
typst compile miolo.typ miolo.pdf            # compilar
typst compile capa.typ capa.pdf

# Converter para PDF/X CMYK (perfil ICC da gráfica + PDFX_def.ps gerados no run — seção acima)
gs -dPDFX -dBATCH -dNOPAUSE -sDEVICE=pdfwrite \
   -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK \
   -dPDFXSETBLEEDBOXTOMEDIABOX \
   -sOutputFile=miolo-grafica.pdf PDFX_def.ps miolo.pdf
```

⚠️ **`-dNOSAFER` pode ser necessário** (achado 2026-09-01): o modo SAFER padrão do
Ghostscript 10.07 bloqueou a leitura do `/ICCProfile` referenciado dentro do
`PDFX_def.ps` (`Error: /invalidfileaccess`), tanto por caminho relativo quanto absoluto.
Sem outra saída identificada nesse ambiente. É seguro rodar `-dNOSAFER` neste passo porque
os únicos arquivos envolvidos são os PDFs e o ICC do próprio run — não há conteúdo externo
não confiável sendo processado.

⚠️ **MSYS2/Git Bash no Windows reescreve `/DeviceCMYK` como caminho de arquivo**
(`C:/Program Files/Git/DeviceCMYK`) antes de passar pro Ghostscript, e o comando falha com
"Invalid value for option". Fix: `export MSYS2_ARG_CONV_EXCL="*"` antes de chamar `gs`.

**Atenção:** `gs -dPDFX` não garante conformidade PDF/X sozinho (transparência, output
intent). Verificar o resultado por execução, não por nome de arquivo: abrir o PDF gerado
com `pypdf`/`pdffonts`+inspeção e confirmar que o `/ColorSpace` das imagens é
`/DeviceCMYK` (não só que o comando rodou sem erro) — o que não for verificável localmente
vira item `delegado à gráfica` no checklist, assinado assim pelo editor-chefe, e a prova
final é a prova digital da gráfica, no checkpoint humano.

## Arquivo muito grande para o Git normal (achado 2026-09-01)

O `miolo.pdf` bruto (RGB, antes da conversão CMYK) de um livro de ~60 páginas com 11
ilustrações full-bleed a 300 DPI passa fácil de 100 MB — o limite rígido do GitHub sem
Git LFS. `miolo-grafica.pdf` (pós-Ghostscript, recomprimido) fica bem menor (~10-20 MB) mas
ainda vale rastrear os PDFs do miolo via LFS por padrão:
```bash
git lfs track "producao/<livro>/diagramacao/*.pdf"
```
(gera/atualiza `.gitattributes` na raiz do repo — um `git lfs track` por repo, não por
livro.)

## Checklist de gráfica (Fase 5 — verificar por execução)
- [ ] Compilação Typst sem warning de fonte/imagem faltante (colar log).
- [ ] Dimensões da página = trim + 2×3 mm (verificar com `pdfinfo`).
- [ ] Todas as imagens ≥300 DPI efetivos (verificar com script).
- [ ] PDF final em CMYK, fontes embutidas (`pdffonts`), sem transparência viva se X-1a.
- [ ] Nº de páginas do miolo múltiplo de 4.
- [ ] Nada essencial fora da zona segura (inspeção visual de cada spread renderizado).
- [ ] Capa com lombada na medida da gráfica.
- [ ] Prova digital revisada pelo humano no checkpoint.
