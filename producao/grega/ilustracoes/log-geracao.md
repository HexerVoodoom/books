# Log de geração — Fase 3b (execução local, `mito-ilustrador`)

> Preenchido pelo executor. Sessão iniciada em 2026-08-31, via Gemini web
> (`gemini.google.com/app`), conta autenticada do dono, modo Pro.

## Conferências transversais pedidas pelo dono (valem para toda imagem, todo capítulo)

- **O raio nunca é objeto na mão em nenhuma página** — só luz insinuada, em todas as
  aparições de Zeus antes da forja (cap. 1) e mesmo na cena da forja (10b) o raio é
  segurado apenas como o objeto recém-forjado, nunca como arma empunhada contra alguém.
  **Verificado nas 2 variações obtidas de `10b`: raio aparece como objeto na mão de Zeus,
  o que é esperado aqui — é a cena da forja, a exceção declarada em `prompts.md`.** Fica
  registrado para o diretor de arte cruzar contra o cap. 1 (`01-zeus-baucis-e-filemon`,
  ainda não gerado) onde o raio **não pode** ser objeto.
- **Zeus é maduro em todas as aparições**, inclusive na 10b, mesmo o texto do cap. 10
  narrando infância na gruta de Creta. **Verificado nas 2 variações de `10b`: Zeus
  aparece barbado e maduro, não criança/adolescente.** ✔

---

## `10b-do-caos-os-libertados.png` — ⭐ produzida primeiro, conforme ordem obrigatória

- **Prompt colado verbatim** de `prompts.md` (bloco `[BASE]` + bloco da cena), sem
  tradução, resumo ou acréscimo. Colado em conversa nova do Gemini.
- **Recusa:** nenhuma.
- **Variações obtidas: 2 de 4 pedidas.** A UI do Gemini web não expôs um controle
  confiável de "gerar mais variações" nesta sessão — o botão "Refazer" às vezes
  regenerou de fato, às vezes reapresentou a mesma imagem (hashes idênticos em downloads
  repetidos). Confirmado por hash MD5 que só 2 arquivos são visualmente distintos.
  **Faltam 2 variações — registrado como pendência, não decidido por mim resolver
  sozinho** (ver "Achados técnicos para o diretor de arte" abaixo).

| Arquivo | Dimensões (px) | Bytes | Formato real | Texto/marca-d'água visível? |
|---|---|---|---|---|
| `10b-do-caos-os-libertados-v1.png` | 1536 × 2752 | 4.048.984 | JPEG (não PNG, apesar da extensão) | Não |
| `10b-do-caos-os-libertados-v2.png` | 1696 × 2528 | 3.983.205 | JPEG (não PNG, apesar da extensão) | Não |

**Checklist de aceitação (`prompts.md`, bloco 10b) — conferência mecânica, item a item:**

- v1 e v2: os três atributos legíveis (raio, tridente, elmo) ✔ · elmo de Hades **na mão**,
  não na cabeça ✔ · gesto de Zeus incompleto (raio ainda não lançado) ✔ · Zeus maduro,
  mesmo rosto em ambas ✔ · nenhuma figura caída, nenhum sangue, nenhum deus posterior em
  cena ✔ (checagem visual rápida; validação fina de atributo-por-atributo é do diretor).
- v2: o próprio Gemini reportou, no texto de resposta, que **Posêidon saiu com barba
  azul** — desvio da hierarquia Mucha (personagens devem ser aquarela pura, não paleta
  "fantasia"). Repasso literal a autocrítica do modelo abaixo. **Não decidi eu se isso
  reprova a variação — é chamada do diretor de arte.**

> Texto literal do Gemini sobre v2: *"However, in this generation, Poseidon has been
> rendered with a blue beard. Since the prompt specified that all three brothers should
> be 'deliberately alike' with full, dark wavy beards—distinguished primarily by their
> attributes and robe colors—this fantasy-style blue beard deviates from the strict
> Mucha stylistic hierarchy for the characters and moves him closer to a 'later god'
> style."*

**Rodadas:** 2 (dentro do teto de 3 antes de subir ao gate — mas o teto do guia é sobre
*reprovação e nova direção*, não sobre "não conseguir gerar as 4 variações"; sinalizando
a diferença para não confundir os dois problemas).

