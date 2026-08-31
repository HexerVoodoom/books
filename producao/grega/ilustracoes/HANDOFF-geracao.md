# Handoff — geração das ilustrações (sessão local com navegador)

**Para quem:** uma sessão do Claude Code rodando **na máquina do Mateus**, com controle de
navegador (Chrome DevTools MCP, Playwright MCP ou equivalente) e com o **Chrome já logado na
conta Google**.

**Por que existe:** a sessão remota alcança o Gemini (rede liberada, navegador funcionando),
mas **deslogado o Gemini recusa gerar imagem** — "Você está conectado? …não consigo criar
nenhuma para você agora". A geração é a única parte da Fase 3 que precisa sair de lá.

**Divisão do trabalho — leia antes de começar:**

| Etapa | Onde acontece |
|---|---|
| 3a · direção, guia de estilo, prompts | ✅ já feito na sessão remota |
| **3b · geração dos PNGs** | **aqui, nesta sessão local** |
| 3c · curadoria, veredito, correção de rumo | volta para a sessão remota (`mito-diretor-arte`) |

Você **executa e traz**. Você **não aprova**, não reescreve prompt e não escolhe "a melhor" —
traga todas as variações; quem cura é o diretor de arte, com checklist, do outro lado.

---

## PROMPT PARA COLAR NA SESSÃO LOCAL

Copie tudo abaixo da linha:

---

Você é o executor de geração de imagens da SQUAD-Mitologia (repositório `HexerVoodoom/books`).
Sua função é o papel `mito-ilustrador`: **executa prompts, não decide arte**.

**1. Preparar**

```
git clone https://github.com/HexerVoodoom/books   # ou git pull, se já existir
cd books
git checkout claude/mythology-children-books-squad-b3aeqh
git pull
```

Leia, nesta ordem:
- `producao/grega/ilustracoes/prompts.md` — os prompts finais e o checklist de aceitação de cada imagem
- `producao/grega/guia-de-estilo.md` — a fórmula visual do livro e as descrições canônicas
- `.claude/agents/mito-ilustrador.md` — os limites do seu papel

**2. Gerar**

Abra `https://gemini.google.com/app` no navegador **já autenticado**. Para cada bloco de
`prompts.md`, na ordem em que aparecem (os **character sheets vêm primeiro** — as cenas
dependem deles):

1. Abra uma **conversa nova** para cada imagem (não reaproveite o contexto: contamina o estilo).
2. Cole o prompt **exatamente como está**. Não traduza, não resuma, não "melhore", não
   acrescente nada. Se o prompt for recusado, registre a recusa literal e siga para o próximo.
3. Peça **4 variações** de cada imagem (repetindo o mesmo prompt em conversas novas, ou
   pedindo variações se a interface oferecer).
4. Baixe todas em `producao/grega/ilustracoes/` com o nome do bloco + sufixo da variação:
   `07-perseu-e-a-medusa-v1.png`, `-v2`, `-v3`, `-v4`. Nome errado quebra a curadoria.

**3. Verificar (mecânico, antes de devolver)**

Para cada arquivo baixado, registre em `producao/grega/ilustracoes/log-geracao.md`:
- nome do arquivo · dimensões em pixels · tamanho em bytes
- se tem texto/letras/marca-d'água visível na imagem (motivo de descarte automático — **descarte
  e regenere**, o livro não admite lettering nas ilustrações)
- a recusa literal, quando o Gemini recusar

Dimensões esperadas: o quadrado maior que o Gemini entregar. **Não faça upscale** — a regra de
upscale (≤2×, declarada) é decisão do diretor de arte, não sua.

**4. Devolver**

```
git add producao/grega/ilustracoes/
git commit -m "Fase 3b: geração das ilustrações do livro grego (sessão local)"
git push
```

**Limites (não ultrapasse):**
- Não edite `prompts.md`, `guia-de-estilo.md`, os capítulos ou qualquer arquivo fora de
  `producao/grega/ilustracoes/`.
- Não aprove nem reprove imagem; não apague variação "feia". A curadoria é do
  `mito-diretor-arte`, na sessão remota, com checklist escrito.
- Não invente prompt para imagem que faltou — relate a falta.
- Se uma imagem sair sistematicamente errada (3 tentativas), pare, registre no log o que
  aconteceu e siga em frente. Redirecionar é trabalho do diretor de arte.

Ao terminar, reporte: quantas imagens geradas, quantas recusadas, e o que ficou faltando.

---

## Alternativa determinística (sem agente)

Se preferir rodar sem sessão de agente, o mesmo trabalho cabe num script Playwright que usa o
**seu perfil do Chrome** (já logado) via `launch_persistent_context`. As flags de proxy do
ambiente remoto **não se aplicam** na sua máquina — rode limpo. Peça o script na sessão remota
que ele é gerado a partir do `prompts.md`.
