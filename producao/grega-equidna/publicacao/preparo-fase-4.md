# Preparo da Fase 4 — *Equidna e as portas do mundo* (`grega-equidna`)

> **2026-09-01 · `mito-editor-chefe`.** Run de adiantamento: as imagens estão bloqueadas por um
> problema de download do Chrome que só o dono resolve (ver `CLAUDE.md` §Bloqueios conhecidos).
> Este documento adianta tudo que **não depende de imagem**: pendências de série, propagação de
> título e prova por execução da toolchain de diagramação.

---

## 1. Padrões de série gravados (`references/serie-padroes.md`)

Quatro seções novas, todas fundadas neste run e válidas para a coleção inteira:

1. **§Spin-offs** — a série mantém "um livro por mitologia" (CONTRACT §0 intacto). Spin-off
   recebe numeração `<Mitologia> · <romano>` (este é *Grécia · I*), nunca um número da linha
   principal. Capa e lombada distinguem por uma **tarja de recorte** no lugar do nome seco da
   mitologia (`ERA UMA VEZ UM MITO · GRÉCIA · HISTÓRIAS DE DENTRO`). O sumário da coleção passa
   a ter duas listas: "A coleção" e, indentada sob a mitologia-mãe, "Histórias de dentro".
2. **§Dívidas de coleção assumidas** — tabela nova, com a D-1 (Pégaso/Quimera) registrada
   abaixo.
3. **§Paratexto** — formato de quarta capa da série (fundado aqui; o livro 1 não tem), mais a
   **regra do paratexto virgem**.
4. **§Fidelidade — regras seriais** — divergência de parentela ⇒ o miolo nunca declara grau,
   título incluído.

### ⚠️ Dívida D-1 — Pégaso/Quimera (o dono precisa ver isto)

O livro 1 **excluiu Pégaso de propósito** do cap. 7 (Perseu/Medusa) para guardá-lo junto da
Quimera. O livro 2 **não paga o gancho**: a Quimera aparece apenas viva, no retrato de origem do
cap. 8, e Pégaso não é nomeado em lugar nenhum do livro.

A dívida foi **transferida para um volume nomeado**: ***Heróis da Grécia*** (Grécia · II), com
Belerofonte, Pégaso e a Quimera num capítulo próprio. **Esse volume não está iniciado.** Se ele
nunca sair, a exclusão deliberada do livro 1 vira **calote retroativo** com o leitor — a promessa
terá sido feita e nunca paga. As duas saídas honestas, se o volume for cancelado, são: pagar em
outro volume da Grécia, ou reabrir o cap. 7 do livro 1 numa reimpressão e devolver Pégaso a ele.

A regra que passa a valer: **nenhuma dívida nova sem volume nomeado e sem linha na tabela**,
escrita no mesmo run em que a promessa é adiada.

### A melhor achada do run — regra do paratexto virgem

> O paratexto (quarta capa, orelha, catálogo, release, anúncio) **jamais usa a redação literal da
> primeira nem da última frase do miolo** — nem metade delas.

Motivo: essas duas frases são as de maior efeito do livro e o paratexto é lido trinta segundos
antes, na livraria ou pelo adulto que vira o livro antes de abrir. O leitor chega à p. 7 com a
abertura já gasta, e na 20ª releitura isso não se recupera.

**Violada duas vezes neste livro, pega nas duas:** a frase-fio (primeira linha do miolo) foi
mantida fora da quarta capa por decisão declarada em `quarta-capa.md` §4; e a Rev. 1 da quarta
capa foi **reprovada como FATAL (F-1)** por copiar literalmente a abertura do cap. 7, incluindo a
batida cômica *"Não precisa."*, que é o tempo da piada. Cumpre-se ecoando o conceito em gramática
diferente.

---

## 2. Propagação do título — *Equidna e seus filhos* → *Equidna e as portas do mundo*

Grep em `producao/grega-equidna/`: **6 ocorrências em 5 arquivos**.

| Arquivo | Linha | Natureza | Ação |
|---|---|---|---|
| `fundacao/livro-spec.md` | 1 | **nome corrente** (cabeçalho do spec) | ✅ **corrigido** |
| `HANDOFF-FASE-0.md` | 1 | **nome corrente** (título do handoff) | ✅ **corrigido** + nota de rodapé explicando o título de trabalho |
| `fundacao/livro-spec.md` | 13 | histórico da decisão (§Identidade) | ⛔ preservado |
| `capitulos/quarta-capa.md` | 102 | histórico — §Decisão de título | ⛔ preservado |
| `capitulos/gate.md` | 47 | histórico — registro do gate da Fase 2 | ⛔ preservado |
| `fundacao/verificacao-relampago.md` | 3 | histórico — parecer da Fase 0 | ⛔ preservado |

**2 arquivos corrigidos, 4 ocorrências preservadas de propósito.** Gates e pareceres continuam
mostrando o título antigo: é o registro do que foi decidido, e apagá-lo apagaria a decisão.