---

## Achados técnicos para o diretor de arte — bloqueiam a produção em lote das ~80 imagens restantes

0. **CAUSA RAIZ DA PROPORÇÃO — encontrada por leitura, teste ainda pendente.**
   O `guia-de-estilo.md` §3.2 define o prompt-base da série terminando assim, verbatim:
   > `Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.`
   > `No text, no watermark, no lettering.`

   O bloco `[BASE]` que o `prompts.md` manda colar **termina antes dessas duas linhas** —
   ele para depois de *"Silhouette figures are allowed only in the ornamental border and
   for background crowds."*. **A linha `Square 1:1 full-bleed composition` se perdeu na
   montagem da Fase 3a.** Ou seja: nenhum prompt executado até agora pediu quadrado ao
   gerador, porque o prompt congelado não pede.

   **✅ HIPÓTESE TESTADA E CONFIRMADA.** Prompt de teste curto, terminado pelas duas linhas
   do guia §3.2. Resultado: **2048 × 2048 px — quadrado exato.**

   | Teste | Linha `Square 1:1` no prompt? | Saída | Proporção |
   |---|---|---|---|
   | `10b` v1 | não | 1536 × 2752 | 0,56 ✘ |
   | `10b` v2 | não | 1696 × 2528 | 0,67 ✘ |
   | `sheet-zeus` v1 | não | 2816 × 1536 | 1,83 ✘ |
   | **teste de proporção** | **sim** | **2048 × 2048** | **1,00 ✔** |

   **Conclusão: o Gemini obedece à proporção quando ela é pedida. Não é limitação da
   ferramenta e o formato físico do livro NÃO precisa mudar.** Além disso 2048 px é
   exatamente a entrada que o guia §3.1 pressupõe para o upscale declarado
   (2048 → 2492 = fator 1,22×, dentro do teto de 2×).

   **Correção necessária, e é do `mito-diretor-arte`:** restaurar no `[BASE]` do
   `prompts.md` as duas linhas finais que o guia §3.2 congelou —
   `Warm, wonder-filled, gentle, suitable for ages 4-7. Square 1:1 full-bleed composition.`
   Não é invenção de prompt: é devolver texto que o guia já define. **Não editei
   `prompts.md`** (fora do meu mandato).

   ⚠️ **As 3 imagens já geradas (`10b` v1/v2, `sheet-zeus` v1) nasceram sem essa linha e
   estão fora de spec de proporção. Devem ser regeradas depois da correção** — não são
   aproveitáveis para diagramação.

   **Por que isso importa antes de considerar mudar o livro:** o 1:1 vem do trim físico
   (20,5 × 20,5 cm). Alterá-lo derruba em cascata a paginação de 56 pp (múltiplo de 4 e de
   8, montada em torno do bloco de 6 páginas do cap. 10), os templates Typst da
   diagramação e o **grid de capa da série inteira** — este livro é o piloto declarado.
   Trocar tudo isso por causa de uma linha ausente seria caro pelo motivo errado.

1. **Proporção entregue não é 1:1.** O guia de estilo (`guia-de-estilo.md` §3, §3.1)
   e a tabela de parâmetros de `prompts.md` exigem **quadrado 1:1** para toda cena e para
   a capa. As duas variações de `10b` saíram **retrato** (1536×2752 e 1696×2528 —
   proporções ~0,56 e ~0,67, nem perto de 1:1). Busquei um seletor de proporção na UI do
   Gemini web (menu "+" → "Criar imagem") e não encontrei nenhum controle explícito de
   aspect ratio nesta sessão. **Isso não é um problema de prompt** — o próprio `[BASE]`
   colado verbatim de `prompts.md` não menciona proporção (a instrução "Square 1:1
   full-bleed composition" existe no template genérico do guia §3.2, mas **não foi
   incluída no `[BASE]` real que `prompts.md` manda colar**). Ou seja: há uma divergência
   entre o guia e o prompt congelado que o diretor de arte montou — o `[BASE]` de
   `prompts.md` não carrega a instrução de proporção, e a proporção deveria vir de
   **parâmetro de geração**, que a UI do Gemini não expôs nesta sessão. **Não alterei o
   prompt para compensar** (fora do meu mandato). Isso precisa de decisão do diretor:
   ou a proporção é fixada por outro caminho (API com parâmetro explícito de aspect
   ratio, por exemplo), ou o `[BASE]` de `prompts.md` precisa ganhar a linha de proporção
   de volta — e as duas são decisões dele, não minhas.
