# Relatório dos dois pilotos de executabilidade — Fase 3a, `grega-equidna`

> Executado por `mito-ilustrador` em 2026-09-01, via `claude-in-chrome` no Chrome do dono,
> `gemini.google.com/app`, conta autenticada, modo **Pro**. Estes **não são assets do livro** —
> são experimentos exigidos pelo `mito-cetico` para decidir se o guia de estilo é gerável.

## Método

- Prompt montado pelo esqueleto herdado (livro 1 §3.2, `[BASE]` verbatim) + `[CHARACTERS]`
  verbatim do guia deste livro + `[SCENE]` + `[MUST NOT APPEAR]` + a linha de proporção
  obrigatória no fim (`Square 1:1 full-bleed composition. / No text, no watermark, no lettering.`).
- Prompts congelados em `prompt-piloto-1-cerbero.txt` e `prompt-piloto-2-equidna.txt`.
- **Desvio de forma declarado:** o prompt foi digitado na caixa do Gemini como parágrafo único
  (quebras de linha convertidas em espaço), porque `Enter` na UI envia a mensagem. Nenhuma
  palavra foi alterada, resumida ou reordenada. Travessões `—` foram digitados como `-` por
  limitação do canal de digitação da extensão.
- Uma conversa nova por imagem (nunca "Refazer" — provado no livro 1 que não regenera).
- Download imediato após a renderização, sem sair da conversa.

## Resultado técnico comum às três imagens

| Item | Resultado |
|---|---|
| Proporção | **2048 × 2048 px exato** nas 3 imagens ✔ — a linha de fechamento funciona, achado do livro 1 confirmado neste livro |
| Formato real | JPEG (arquivo `.jfif`), como no livro 1 — recodificar para PNG antes da Fase 4 |
| Recusas do Gemini | **nenhuma** — nem no bloco de Equidna (o mais delicado do livro), nem no de Cérbero |
| Download | **caiu de primeira nas 3**, com o padrão `scroll_to` + clique por `ref` + espera ~18 s |
| MD5 distintos | ✔ A e B da Equidna são arquivos genuinamente diferentes |

---

# PILOTO 1 — a fórmula das três camadas é gerável?

**Arquivo:** `piloto1-cerbero-3camadas.jpg` (2048×2048) · conversa `836be04e7efe4c9d`

## Veredito: **PARCIAL — não repetiu a falha do Cem-Mãos, mas ainda não passa no teste do guia**

### O que a fórmula CONSEGUIU (é novidade em relação ao livro 1)

1. **Camada 1 obedecida à risca:** exatamente **três** cabeças nítidas, faces plenamente
   legíveis e amáveis. O gerador **não** entregou 4+ nítidas. A instrução numérica com teto
   explícito ("NEVER four or more sharp heads: four can already be counted") foi respeitada —
   e isso é o oposto do que o Cem-Mãos fez.