`producao/state/grega-equidna.json` já carregava o título novo (campos `titulo` e
`titulo_anterior`) — nada a fazer. Capa e lombada ainda não existem como arquivo (Fase 4/5) e
nascerão com o título correto.

---

## 3. Toolchain da Fase 4 — provada por execução

**Veredito: ✅ APROVADA.** A Fase 4 pode abrir diagramando, não instalando. Nada precisa ser
instalado: os binários já existem no disco, extraídos pelo run do livro 1 — só **não estão no
PATH**. Prefixo obrigatório de toda sessão de Fase 4:

```bash
export PATH="/e/tools/typst-x86_64-pc-windows-msvc:/e/tools/gs_extracted/bin:$PATH"
export MSYS2_ARG_CONV_EXCL="*"
```

### 3.1 Versões (saída real)

```
$ typst --version
typst 0.15.1 (9dfd3a08)

$ gswin64c --version
10.07.1

$ pdfinfo -v   /   pdffonts -v
bash: pdfinfo: command not found
bash: pdffonts: command not found

$ python -c "import pypdf,sys; print('pypdf', pypdf.__version__); print(sys.version)"
pypdf 6.13.1
3.14.0 (tags/v3.14.0:ebf955d, Oct  7 2025, 10:15:03) [MSC v.1944 64 bit (AMD64)]
```

`poppler-utils` continua ausente no Windows (esperado — `pipeline-impressao.md` §Setup já prevê).
O substituto declarado, **`pypdf`**, está instalado e responde às mesmas perguntas.

### 3.2 Fontes seriais disponíveis

```
$ typst fonts | grep -iE "libertinus|dejavu"
DejaVu Math TeX Gyre
DejaVu Sans
DejaVu Sans Mono
DejaVu Serif
Libertinus Serif
```

As duas famílias da série (Libertinus Serif display · DejaVu Sans corpo) estão presentes.

### 3.3 Cadeia completa Typst → Ghostscript PDF/X → inspeção (smoke test executado)

Arquivo de prova: página 21,1 × 21,1 cm (trim 20,5 + 2 × 3 mm de sangria), as duas fontes da
série.

```
$ typst compile smoke.typ smoke.pdf
EXIT=0        (sem warning)

$ gswin64c -dPDFX -dBATCH -dNOPAUSE -dNOSAFER -sDEVICE=pdfwrite \
    -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK \
    -dPDFXSETBLEEDBOXTOMEDIABOX -sOutputFile=smoke-grafica.pdf PDFX_def.ps smoke.pdf
GPL Ghostscript 10.07.1 (2026-05-19)
Processing pages 1 through 1.
Page 1
GS_EXIT=0
-rw-r--r-- 1 Sperandio 197609 150171 smoke-grafica.pdf

$ python (pypdf)
smoke.pdf         | paginas: 1 | mediabox pts: 598.1102 x 598.1102
     /SVOSZY+LibertinusSerif-Bold-Identity-H | subtype /Type0 | embutida: True
     /MZPFIP+DejaVuSans                      | subtype /Type0 | embutida: True
smoke-grafica.pdf | paginas: 1 | mediabox pts: 598.11 x 598.11
     /TTRQQG+DejaVuSans                      | subtype /Type0 | embutida: True
     /EZHWDU+LibertinusSerif-Bold            | subtype /Type0 | embutida: True
```

598,11 pt = 21,1 cm ✔ (trim + sangria, confere com o pipeline). Prefixo de 6 letras aleatórias
nos dois nomes de fonte, nos dois PDFs = **subset embutido** ✔. `-dNOSAFER` e
`MSYS2_ARG_CONV_EXCL` foram necessários, exatamente como o pipeline documenta.

### 3.4 Insumos de cor confirmados no disco

- `/e/tools/gs_extracted/iccprofiles/default_cmyk.icc` — placeholder documentado (nunca
  apresentar como perfil final; a pendência do **perfil ICC da gráfica** segue **aberta**,
  herdada do livro 1).
- `/e/tools/gs_extracted/lib/PDFX_def.ps` — presente.

### ⚠️ Armadilha nova, achada neste run (custou uma rodada)

O `PDFX_def.ps` do pacote traz na **linha 45** `/ICCProfile (ISO Coated sb.icc) def` — arquivo
que **não existe**. Sem trocar por um caminho real, o Ghostscript morre com
`Error: /undefinedfilename in --file--` **e ainda assim escreve um PDF de 1.207 bytes**. Pior: o
`gs` estava num pipe e o exit code lido foi `0`. **Verificar sempre o tamanho do PDF de saída, e
não só o exit code** — item adicionado ao `pipeline-impressao.md`.

---

## 4. `miolo.typ` do livro 1 como template — veredito

**Reutilizável, com ressalva de forma.** A base é `producao/grega/diagramacao/miolo-template.typ`
(12.275 bytes) — o `miolo.typ` de 92 KB é **gerado** por `gerar_typst.py` a partir de
`conteudo/*.json`, e não deve ser copiado à mão.