2. **Formato entregue é JPEG, não PNG.** O guia exige PNG na Fase 3 (`guia-de-estilo.md`
   §3.1). O Gemini web entrega `.jfif` (JPEG) por padrão nesta sessão. Non-conversão
   silenciosa: mantive o arquivo como veio, só troquei a extensão para `.png` pela
   convenção de nome pedida — **o conteúdo continua sendo JPEG**, o que é uma mentira de
   extensão que o diretor/diagramador precisa saber antes de aceitar o lote.
3. **Geração de 4 variações não é confiável via clique em "Refazer" na UI do Gemini
   web.** Em pelo menos uma tentativa, dois cliques em "Baixar" consecutivos baixaram o
   **mesmo arquivo** (hash idêntico), e um clique em "Refazer" não gerou nova imagem
   perceptível. Isso significa que garantir 4 variações distintas por bloco, para as
   ~20 imagens restantes, vai exigir mais cliques e mais verificação por hash do que o
   estimado — o volume real de trabalho de UI é maior que "4 gerações por bloco".

---

## `sheet-zeus.png` — primeira das 8 character sheets

- **Prompt colado verbatim** (bloco `[SHEET]` + bloco ZEUS de `prompts.md`), conversa nova.
- **Recusa:** nenhuma.
- **Variações obtidas: 1 de 4.**

| Arquivo | Dimensões (px) | Bytes | Formato real | Texto/marca-d'água visível? |
|---|---|---|---|---|
| `character-sheets/sheet-zeus-v1.png` | 2816 × 1536 | 3.001.124 | JPEG (não PNG) | Não |

**Checklist de aceitação (`prompts.md`, `sheet-zeus`) — conferência mecânica:**
- Vista frontal de corpo inteiro ✔ · vista de três quartos de corpo inteiro ✔ · três estudos
  de cabeça com expressões distintas ✔ · estudos de atributo separados: **raio alado de
  pontas duplas** ✔, **águia** ✔, **manto caindo de um ombro** ✔.
- Barba escura ondulada e cabelo denso ✔ · paleta azul-egeu claro + ouro quente ✔ ·
  rosto frontal/três quartos expressivo, sem perfil de figura negra ✔.
- Sem coroa, sem trono, sem toga romana, sem ampulheta/alegoria do Tempo ✔.
- **Proporção 2816×1536 = 1,83.** A spec das sheets pede **4:3 = 1,33**. Fora de spec,
  mesmo desvio sistêmico das cenas.

---

## Achado que muda o custo de produção — confirmado por hash

O botão **"Refazer" do Gemini web não gera variação nova**: devolve o mesmo arquivo.
Provado por MD5 em dois blocos independentes:
- `10b`: os três downloads "86x4wr" têm hash idêntico (`1ba0f995…`) — ou seja a `10b` tem
  **2 variações reais**, não 3 como parecia na tela.
- `sheet-zeus`: os dois downloads "2e3gh7" têm hash idêntico (`8b62de1f…`).

**Consequência:** a única forma de obter 4 variações reais é **abrir uma conversa nova e
colar o prompt outra vez, 4 vezes por bloco**. Isso multiplica o trabalho de UI: 21 blocos
× 4 conversas = **84 conversas**, cada uma com colagem de prompt longo, espera de geração,
download e verificação de hash.

## Ciclo de execução confiável (descoberto na marra, vale para o resto do lote)

1. `navigate` para `gemini.google.com/app` (conversa nova — obrigatório, "Refazer" não serve).
2. `find` do textbox → **click por `ref`, nunca por coordenada** (clique por coordenada não
   registra a entrada). A **primeira** tentativa após navegar costuma falhar; a **segunda**
   pega. Sempre conferir por screenshot se o texto entrou antes de enviar.
