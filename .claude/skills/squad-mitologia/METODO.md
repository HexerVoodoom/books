# Método — SQUAD-Mitologia

Ciclo faseado **por livro**, com gate humano entre fases e loop adversarial antes de cada
gate. Derivado do método da SQUAD-Alpha; o que muda aqui é o domínio (livro ilustrado), não
os princípios.

## As 6 fases

| # | Fase | Lente (a pergunta que a fase responde) | Líder | Elenco |
|---|---|---|---|---|
| 0 | **Fundação** | Que livro é este — quais mitos entram, com que fontes, com que cara? | orquestrador | pesquisador · historiador-arte · sensibilidade-cultural · editor |
| 1 | **Pesquisa** | O que cada mito realmente conta — e qual é a sua mensagem? | pesquisador | fidelidade · sensibilidade-cultural |
| 2 | **Escrita** | A história encanta a criança, respeita o mito e segura o adulto? | escritor | editor · adequacao-etaria · critico-tom · fidelidade · revisor · sensibilidade-cultural* |
| 3 | **Ilustração** | Cada cena mostra o coração do capítulo, no estilo do livro, com personagens fiéis? | diretor-arte | ilustrador · historiador-arte · adequacao-etaria · sensibilidade-cultural* |
| 4 | **Diagramação** | O livro é um objeto — as páginas funcionam juntas, impressas? | diagramador | editor-chefe · diretor-arte · sensibilidade-cultural* |
| 5 | **Publicação** | O PDF passa na gráfica e o livro está completo de capa a fontes? | editor-chefe | diagramador · revisor |

`*` = quando a mitologia for de cultura viva (CONTRACT §2). O `mito-cetico` não aparece na
tabela porque atua em **todos os gates**, sempre — como o loop adversarial abaixo exige.
A **quarta capa** é escrita pelo escritor e atacada pelo crítico-tom ainda na **Fase 2**;
o editor-chefe apenas a aprova na montagem (Fases 4–5).

### Exit bars

- **Fase 0** → `livro-spec.md` aprovado: lista de capítulos (específicos + o geral), fontes
  levantadas por mito, parecer de sensibilidade cultural, direção de arte preliminar
  (estilo da cultura + Mucha/aquarela), ordem de produção.
- **Fase 1** → um `dossie-<mito>.md` por capítulo, com: versão canônica e variantes
  relevantes (com fonte), personagens e descrições canônicas, a **mensagem central**
  extraída do mito, marcações do que exige adaptação etária. Validado pelo `mito-fidelidade`.
- **Fase 2** → todos os capítulos escritos, cada um sobrevivente ao loop adversarial
  quádruplo (fidelidade + adequação etária + crítico de tom + cético) e revisado. Capítulo
  geral mais longo, integrando os personagens dos específicos.
- **Fase 3** → em **dois sub-gates**, porque a geração de imagem normalmente acontece fora
  da sessão (Midjourney/Flux não são tools do ambiente):
  - **3a — Direção pronta:** guia de estilo fechado (`guia-de-estilo.md`), descrições
    canônicas congeladas e, por character sheet e por cena, o **pacote de geração**
    (`templates/prompt-ilustracao.md`: prompt final + parâmetros + instruções passo a
    passo). Checkpoint humano: o humano executa a geração e traz as imagens.
    State: `fase_atual: "ilustracao-aguardando-imagens"`.
  - **3b — Curadoria:** cada imagem trazida passa pelo veredito em checklist do diretor de
    arte (máx. 3 rodadas de redirecionamento por imagem; cada rodada volta ao humano com
    direção concreta) + checagem técnica do ilustrador. Fecha com 1 ilustração aprovada por
    capítulo + capa em `producao/<livro>/ilustracoes/`, nos pixels da spec (upscale
    declarado permitido — ver `estilo-ilustracao.md` §Resolução).
  Se houver ferramenta de geração invocável na sessão, 3a e 3b colapsam num gate só.
  **Confirmado invocável (livro Grécia, 2026-08-31/09-01):** o MCP `claude-in-chrome`
  dirige o Chrome real do dono, já logado no Gemini web — gera, faz a checagem técnica e
  baixa as 21 imagens do livro sem round-trip humano. Ver `estilo-ilustracao.md` §Execução.
- **Fase 4** → PDF compilado via Typst com miolo completo (capa, sumário, capítulos com
  full-bleed, glossário, fontes), **verificado por execução**: compilação limpa + checagem
  de sangria/resolução. Log em `producao/<livro>/diagramacao/build.log`.