2. **A fileira equidistante NÃO aconteceu.** O defeito nomeado no guia (§1.5b, "fileira de
   cabeças enfileiradas, separadas e equidistantes") não se repetiu: a massa é um leque
   simétrico agrupado em torno da cabeça central, com sobreposição real.
3. **Teste da premissa (D7/D8) passou com folga:** um leitor de 4 anos diz **"cachorro"**.
   Não é monstro, não é mascote. Sem coleira, sem focinheira, sem chamas, sem baba, sem olhos
   vermelhos, sem língua de fora, sem dentes à mostra, sem bote. Sentado, frontal, à altura da
   criança. **A inversão do livro 2 funciona no gerador.**
4. **Cauda-dragão** presente, verde-escama, enrolando-se pela base e virando ornamento ✔.
   **Serpentes no dorso**, não no pescoço ✔.

### O que a fórmula NÃO conseguiu

5. 🔴 **O teste mecânico do guia reprova a imagem.** Olhando 10 segundos, um adulto **chega a
   um número** — eu cheguei a ~7 (3 nítidas + 2 focinhos laterais + 2 pares de orelhas ao
   alto). A hesitação entre 5, 7 e 9 é real, mas o guia não pede hesitação: pede
   impossibilidade. **Reprovada pelo item 11 da barra de validação.**
6. **A camada 2 foi executada errado, e de um jeito específico:** as cabeças de trás se
   dissolvem por **silhueta achatada e sombra**, não pela **borda molhada da aquarela**. E
   violam duas proibições explícitas do prompt: várias **fecham contorno completo**, e várias
   estão **separadas da vizinha por um vão de fundo escuro** (o vão do portão aparece entre
   as orelhas). O Gemini leu "dissolvidas" como "menos detalhadas", não como "sangradas".
7. **A camada 3 simplesmente não foi tentada.** A moldura saiu meandro + palmeta padrão; não
   há palmeta-que-é-perfil-de-serpente, não há friso-que-é-dorso. A instrução de ornamento
   passou batido. Consequência: **a fórmula perdeu justamente a camada que existiria para
   absorver a multidão** — toda a multidão foi parar na anatomia, que é onde ela não pode ficar.
8. **Duas alavancas de composição falharam:** o alto do portão **não** é cortado pela borda
   superior (a alavanca 4, escala em vez de careta, não operou); e a orelha que baixa não é
   legível como orelha caindo.
9. 🔴 **Violação de `[MUST NOT APPEAR]`:** há **figuras humanas em silhueta escura** nos dois
   painéis laterais do fundo, com braços erguidos, apesar de "no human figure" estar no
   prompt. Reprovaria a peça sozinha.

### Leitura honesta para o cético (F-C2)

A fórmula **não é inerte** — ela moveu o resultado numa direção mensurável que a instrução do
Cem-Mãos não conseguiu mover em 4/4 tentativas. A parte que funcionou é a que dá **um teto
numérico explícito e pequeno** ("exatamente 2 ou 3, nunca 4+"). A parte que falhou é a que
pede **negação de contabilidade** ("que ninguém chegue a um número") — exatamente a mesma
classe de instrução que falhou no livro 1, e ela falhou de novo.

**Implicação para as 7 peças poli-cefálicas:** elas **não** são geráveis nas condições atuais
com aprovação de primeira. Duas correções concretas a propor ao `mito-diretor-arte` antes de
a Fase 3b começar (nenhuma decidida por mim):

- **(a) Trocar a formulação negativa por positiva e geométrica.** "Ninguém pode chegar a um
  número" é irrepresentável para o gerador. O que ele obedeceu foi contagem explícita. Uma
  redação candidata: *"three sharp heads in front; behind them a single continuous mass of
  fur with NO individual head shapes — no ears, no muzzles, no eyes in the back mass; the mass
  is one silhouette, not many"*. Isso pede **uma coisa**, não a ausência de número.
- **(b) Mandar a multidão para a moldura de forma imperativa e separada**, num bloco próprio
  do prompt, e não como terceiro item de uma lista de camadas — a camada 3 foi ignorada por
  estar sepultada no meio do bloco.

---

# PILOTO 2 — o mesmo personagem sai duas vezes igual?

**Arquivos:** `piloto2-equidna-A.jpg` (conversa `bbcedf5d4795f914`) e `piloto2-equidna-B.jpg`
(conversa `c85587f522404090`), ambos 2048×2048, MD5 distintos.
**Comparação lado a lado:** `piloto2-comparacao-A-vs-B.jpg`.

## Veredito: **D9 NÃO é cumprível como está escrita. Delta grande.**

### Boa notícia primeiro: a régua de não-sensualização (D6) passou nas DUAS

Varredura item a item da lista negativa §1.5(c) em A e em B: sem decote, sem cintura marcada,
sem quadril evidenciado, sem boca entreaberta, sem olhar de canto, sem pose sinuosa de sereia,
sem nudez parcial, sem drapeado colado. Sem presas, sem língua bífida, sem olhos sem pupila,
sem boca em bote. Sem asas, coroa, chifres, múltiplas cabeças. Sem ombros caídos, sem mão para
a saída, sem olhar para trás, sem tristeza. Cabelo recolhido e preso nas duas. Torso coberto
por veste caída sem cintura nas duas. Junção corpo-serpente coberta pela veste nas duas.
**A ficha mais delicada do livro é gerável, e o Gemini não recusou.** Ressalva: nas duas a
veste deixa **ombros e braços nus** — não é item da lista negativa, mas é chamada do diretor.

### O delta medido, ponto a ponto

| Dimensão | A | B | Delta |
|---|---|---|---|
| **Rosto / identidade** | rosto mais redondo, maxilar suave, olhos afastados, cabelo castanho-acaju | rosto mais longo e estreito, maxilar marcado, nariz mais longo, cabelo castanho-escuro | **São duas mulheres diferentes.** Não é "a mesma sem uma ruga a mais"; é outra pessoa |
| **Idade aparente** | ~25 anos | ~33 anos | **~8 anos.** D9 reprova *qualquer* diferença de idade |
| **Luz** | feixe diagonal de manhã visível cortando o chão (o "único movimento" do brief) ✔ | **sem feixe** — só um brilho difuso no chão ✘ | O elemento nomeado como o único movimento da página **some** de B |
| **Paleta da caverna** | interior **azul-petróleo / ardósia**, frio | interior **ocre / marrom quente** | Ruptura maior da comparação: **não se lê como a mesma casa** |
| **Enquadramento** | plano médio, figura ~45% da altura, novelo de anéis à frente | quase plano inteiro, figura ~55%, cauda varrendo para a direita | Tamanho de plano diferente |
| **Corpo-serpente** | anéis **inteiramente dentro do quadro** — mensurável ✘ (fura a própria ficha canônica) | cauda **sai do quadro** pela direita ✔ | A descrição verbatim foi obedecida em B e desobedecida em A |
| **Moldura** | banda única de meandro, esparsa | banda tripla com campo azul e palmetas densas | Densidade de ornamento diferente |
| **O que se manteve** | postura frontal de guarda, braços baixos, veste larga sem cintura, cabelo preso art nouveau, pele malhada em manchas grandes, arco da caverna, língua ornamental ática | | A **família visual** é estável; a **identidade** não |

### Resposta direta a F-C1

**Prompt idêntico + conversa nova ≠ mesmo personagem.** O Gemini reproduz o *gênero* da imagem
com fidelidade alta e o *rosto* com fidelidade nenhuma. Como o gerador não expõe seed e
"Refazer" não regenera, **não existe caminho por prompt** para a rima dura da D9 ("mesmo
enquadramento, mesma caverna, o mesmo rosto sem uma ruga a mais").

**Três saídas, todas do `mito-diretor-arte` — não decididas aqui:**

1. **Mecanismo (recomendado, não testado neste piloto):** aprovar `sheet-equidna` primeiro e
   **anexar a folha como imagem de referência** na conversa de cada uma das três aparições
   (p. 10, 8A, p. 40) — é o que o próprio guia §3 já prevê como obrigação de consistência, e
   é o único recurso da ferramenta que resta. **Custa um teste próprio antes da Fase 3b:
   nenhum piloto desta sessão provou que a referência anexada segura o rosto.** O §8.7 do guia
   já registra esse risco; este piloto o confirma empiricamente.
2. **Mecanismo mais forte:** gerar a p. 40 **editando a p. 10 aprovada** na mesma conversa
   ("mesma imagem, tire o mapa de portas da faixa alta"), em vez de gerar do zero. É a única
   via que garante literalmente "a mesma imagem com uma diferença só", que é o que §5.2 pede.
3. **Rebaixamento da D9** para "mesmo enquadramento, mesma caverna, mesma paleta e mesma idade
   aparente" — abandonando "sem uma ruga a mais". Isto **enfraquece o contrato feito com a
   criança no cap. 3** ("não morre nem envelhece") e por isso é decisão de gate, não minha.

**Nota:** mesmo com a rota 1 ou 2, o guia §5.2 já manda "produzir as duas na mesma sessão, do
mesmo sheet, uma logo após a outra". Este piloto mostra que essa cláusula é **necessária e
insuficiente**: mesma sessão não basta, precisa de referência anexada ou de edição.

---

## Bloqueios de pipeline que exigem o dono

**Nenhum nesta sessão.** Os três downloads caíram de primeira; o Chrome não bloqueou; o Gemini
não recusou nenhum prompt. Registros para a Fase 3b:

- A extensão estourou **timeout de CDP** (`Page.captureScreenshot`) três vezes, e a caixa de
  prompt exigiu **até 3 tentativas** para aceitar o texto — o mesmo desgaste de aba descrito no
  log do livro 1. Não travou nada, mas encarece cada imagem.
- O guia deste livro pede `[BASE]` **já com a linha de proporção** (§0). Confirmado que ela
  funciona: 2048×2048 exato nas três. **Manter.**
- Formato entregue continua **JPEG com extensão de imagem**; recodificação para PNG segue
  sendo tarefa da Fase 4.