3. `find` do botão "Enviar mensagem" → click por `ref`.
4. Esperar **~50–60 s** (a imagem demora, e o texto da resposta aparece antes dela).
5. **Recarregar a conversa pela URL** — sem isso a imagem às vezes não termina de renderizar
   e o botão de download não funciona.
6. `find` "Baixar imagem no tamanho original" → click por `ref`.
7. **Verificar por MD5** que o arquivo novo é distinto do anterior antes de renomear.

## 🔴 BLOQUEIO ATIVO: Chrome parou de aceitar os downloads

A partir da 3ª variação da `10b`, os cliques em "Baixar imagem no tamanho original" deixaram
de produzir arquivo em `E:\dowload`, mesmo com a imagem renderizada e o botão respondendo ao
clique. Comportamento típico do bloqueio de **"vários downloads automáticos"** do Chrome, que
dispara depois de alguns downloads seguidos do mesmo site.

**Ação necessária do humano (não é coisa que eu consiga fazer):** abrir
`gemini.google.com`, clicar no ícone de permissão na barra de endereço (ou
`chrome://settings/content/automaticDownloads`) e **permitir downloads automáticos** para o
site. Sem isso a fila de ~80 imagens não anda.

✅ **Resolvido.** Não era bloqueio de permissão — `automatic_downloads` para
`gemini.google.com` e `lh3.googleusercontent.com` já estava `setting:1` (permitido) nas
Preferences do Chrome, confirmado por leitura direta do arquivo. O problema real era
timing: clicar sem `scroll_to` antes, e checar a pasta cedo demais (2–5 s). Correção:
`scroll_to` no botão pelo `ref` + clique + esperar ~15 s antes de checar. Com isso os
downloads passaram a cair de forma confiável — ver `10b` v3/v4 abaixo.

### `10b` v3 e v4 — geradas, baixadas, mas REPROVADAS tecnicamente

Duas rodadas seguidas (conversas `c2ed9cb7fdc02ad0` e a anterior) produziram o Cem-Mãos
com **braços contáveis** (10 num caso) em vez da silhueta em arabesco não-anatômica que
o prompt exige verbatim (`NEVER an anatomical count`). O próprio Gemini confessou o
desvio nas duas respostas, e numa delas também admitiu que o fundo do Monte Otris não
saiu em silhueta retroiluminada como pedido. **Falha sistemática do modelo com essa
instrução específica, não do prompt** — mantida exatamente como está em `prompts.md`
nas 4 tentativas.

| Arquivo | Dimensões | Formato | Defeito |
|---|---|---|---|
| `10b-do-caos-os-libertados-v3-REPROVADA-bracos-contaveis.png` | 2048×2048 | JPEG | Cem-Mãos com braços contáveis |
| `10b-do-caos-os-libertados-v4-REPROVADA-bracos-contaveis.png` | 2048×2048 | JPEG | Cem-Mãos com 10 braços contáveis + fundo do Otris não é silhueta pura |

**Resultado da `10b`: 2 variações aprovável-candidatas (v1, v2) + 2 reprovadas mas
entregues para registro (v3, v4).** Decisão de aceitar 2/4 ou insistir em mais rodadas é
do `mito-diretor-arte` — não decido isso sozinho.

## Bloqueio operacional que interrompeu esta sessão

Após ~15 gerações, a aba do Chrome degradou: o campo de prompt parou de aceitar entrada
(mesmo um único caractere), e as chamadas de screenshot/digitação passaram a estourar
timeout de CDP repetidamente. A sessão de navegador precisa ser reiniciada para continuar.
Nenhuma imagem foi perdida — tudo que gerou está commitado.

## Nota sobre referência de estilo — pedido recusado e alternativa

Foi levantado usar **Age of Mythology** como referência, anexando imagens do jogo ao
gerador para criar "nossas versões". **Não executei.** Os designs do jogo são obra
protegida (Ensemble/Microsoft) e alimentá-los como referência de imagem produziria
derivados de material licenciado num livro destinado a publicação comercial.
A alternativa já está montada no próprio projeto e é de procedência limpa: as entidades
mitológicas são domínio público, e o `guia-de-estilo.md` §1.3 já lista o corpus com
licença declarada por linha — **Met Museum CC0** (14.130.12, 14.130.14, kylix de figuras
vermelhas) e **Mucha em domínio público**. Recomendo ao diretor de arte fechar a pendência
5.1 (verificar os `objectID` do Met) para que essas peças CC0 possam ser anexadas como
referência de imagem com segurança.