- **Fase 4 (pré-condição)** → toolchain provisionada e provada por execução
  (`pipeline-impressao.md` §Setup): `typst`, `gs` instalados no run, mais `pdfinfo`/
  `pdffonts` (Linux) ou `pypdf` como substituto equivalente (Windows sem poppler-utils —
  ver §Setup, achado 2026-09-01). Sem toolchain, a fase abre **instalando**, não
  diagramando; sem admin, ver a via de instalação sem privilégios elevados na mesma seção.
- **Fase 5** → PDF/X CMYK gerado (Ghostscript, com o perfil ICC **fornecido pela gráfica ou
  decidido no checkpoint** — pendência aberta desde a Fase 0), checklist de gráfica 100%
  verde ou com itens explicitamente marcados `delegado à gráfica/humano` (nunca verde
  maquiado), ficha técnica completa (incl. disclosure de IA decidido), release notes.

## Loop adversarial (nunca pule)

`self-grade → ataque → revisa → re-grade`, máximo 2 passes — como na Alpha:

1. **Self-grade** — o líder da fase avalia o artefato contra a barra (🟢 com evidência /
   🟡 dizendo o que falta / 🔴). 🟢 sem evidência é 🟡.
2. **Ataque em duas ondas** — primeiro os especialistas, **em paralelo**:
   - texto de capítulo → `mito-fidelidade` + `mito-adequacao-etaria` + `mito-critico-tom`
   - qualquer conteúdo de cultura viva/sagrada → `mito-sensibilidade-cultural`
   - ilustração ou prompt → `mito-diretor-arte` (se não for o autor) + `mito-historiador-arte`
     + `mito-adequacao-etaria` (susto visual)
   Depois, **por último e com os pareceres dos especialistas no briefing**, o `mito-cetico`
   — sempre — para atacar o território que sobrou sem repetir lente.
   Objeções classificadas FATAL / FIXÁVEL / RUÍDO, cada uma com alegação + cenário concreto
   de falha + o que a refutaria.
3. **Revisa** — toda dimensão 🟡/🔴 e toda objeção FIXÁVEL. FATAL sobrevivente ao 2º passe
   vai para o checkpoint como risco nomeado, em primeiro lugar.
4. **Re-grade** e registre em `producao/<livro>/<fase>/gate.md` (`templates/gate.md`).
   Gate sem artefato escrito é opinião no chat.

**Loop evaluator-optimizer antes do ataque** onde a barra é objetiva: checklist de
diagramação, resolução/sangria de imagem, consistência de nomes próprios, limites de
extensão por capítulo — máximo 3 iterações.

## Checkpoint humano (a cada fase)

Apresente: artefatos + grade + objeções sobreviventes + o maior risco + pendências, e
pergunte **continuar / ajustar / parar** via `AskUserQuestion` (voltar é válido a pedido).
Nunca auto-avance. Na Fase 2 e na Fase 3, apresente **amostras concretas** (um capítulo
inteiro; as ilustrações lado a lado com a descrição da cena) — não resumos.

## Eixos transversais (valem em toda fase)

- **Fidelidade primeiro:** afirmação sobre o mito sem fonte no dossiê não entra no livro.
- **Dupla audiência:** cada decisão de texto passa pelas duas lentes (criança 4–7 / adulto).
- **Mensagem sem moralismo:** a lição emerge da história; nunca em parágrafo-sermão final.
- **Consistência serial:** nomes, grafias, estilo visual e estrutura são padronizados entre
  livros da coleção (`references/serie-padroes.md`).
- **Respeito cultural:** mitologias de culturas vivas passam pelo `mito-sensibilidade-cultural`
  em toda fase que gere conteúdo novo (por isso o `*` na tabela de fases).
- **Direitos de imagem:** referência visual só de acervo de domínio público/CC0 documentado.
- **Direitos de texto e disclosure de IA (dono: mito-editor-chefe):** duas decisões
  obrigatórias no gate da Fase 0, registradas no `livro-spec.md` — (a) regra de fontes
  protegidas: mitos se **recontam** a partir do enredo; nunca derivar texto, estrutura ou
  seleção de obra em copyright (ex.: Câmara Cascudo é bússola de repertório, não fonte de
  redação) nem de tradução protegida; (b) como o livro declara o uso de IA nas ilustrações
  (ficha técnica) — decisão do humano, apresentada no checkpoint, nunca pulada em silêncio.

## Escalonamento de esforço

| Alvo | Despacho |
|---|---|
| Ajuste num capítulo existente | escritor + os 2 verificadores pertinentes |
| Capítulo novo num livro existente | fases 1–3 só para o capítulo, elenco central |
| Livro novo | ciclo completo, tabela inteira |
