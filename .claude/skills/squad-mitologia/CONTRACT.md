# Contrato — SQUAD-Mitologia

Fonte única da verdade de como os agentes da SQUAD-Mitologia, o orquestrador e o método se
encaixam. **Squad instanciada a partir da SQUAD-Alpha** (cópia com contexto embutido, não
herança viva) para um contexto fixo: a **coleção de livros infantis ilustrados de mitologia**
deste repositório.

---

## 0. Contexto embutido (vale para todos os agentes)

- **Produto:** série de livros infantis ilustrados, um livro por mitologia (grega, nórdica,
  egípcia, brasileira, mesopotâmica, hindu, e outras que forem levantadas).
- **Público primário:** crianças de 4 a 7 anos (leitura mediada por adulto ou leitura inicial).
  **Público secundário deliberado:** o adulto que lê junto — o texto precisa agradar e
  informar os dois. Educativo e cultural, nunca infantilizado ao ponto de afastar o adulto.
- **Idioma:** português brasileiro.
- **Estrutura de cada livro:** capítulos específicos (um por deus/figura/lenda, mais breves)
  + um capítulo geral, mais longo e complexo (a grande narrativa da mitologia: criação do
  mundo, Ragnarok etc., conforme a cultura) + capa, contracapa, sumário, glossário e
  fontes/bibliografia adaptada.
- **Fidelidade:** contar o mais próximo possível do mito original, adaptando apenas o que a
  faixa etária exige. Cada capítulo carrega uma **mensagem/aprendizado** extraído do próprio
  mito, que guia o desenrolar da história sem virar moral panfletária.
- **Ilustração:** 1 ilustração de página inteira por capítulo, retratando a cena principal,
  com personagens fiéis à descrição canônica. Estilo base: **art nouveau à la Alphonse Mucha
  + acabamento aquarelado**, fundido com o **estilo artístico da cultura retratada**
  (cerâmica grega, relevo egípcio, entrelaçado nórdico…). Execução por IA generativa, com
  consistência de personagem garantida por guia de estilo versionado.
- **Saída final:** PDF pronto para gráfica (PDF/X, CMYK, 300 DPI, sangria 3 mm) via
  **Typst + Ghostscript** (`references/pipeline-impressao.md`).
- **Workdir dos runs:** `producao/<slug-do-livro>/` neste repositório.

## 1. Arquivos de agente

- **Local:** `.claude/agents/mito-<id>.md` — prefixo `mito-` obrigatório, kebab-case, único.
- **Frontmatter DEVE ter:** `name`, `description` (quando despachar, incluindo os **NÃO faz**),
  `model` explícito (`opus` para autoria criativa, crítica adversarial, gates, orquestração
  **e julgamento interpretativo que alimenta fases inteiras** — por isso `mito-pesquisador`
  é opus: escolher variante canônica e extrair mensagem central não é coleta; `sonnet` para
  coleta, execução mecânica e registro).
- **Tiering de `tools` (decisão deliberada da instância):** diferente da Alpha, nenhum agente
  restringe `tools` — squad de conteúdo num repo de conteúdo, todos precisam de
  Read/Write/WebSearch e o risco de superfície ampla é baixo aqui. Se a squad passar a tocar
  código/infra, restaurar o tiering da Alpha.
- **Corpo DEVE conter os H2, nesta ordem:** `## Mandato` · `## Entradas` ·
  `## Framework Operacional` · `## Barra de Qualidade` · `## Anti-Padrões` · `## Handoffs` ·
  `## Voz`.

## 2. Roster canônico (15 agentes)

### 🎛️ Orquestração (1)
| id | dono de | atua em |
|---|---|---|
| `mito-orquestrador` | Conduz o ciclo por livro, despacha, gateia | todas as fases |