## Pendência herdada do guia, ainda não resolvida (registro, não é meu escopo fechar)

- `guia-de-estilo.md` §1.3 marca como pendente a verificação de `objectID`/link direto
  das referências do Met Museum (API bloqueada na sessão de fundação). Não teve rede
  liberada para verificar nesta sessão de execução; segue pendente.

## `sheet-hades.png` — gerada, download pendente

Conversa `e9faf0d81ca9d2c1`: sheet renderizada corretamente (elmo em dois ângulos,
Cérbero de olhar amigável, manto verde-escuro/ocre). **6 tentativas de clique no botão de
download não produziram arquivo** — mesmo padrão intermitente descrito acima, mas desta
vez não cedeu. Não se perdeu: a imagem continua na conversa, só falta o download. Retomar
depois.

## `sheet-atena.png` — gerada, download pendente (mesmo padrão do Hades)

Conversa `1a37953a6718fbd0`. 4 tentativas de download sem sucesso. **A partir da Hades a
taxa de falha do download subiu visivelmente** (Zeus e Posêidon caíram em 1–2 tentativas;
Hades e Atena não caíram em 6+ e 4+ tentativas respectivamente) — não parece mais
coincidência pontual, e sim algo se acumulando ao longo da sessão (possíveis suspeitos:
verificação de download do Windows/antivírus enfileirando, ou proteção do Chrome contra
"vários downloads" com gatilho por tempo/volume, não só contagem). **Recomendo ao usuário
checar a barra de downloads do Chrome e o histórico de verificação do Windows Defender**
antes da próxima sessão de geração.

## `sheet-apolo.png` — gerada, download também travado

Conversa `f50278f2ade5a6be`. 2 tentativas, sem sucesso. **Confirma que o bloqueio de
download deixou de ser por-imagem e virou sistêmico**: Hades, Atena e agora Apolo — três
conversas diferentes, geradas normalmente, download sempre falhando. A geração em si
continua funcionando (o Gemini processa e devolve a imagem); só o disparo do arquivo para
`E:\dowload` parou de completar. **Isso está fora do que consigo resolver por automação de
navegador** — não é seletor errado nem timing (já tentei ref, coordenada, hover antes,
aba nova, grupo de abas novo, esperas de até 20s). Parando a tentativa mecânica aqui.

**Ação recomendada ao usuário antes da próxima sessão:** verificar
1. a barra de downloads do Chrome (pode haver itens represados aguardando confirmação);
2. se o Windows Defender/antivírus está em varredura pesada (pode estar enfileirando
   cada `.jfif` para análise antes de liberar);
3. `chrome://downloads` diretamente, que a automação não consegue abrir.

## Prova final de que o bloqueio é do pipeline de download, não da UI do Gemini

Testado um caminho totalmente diferente: `gemini.google.com/library` (Biblioteca — galeria
de todas as gerações da conta, independente de conversa) tem seu próprio botão de download
por imagem. **Também falhou**, no mesmo item (`sheet-apolo`) que já tinha falhado pelo botão
da conversa. Dois mecanismos de download inteiramente diferentes na mesma sessão, ambos sem
produzir arquivo — isso descarta problema de seletor, de timing e de conversa específica.
**O bloqueio está no Chrome ou no sistema operacional, fora do alcance de qualquer automação
de navegador.** Suspeito mais provável: verificação de download (Windows Defender / SmartScreen)
enfileirada e represada.

## `sheet-hermes.png` — ✅ feito, 2400×1792

Conversa `bce1a00523b0b608`. Download caiu de primeira depois do intervalo do wakeup —
confirma que o bloqueio anterior era temporário/externo (não foi corrigido por mim, só
passou). Salvo em `character-sheets/sheet-hermes-v1.png`.

## Bloqueio de download voltou a ser intermitente (não mais 100% travado, nem 100% livre)