**Aproveita-se inteiro (§0–§3 do template — a parte que já se declara "reutilizável livro 2 em
diante"):**

- constantes físicas `TRIM`/`SANGRIA`/`PAGE` e as duas réguas de margem (miolo e aparato);
- `fullbleed(id, label, desc)` — inclusive o **encaixe de produção** que desenha um placeholder
  quando o PNG não existe, sem quebrar o build. **É exatamente o que destrava este livro agora:
  dá para diagramar as 48 páginas inteiras e compilar limpo com as 22 ilustrações ainda por
  gerar**, e depois só soltar os PNGs;
- `chapter-title`, `voce-sabia`, `pagina-aparato` (2 colunas, 9,5/12 pt), `glossario-do-capitulo`
  (no-op herdado);
- tipografia serial e paleta grega — herança integral declarada no `livro-spec.md`.

**O que precisa mudar para 48 pp / 8 capítulos / 2 full-bleeds no geral:**

1. **Estrutura hardcoded (§4 e §6 do template).** Pré-texto, sumário e aparato estão escritos
   linha a linha para as 56 pp do livro 1. Precisam virar dados: o sumário tem 10 itens fixos com
   páginas fixas (7, 11, 15… 43), o colofão diz "Miolo: 56 páginas", a ficha diz "Livro 1
   (piloto)" e "ver pp. 51–53", a dedicatória cita "Homero, Hesíodo, os Hinos Homéricos, Ovídio".
   **Todos falsos para o livro 2.** Mapa novo: pré-texto 1–6 · caps. 7–34 (7 × 4 pp) · geral
   35–40 · glossário 41–42 · fontes 43 · perguntas 44–45 · colofão 46 · guarda 47–48.
2. **Rotulagem de spin-off** (§1 deste documento) entra na **folha de rosto (p. 3)** e na ficha
   (p. 4): `Grécia · I — Histórias de dentro`, não "Livro 2". Hoje a p. 3 imprime só "Grécia" em
   34 pt — vira o título do livro, com a tarja de recorte acima.
3. **`fullbleed` chamado 2× dentro do mesmo capítulo geral.** No livro 1 o cap. 10 já tinha dois
   (`10a-do-caos-abertura`, `10b-do-caos-os-libertados`), então a função aguenta — mas o
   `gerar_typst.py` precisa aceitar **lista** de ilustrações por capítulo, não uma só.
4. **Espaço reservado obrigatório no cap. 6** para a **pele do Leão vestida** (decisão de arte
   fixada no state) — reserva no `miolo.typ`, não improviso na hora.
5. **`ILUS-DIR`** aponta para `../ilustracoes/` (relativo — ok) e o placeholder imprime o texto
   fixo `producao/grega/ilustracoes/`: **parametrizar o slug**.
6. **Sumário com 8 + 4 itens** e as páginas do mapa novo; **glossário ≤6 verbetes** (R5.2).
7. **`imagens-disponiveis.typ`** é gerado por `scan-imagens.sh` — roda igual, só com os 22 ids
   novos. Nada a mudar no script.

**Recomendação:** copiar `miolo-template.typ`, `gerar_typst.py`, `scan-imagens.sh`,
`verificar-dpi.py` e `extrair.py` para `producao/grega-equidna/diagramacao/`, promover §0–§3 a
bloco intocado e **parametrizar §4/§6** (slug, título, subtítulo, rotulagem, mapa de páginas,
lista do sumário). Ninguém precisa esperar as imagens para isso.

---

## 5. Pendências que continuam com o dono

1. **🔴 Desbloquear os downloads do Chrome** — `chrome://settings/content/automaticDownloads`, e
   olhar a barra de downloads no rodapé da janela (prompt nativo "Manter/Descartar"). É o único
   bloqueio das 22 ilustrações; nenhum agente resolve.
2. **Nomear a criança de 4 anos** para o teste de aceitação da capa etiquetada (quem, idade, quem
   aplica, onde registra).
3. **Perfil ICC da gráfica** — aberto desde o livro 1. Sem gráfica escolhida, seguimos com o
   `default_cmyk.icc` como placeholder documentado.
4. **ISBN/CIP** e redação final da ficha técnica.
5. **Confirmar (ou vetar) o volume *Heróis da Grécia*** — é o que decide se a dívida D-1 é uma
   promessa ou um calote.

## 6. Pendências de fase que este run NÃO fecha

- Seção **"Perguntas que as crianças fazem"** (aparato da Fase 4) — ainda não escrita.
- **Página de Fontes**: variantes não adotadas (Diodoro 4.48.3, Apolônio 4.1396, Argos 2.1.2), a
  nota de que o nome "Ladon" vem de fonte não adotada, e a declaração de que a etiologia do cão e
  o luto de Equidna são criação nossa.
- **Recontagem dos 8 capítulos por método único** (orquestrador e revisor divergiram em 18
  palavras no cap. 4).