### 📚 Pesquisa & Verdade (4)
| id | dono de |
|---|---|
| `mito-pesquisador` | Dossiê de cada mito a partir de fontes primárias/confiáveis, variantes e mensagem central |
| `mito-historiador-arte` | Estilo artístico da cultura, referências visuais (acervos CC0), fusão com o estilo base |
| `mito-fidelidade` | Verificar se a história final é compatível com o mito original documentado |
| `mito-sensibilidade-cultural` | Culturas vivas e sagradas (indígena brasileira, hindu…): respeito, atribuição, o que não adaptar |

### ✍️ Texto (4)
| id | dono de |
|---|---|
| `mito-escritor` | Escrever os capítulos — narrativa, ritmo de leitura em voz alta, mensagem entrelaçada |
| `mito-editor` | Edição de desenvolvimento: estrutura do livro, arco entre capítulos, cortes e reescritas |
| `mito-revisor` | Copidesque e revisão final PT-BR (gramática, consistência de nomes, padronização) |
| `mito-adequacao-etaria` | O texto serve a 4–7 anos? Vocabulário, medo, violência, extensão, mediação do adulto |

### 🎨 Ilustração (2)
| id | dono de |
|---|---|
| `mito-diretor-arte` | Conceito de cada cena, guia de estilo do livro, validação do resultado ilustrado |
| `mito-ilustrador` | Execução: prompts de IA, consistência de personagem, iteração até aprovação |

### 🏭 Produção editorial (2)
| id | dono de |
|---|---|
| `mito-diagramador` | Diagramação em Typst, páginas full-bleed, sumário, glossário, PDF/X final |
| `mito-editor-chefe` | Publicação: capa/contracapa, ficha técnica, checklist de gráfica, release do livro |

### ⚔️ Adversariais (2)
| id | dono de |
|---|---|
| `mito-cetico` | Ataca todo artefato antes de todo gate (herdeiro do alpha-skeptic) |
| `mito-critico-tom` | Anti-infantilização: o adulto lê com prazer? A mensagem sobrevive sem moralismo? |

## 3. Regras de fronteira

- `mito-pesquisador` levanta o mito; `mito-fidelidade` **nunca** usa o dossiê do pesquisador
  como única fonte — verifica contra as fontes originais de forma independente.
- `mito-adequacao-etaria` protege a criança; `mito-critico-tom` protege o adulto. As duas
  lentes são opostas de propósito: o texto só passa quando sobrevive às duas.
- `mito-diretor-arte` concebe e valida; `mito-ilustrador` executa. O ilustrador nunca aprova
  a própria imagem.
- Ninguém ataca o artefato que escreveu.

## 4. State do run

`producao/state/<slug-do-livro>.json`:

```json
{
  "livro": "slug",
  "mitologia": "grega",
  "fase_atual": "escrita",
  "capitulos": [{"slug": "zeus", "status": "gate-aprovado"}],
  "pendencias": [],
  "gates": {"fundacao": "aprovado"},
  "checkpoint": "aguardando humano | null"
}
```

- Enum de status de capítulo: `planejado` → `pesquisado` → `escrito` → `gate-aprovado` →
  `ilustrado` → `diagramado`. (`planejado` = entrou no sumário da Fase 0, dossiê ainda não
  aberto — acrescentado ao enum na revisão do gate da Fase 0 do livro grega, 2026-08-30.) Enum de `fase_atual`: `fundacao | pesquisa | escrita | ilustracao |
  ilustracao-aguardando-imagens | diagramacao | publicacao | concluido`.
- **Voltar:** quando o humano pedir para voltar, artefatos posteriores ao ponto vão para
  `<fase>/_superseded/` e entram no state como `invalidados` (protocolo herdado da Alpha).

## 5. Herança da Alpha

Loop adversarial, gate humano por fase, template de gate e barra de qualidade seguem o
método da SQUAD-Alpha, **copiados** para `METODO.md` e `templates/gate.md` desta skill.
Mudança na Alpha não propaga automaticamente — instância é cópia com contexto, não herança.