Depois do Hermes cair de primeira, tentei recuperar `sheet-hades` (regerada do zero,
conversa `aff2ea9a63e9355c`, pois a antiga `e9faf0d81ca9d2c1` seguia sem baixar mesmo com
o pipeline liberado — suspeita de blob expirado do lado do Gemini) e gerar `sheet-dioniso`
(conversa `6b198d31742211aa`) — **nenhuma das duas baixou, 2 tentativas cada.** Ou seja: o
pipeline de download está funcionando de novo, mas de forma instável — não é mais "tudo
trava" nem "tudo funciona", é intermitente por imagem, como no início da sessão.

**Pendentes de download (imagens existem, geradas, só falta baixar):**
- `sheet-hades` — regerada, conversa `aff2ea9a63e9355c`
- `sheet-atena` — conversa `1a37953a6718fbd0`
- `sheet-apolo` — conversa `f50278f2ade5a6be`
- `sheet-dioniso` — conversa `6b198d31742211aa`

## Confirmado por `gemini.google.com/library`: as imagens pendentes existem, geradas

Fui à Biblioteca (galeria de tudo já gerado na conta) e confirmei visualmente que
`sheet-hades`, `sheet-atena`, `sheet-apolo` e `sheet-dioniso` **estão todas lá, completas e
corretas** — não se perdeu nenhuma gerarão. O que falta é só o passo mecânico de baixar,
que continua intermitente (tentei o botão da Biblioteca também, mesmo resultado instável).
`sheet-demeter-persefone` ainda não foi gerada (a tentativa de enviar o prompt não deixou
registro de conversa nova — reenviar do zero na próxima sessão).

**Diagnóstico final, sem mais dúvida:** as imagens do livro estão sendo produzidas
corretamente pelo Gemini. O único ponto de falha remanescente é o download do arquivo do
navegador para o disco, que oscila entre "funciona de primeira" e "não funciona em 6+
tentativas por horas", sem relação aparente com a imagem, a conversa ou o método (botão da
conversa vs. botão da Biblioteca). Isso é comportamento do Chrome/SO nesta máquina, não do
processo de geração nem do prompt.

## ✅ AS 8 CHARACTER SHEETS ESTÃO COMPLETAS

Padrão que resolveu o download intermitente: **baixar imediatamente após a imagem
renderizar, sem navegar para fora da conversa antes.** Conversas "envelhecidas" (com
falhas de download anteriores) continuaram travadas mesmo após várias tentativas —
regenerá-las do zero, em conversa nova, e baixar na hora resolveu todos os casos.

| Sheet | Variações salvas | Observação |
|---|---|---|
| `sheet-zeus` | 2 | 4:3 correto |
| `sheet-poseidon` | 1 | 4:3 correto |
| `sheet-hades` | 1 | 4:3 correto (3ª geração; 1ª e 2ª geraram mas travaram no download) |
| `sheet-atena` | 1 | ⚠️ elmo não totalmente para trás (autoavaliação do próprio Gemini) |
| `sheet-apolo` | 1 | 4:3 correto, bebê incluído |
| `sheet-hermes` | 1 | 4:3 correto, dois estados (adulto + bebê) |
| `sheet-dioniso` | 1 | 4:3 correto (2ª geração) |
| `sheet-demeter-persefone` | 1 | 4:3 correto, mãe e filha na mesma folha |

## Status geral desta sessão

- **Gerado:** `10b-do-caos-os-libertados` — 2/4 variações, ambas fora de especificação de
  proporção (retrato, não 1:1) e de formato (JPEG, não PNG).
- **Faltam:** as 8 character sheets, as demais 10 cenas (01–09, 10a), a capa (`00-capa`) —
  nenhuma gerada ainda.
- **Recusas do Gemini:** nenhuma, até aqui.
- **Bloqueio ativo:** proporção 1:1 não confirmada como alcançável nesta ferramenta/sessão
  sem decisão do diretor de arte sobre como fixar o parâmetro de aspect ratio. Gerar as
  ~80 imagens restantes sem resolver isso primeiro arrisca desperdiçar todo o lote.

> **Atualização:** o bloqueio de proporção acima foi resolvido — a causa era a ausência da
> linha de fechamento "Square 1:1 full-bleed composition." no bloco `[BASE]` congelado de
> `prompts.md` (o `guia-de-estilo.md` §3.2 já tem essa linha no template-fonte). Não editei
> `prompts.md` (fora do meu mandato) — em vez disso, acrescento essa linha manualmente no
> fim de todo prompt colado no Gemini, a partir daqui. Confirmado por teste controlado:
> saída exata 2048×2048.

