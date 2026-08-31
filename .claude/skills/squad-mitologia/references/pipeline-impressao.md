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
**Instalado e verificado em 2026-08-31 neste ambiente:** `typst 0.15.1` · `gs 10.02.1` ·
`pdfinfo`/`pdffonts` 24.02.0 — o BLOQUEIA B1 do QA da squad está resolvido. Nota: o
`apt-get install` falha com 404 se o índice estiver velho; rode `apt-get update` antes.

```bash
# Typst (binário oficial)
curl -fsSL https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz \
  | tar -xJ && install typst-x86_64-unknown-linux-musl/typst /usr/local/bin/
# Ghostscript + poppler-utils (pdfinfo/pdffonts)
apt-get install -y ghostscript poppler-utils   # (ou apt equivalente do ambiente)
typst --version && gs --version && pdfinfo -v && pdffonts -v   # colar no build.log
```

Se a instalação for impossível no ambiente, os itens de verificação correspondentes são
marcados `delegado a ambiente com toolchain` no checklist — nunca verdes sem execução.

## Dependências de cor (pendência aberta na Fase 0, dona: mito-editor-chefe)

- **Perfil ICC:** pedir o da gráfica escolhida. Sem gráfica definida, usar um perfil coated
  padrão obtido de fonte oficial (perfis FOGRA têm restrição de redistribuição — **não
  commitar** no repo; documentar a origem no run). Caminho local: `producao/<livro>/entrega/perfil.icc`.
- **`PDFX_def.ps`:** gerar no run a partir do exemplo da documentação do Ghostscript,
  apontando para o perfil acima.

## Comandos do pipeline
```bash
typst compile miolo.typ miolo.pdf            # compilar
typst compile capa.typ capa.pdf

# Converter para PDF/X CMYK (perfil ICC da gráfica + PDFX_def.ps gerados no run — seção acima)
gs -dPDFX -dBATCH -dNOPAUSE -sDEVICE=pdfwrite \
   -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK \
   -sOutputICCProfile=producao/<livro>/entrega/perfil.icc \
   -sOutputFile=miolo-grafica.pdf PDFX_def.ps miolo.pdf
```

**Atenção:** `gs -dPDFX` não garante conformidade PDF/X sozinho (transparência, output
intent). Verificar o resultado: `gs`-preflight dos color spaces + `pdffonts` (embutidas) +
inspeção; o que não for verificável localmente vira item `delegado à gráfica` no checklist,
assinado assim pelo editor-chefe — e a prova final é a prova digital da gráfica, no
checkpoint humano.

## Checklist de gráfica (Fase 5 — verificar por execução)
- [ ] Compilação Typst sem warning de fonte/imagem faltante (colar log).
- [ ] Dimensões da página = trim + 2×3 mm (verificar com `pdfinfo`).
- [ ] Todas as imagens ≥300 DPI efetivos (verificar com script).
- [ ] PDF final em CMYK, fontes embutidas (`pdffonts`), sem transparência viva se X-1a.
- [ ] Nº de páginas do miolo múltiplo de 4.
- [ ] Nada essencial fora da zona segura (inspeção visual de cada spread renderizado).
- [ ] Capa com lombada na medida da gráfica.
- [ ] Prova digital revisada pelo humano no checkpoint.