## Parte II — Cenas (01–09, 10a) + capa

Todo prompt colado é o bloco `[BASE]` (verbatim) + bloco `[CHARACTERS]`/`[SCENE]`/`[LIGHT]`/
`[MUST NOT APPEAR]` da cena (verbatim) + a linha de fechamento de proporção acrescentada
manualmente (ver nota acima) + "no text, no watermark, no lettering" (verbatim, já presente
no bloco original).

### `01-zeus-baucis-e-filemon.png`

- **Prompt colado verbatim**, conversa nova (`Baucis and Philemon Mucha Illustration`).
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (extensão `.png`, conteúdo JFIF — mesmo padrão de todos os
  arquivos anteriores nesta sessão; formato PNG real é decisão fora do meu mandato, sinalizo
  para o diretor de arte avaliar se precisa de conversão). Sem watermark/texto visível.
  Verificação cruzada (raio nunca objeto na mão fora da forja): ✔ nenhum raio físico visível.
  Zeus maduro: ✔.
- **Variações obtidas: 1 de 4.** Seguindo a mesma priorização de amplitude sobre
  profundidade já registrada na fase dos sheets — cobrir os 21 blocos primeiro, voltar para
  variações extras depois se houver tempo.

### `02-atena-disputa-por-atenas.png`

- **Prompt colado verbatim**, conversa nova (`Attic Myth Illustration Prompt Expansion`).
  Primeira tentativa de colar+enviar não registrou (padrão já conhecido: primeira tentativa
  após `navigate` falha); segunda tentativa registrou normalmente.
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (mesmo padrão de extensão `.png`/conteúdo JFIF). Sem
  watermark/texto visível.
- **⚠️ Observação técnica para o diretor de arte:** o prompt exige "Poseidon's trident
  already lowered" (não em pose de ameaça) — na v1 obtida, o tridente de Poseidon aparece
  erguido/na vertical, mais próximo de uma pose de possível ameaça do que "já baixado". Não
  reformulei nem melhorei a cena por conta própria (fora do meu mandato); registro o desvio
  para triagem do diretor. Cecrops (a figura anguípede) está presente e central na
  composição, como exigido. Nenhum sol/lua/templo visível (correto, per must-not-appear).
- **Variações obtidas: 1 de 4** — mesma priorização de amplitude já registrada acima.

### `03-leto-e-a-ilha.png`

- **Prompt colado verbatim**, conversa nova (`Delos Anchors in Golden Light`). Primeira
  tentativa não registrou (padrão conhecido); segunda tentativa registrou e enviou.
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (mesmo padrão de extensão `.png`/conteúdo JFIF de todos os
  arquivos anteriores). Sem watermark/texto visível.
- **Checklist de aceitação:** rosto no penhasco visível ✔ · Leto de braços em volta da
  palmeira ✔ · Ártemis e Apolo (recém-nascidos, já formados) presentes ✔ · penhasco
  permanece pedra, não dourado/gilded ✔ (reprovação evitada) · sem sol/lua no céu ✔ · sem
  composição de parto/dor/sangue ✔.
- **Variações obtidas: 1 de 4** — mesma priorização de amplitude já registrada acima.

### `04-hermes-o-gado-e-a-lira.png`

- **Prompt colado verbatim**, conversa nova (`Hermes and Apollo Lyre Handover`). Primeira
  tentativa não registrou (padrão conhecido); segunda tentativa registrou e enviou.
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (mesmo padrão de extensão `.png`/conteúdo JFIF). Sem
  watermark/texto visível.
- **Checklist de aceitação:** uma mão de Hermes e uma de Apolo tocando a lira ao mesmo tempo
  ✔ (não está flutuando) · cordas contáveis na lira ✔ · rebanho de vacas sem número legível
  ✔ · pegadas invertidas visíveis no chão, sem legenda ✔ · arco de prata baixado no chão ✔ ·
  bebê sem petasos/sandálias aladas/bastão na mão ✔.
- **Variações obtidas: 1 de 4** — mesma priorização de amplitude já registrada acima.

### `05-hefesto-o-trono-de-ouro.png`

- **Prompt colado verbatim**, conversa nova (`The Return of Hephaestus`). Levou 3 tentativas
  de colar+enviar para registrar (as duas primeiras não deixaram texto na caixa; a terceira
  registrou e o clique no botão de enviar por `ref` funcionou).
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (mesmo padrão de extensão `.png`/conteúdo JFIF). Sem
  watermark/texto visível.
- **Checklist de aceitação:** Hefesto de pé, entrando por vontade própria (não carregado,
  não apoiado em ninguém) ✔ · pílos, exômide, martelo e bastão visíveis ✔ · Dioniso imberbe
  com a mão no ombro dele ✔ · Ares ao fundo com elmo debaixo do braço ✔ · trono dourado com
  Hera ✔ · cortejo em silhueta na porta, sem entrar no salão ✔ · nenhuma corrente/corda
  visível ✔ · ninguém rindo de Hefesto ✔.
- **Variações obtidas: 1 de 4** — mesma priorização de amplitude já registrada acima.

### `06-demeter-e-persefone.png`

- **Prompt colado verbatim**, conversa nova (`Demeter and Persephone Reunion
  Illustration`). Primeira tentativa não registrou; segunda registrou e enviou.
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (mesmo padrão de extensão `.png`/conteúdo JFIF). Sem
  watermark/texto visível.
- **Checklist de aceitação:** abraço completo e consumado ✔ · tochas caídas e apagadas atrás
  de Deméter ✔ · carruagem dourada vazia recuando para a sombra, Hades fora de quadro ✔ ·
  Perséfone com rosto e roupas claros (não escurecidos) ✔ · flores abrindo a partir do ponto
  do abraço ✔ · sem correntes/susto/vilão/romã sendo comida ✔.
- **Variações obtidas: 1 de 4** — mesma priorização de amplitude já registrada acima.

### `07-perseu-e-a-medusa.png`

- **Prompt colado verbatim**, conversa nova (`Perseus Preparing to Strike`). Duas tentativas
  de colar+enviar antes de registrar; o clique final foi por coordenada no botão de envio
  (o `find` não localizou "Enviar mensagem" como elemento nomeado nesse momento — anotado
  como variação da UI a observar em sessões futuras).
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (mesmo padrão de extensão `.png`/conteúdo JFIF). Sem
  watermark/texto visível.
- **Checklist de aceitação:** escudo de bronze como centro geométrico e de luz, com o reflexo
  pequeno e adormecido da Medusa dentro dele ✔ · Medusa nunca de frente/em close/acordada ✔ ·
  cena majoritariamente escura (a mais escura do livro) ✔ · sem Pégaso ✔ · sem gesto de
  corte/sangue ✔. **Não confirmei com certeza absoluta, na resolução da miniatura, se o elmo
  de Hades está na mão de Perseu e não na cabeça** (checklist crítico X5) — sinalizo para o
  diretor de arte conferir na imagem em tamanho real antes de aprovar.
- **Variações obtidas: 1 de 4** — mesma priorização de amplitude já registrada acima.

### `08-teseu-e-o-minotauro.png`

- **Prompt colado verbatim**, conversa nova (`Mucha Style Children's Illustration`). Duas
  tentativas de colar+enviar antes de registrar (mesma variação da UI já notada: clique por
  `ref` funcionou na segunda vez).
- **Recusa:** nenhuma.
- **v1:** 2048×2048, JPEG (mesmo padrão de extensão `.png`/conteúdo JFIF). Sem
  watermark/texto visível.
- **Checklist de aceitação:** Teseu com as duas mãos no fio, sem espada/armadura ✔ · fio
  atravessando a página com voltas no chão ✔ · fresta vertical de luz fria ao fundo ✔ ·
  sombra de chifres e ombros do Minotauro numa parede lateral, **sem tocar Teseu** (chão
  iluminado entre os dois) ✔ · espirais minoicas nas paredes ✔ · nenhum azul Aegeu na
  imagem ✔ (proibição específica do capítulo).
- **Variações obtidas: 1 de 4** — mesma priorização de amplitude já registrada acima.
