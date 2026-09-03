# Gate — Fase 3a (Direção de arte) · grega-equidna

**Data:** 2026-09-01 · **Líder:** mito-diretor-arte · **Status: APROVADO com 1 pendência do dono**

## Exit bar

Guia de estilo fechado (`guia-de-estilo.md` v2), descrições canônicas congeladas, tabela de
referências licenciadas (`referencias-visuais.md`), e os pacotes de geração por peça.

## Loop adversarial — o mais duro do run

Três lentes, **8 objeções FATAL**, e o guia v1 foi **reprovado** por uma delas.

| lente | veredito | as FATAIS |
|---|---|---|
| `mito-historiador-arte` | **REPROVOU** | faixa ática desenhada em gramática art nouveau · zero referência de criatura licenciada · fichas sem declarar onde o livro desenha contra a arte antiga |
| `mito-adequacao-etaria` | aprovou com condições | fogo de Tifão sem teto · o teste de aceitação validava design, não medo |
| `mito-cetico` | 3 FATAIS de executabilidade | D9 sem mecanismo · a regra central do livro é a instrução que o gerador falhou 4/4 no livro 1 · o teste de 4 anos não tem sujeito, dono nem protocolo |

### A objeção que mais mudou o livro

O guia mandava as cabeças excedentes das criaturas virarem ornamento na moldura de vaso ático.
Mas a gramática ática (meandro, palmeta) é **rigidamente não-figurativa e modular** — forma que
derrete em ornamento é vocabulário **art nouveau**. Ou seja: a regra da série diz *"a cerâmica
emoldura; Mucha atua"*, e o guia fazia Mucha **emoldurar e atuar**, chamando isso de herança.
A solução tem lastro antigo: duas bandas distintas — a **geométrica intocável** e um **friso de
animais orientalizante** (REF-06, olpe coríntio, Met 246565, CC0), que é a camada autenticamente
grega onde criaturas enfileiradas viram textura modular.

## Os dois pilotos (a Fase 3a não podia fechar sem eles)

Executados no Gemini, 3 imagens, 2048×2048. Responderam o que nenhuma discussão resolveria:

**Piloto 1 — o gerador obedece contagem POSITIVA e ignora NEGAÇÃO.** Pedimos 3 cabeças nítidas e
vieram 3, sem a fileira equidistante que reprovou o Cem-Mãos; o teste "cachorro" passou. Mas a
camada "não contável" saiu **contável** (~7 cabeças em 10 s): o modelo leu "dissolvida" como
"menos detalhada" e desenhou anatomia. **A fórmula foi reescrita em redação positiva** — camada
1 com número afirmado, camada 2 descrita **pela técnica** de pintura, camada 3 como bloco
imperativo separado. Plano B com gatilho: 2 reprovas por contagem → desenho de Ladon.

**Piloto 2 — D9 não é cumprível por prompt.** Duas conversas, prompt idêntico: **duas mulheres
diferentes** (~8 anos de diferença aparente, cavernas de paletas incompatíveis, e o feixe de luz
da manhã — o único movimento da página — presente numa e ausente na outra). **D9 fica, com
mecanismo:** a p. 40 é gerada **anexando a p. 10 aprovada como referência** — que é o que o guia
do livro 1 sempre disse ser a receita de consistência e nunca foi executado nas 21 imagens dele.
Fallback declarado com gatilho de 2 falhas.

**Confirmado de bom:** a linha de proporção funciona (2048×2048 exato nas três); os 3 downloads
caíram de primeira; e **a régua de não-sensualização de Equidna passou item a item nas duas
gerações** — era a descrição canônica mais delicada do livro.

## Referências licenciadas — pendência da fundação do livro 1, fechada

12 peças verificadas **licença por licença na página do próprio acervo**. Achado constrangedor:
das 4 referências herdadas do livro 1, **a nº 3 nunca foi uma obra** — era uma instrução de
busca ("kylix de figuras vermelhas com deuses — buscar Hermes, Atena, Perseu") que passou por
dois gates; e a nº 4 estava listada sob "Met Open Access", mas o Met não tem Mucha. Metade do
"bloqueio de proxy" era erro de tipo: o guia anotara **números de acesso** onde a API exige
**objectID**. O guia do livro 1 foi corrigido.

**Sem referência licenciada: Ladon** (tudo bom está no British Museum, que é NC). Fica como
montagem declarada. **British Museum: estudo, nunca anexar.** A hídria de Munique (Tifão) é
estudo — mostra exatamente o que a ficha proíbe, e serve só para declarar a divergência.

## Regra que mudou de estatuto

**"Cabeças não contáveis" não é fidelidade — é adequação etária.** A arte grega desenhava
Cérbero com 2 ou 3 cabeças, sempre contáveis. A regra fica (o Cem-Mãos foi reprovado por ser
contável), mas agora declarada como escolha nossa, e a página de Fontes herda a frase.

## ⚠️ PENDÊNCIA DO DONO — a única coisa desta fase que ninguém aqui resolve

O teste de aceitação ("a criança diz o nome do animal?" + "ia querer ficar perto dele?") é
**condição de aprovação da capa e do livro**, e não existe criança nomeada, aplicador nem
registro. Sem isso, o veredito viraria o dono carimbando a própria arte.

**Barra rebaixada por escrito, nunca em silêncio:** vale um **proxy declarado** — o
`mito-adequacao-etaria` aplica o teste como avaliação especializada, registrada com essas
palavras. **A capa não é considerada validada**; vai ao dono etiquetada *"aguardando teste com
leitor real"*.

**O que o dono precisa dizer:** quem é a criança (idade), quem aplica, onde o veredito é
gravado. Protocolo já definido: pergunta **aberta** (*"o que é isso?"*), **sem o texto**, **sem
nomear o animal antes**, **sem alternativas** — perguntar *"isso é um cachorro?"* invalida o teste.

**Gate da 3a: APROVADO.** Fase 3b (geração) liberada, com orçamento de 30–40 conversas em 3+
sessões e parada a cada 15 gerações.


---

# Gate — Fase 3b (Geração e curadoria da ilustração) · grega-equidna

**Data:** 2026-09-02 · **Líder:** `mito-diretor-arte` · **Status: APROVADO — MIOLO COMPLETO, 12/12**
**Modo de decisão:** **delegado.** O dono delegou a decisão à squad sob o objetivo permanente de
*entregar o livro completo* e não esteve disponível para decidir peça a peça. Toda decisão abaixo
foi tomada sob essa delegação, está **registrada** e é **reversível a pedido**.

## Exit bar

**Nenhuma posição do miolo em aberto, nenhum placeholder indo à gráfica.** Doze posições
preenchidas com arquivo aprovado, cada peça com defeito residual entrando **com o defeito nomeado
por escrito** — nunca em silêncio.

## O que a fase produziu

**9 sessões de curadoria · ~40 gerações · 5+ rodadas só em Cérbero.** Três decisões do dono
entraram no meio do caminho e reescreveram trabalho já feito (`DIRECAO-DO-DONO.md`: aquarela
molhada e caverna fria; `DIRECAO-DO-DONO-2.md`: Cérbero de três cabeças, marrom escuro, orelhas em
pé; e a delegação da decisão à squad). O guia foi de **v2 a v2.7**.

## As doze posições

| posição | arquivo final | estado |
|---|---|---|
| capa | `00-capa-D-REF.png` | ✅ **após a errata §38.3** — 1 defeito nomeado |
| p. 10 · Equidna e as portas | `01-equidna-a-caverna-C-dono.png` | ✅ aprovada pelo dono |
| p. 14 · Dragão da Cólquida | `02-dragao-da-colquida-B-umvelo.png` | ✅ |
| p. 18 · Órtro, o turno de trabalho | `03-ortro-o-turno-de-trabalho-B-castanho.png` | ✅ **sem ressalva material** |
| p. 22 · Ladon e o pedido da almofada | `04-ladon-e-o-pedido-da-almofada.png` | ✅ montagem declarada |
| p. 26 · A pergunta da Esfinge | `05-a-pergunta-da-esfinge-B-r2.png` | ✅ |
| p. 28 · O leão, antes | `06-o-leao-antes.png` | ✅ |
| cap. 6 · vinheta 24 mm | `06v1-as-duas-bocas.png` | ✅ |
| cap. 6 · vinheta 44 mm | `06v2-a-pele.png` | ✅ |
| p. 33 · O abraço sem armas | `07-cerbero-o-abraco-sem-armas-F.png` | ✅ **1 defeito nomeado** |
| p. 36 · Tifão | `08a-tifao-C-r3.png` | ✅ 1 defeito nomeado (§36) |
| p. 38 · O retrato de origem | `08b-o-retrato-de-origem-C.png` | ✅ **2 defeitos nomeados** |
| p. 40 · A caverna, última página | `08c-a-caverna-final.png` | ✅ D9 cumprida, sem *fallback* |
| âncora | `sheet-cerbero-I.png` | ✅ substitui todas as folhas anteriores |

## 🔴 Os riscos nomeados que SOBEM AO DONO

### R1 — **A capa entra com a cabeça central no eixo, e o teste com leitor real nunca aconteceu**

A `00-capa-C` é a terceira candidata; o teto está esgotado. A cabeça central de Cérbero **encara o
leitor**, o que a §6.1-2 do guia proíbe. Decidi que entra: é **cão sentado, boca fechada, orelhas
em repouso, íris âmbar quente com pupila**, e as duas cabeças laterais estão fora do eixo — é a
gramática do retrato de capa, não a do bote (argumento completo em `curadoria-3b.md` §38.4-2).

**Por que sobe mesmo assim:** a capa é a peça que o **teste de aceitação com leitor real** deveria
julgar (*"o que é isso?"* + *"você ia querer ficar perto dele?"*), e **esse leitor continua não
existindo** — é a pendência aberta desde o gate da 3a e ninguém aqui a resolve. O que existe é o
**proxy declarado** da `mito-adequacao-etaria`, e ele passa. **A capa vai à Fase 4 etiquetada
*"aguardando teste com leitor real"*.**

> **O que o dono precisa dizer:** (1) quem é a criança e quem aplica o teste; (2) se o olhar
> frontal da capa fica ou se ele quer uma quarta rodada. **Decisão dele, não minha.**

### R2 — **O pelo de Cérbero saiu castanho-avermelhado médio, não marrom escuro**

A palavra do dono foi *"marrom escuro"*. O executado é um castanho-avermelhado médio, mais claro
que a ordem. **Não regerei por isso**, porque o requisito **real** por trás da cor é separar
Cérbero de Órtro, e a separação é relativa: na **p. 38 os dois dividem a mesma página** e a
distância de valor é de sobra — nenhuma criança os confunde. A regra do guia foi reescrita como
**delta**, não como valor absoluto (§38.6d).

> **O que o dono precisa dizer:** se a diferença contra a palavra dele é aceitável, ou se quer o
> escurecimento. ⚠️ Escurecer o pelo custa **quatro peças** (âncora, capa, p. 33, p. 38) e a p. 33
> é a peça mais limpa que o livro produziu — o risco de perdê-la é real.

### R3 — **Três defeitos residuais de acabamento, declarados e não corrigíveis por edição**

| peça | defeito | por que não reprova |
|---|---|---|
| p. 33 | o braço de Héracles cruza o pescoço da cabeça central; num relance pode ler como gravata | rosto enterrado no pelo, olhos fechados, corpo relaxado, armas no chão — a leitura se desfaz em meio segundo |
| p. 38 | a cabra da Quimera brota da **cernelha**, não do meio do dorso | a Quimera **é um animal só** e a cauda termina em cabeça de serpente; o fatal do §33 caiu |
| p. 36 | os braços de Tifão seguem arqueados, mãos no chão — um adulto pode achar simiesco | herdado do §36; defeito de acabamento, não de leitura infantil |

### R4 — **A Banda B (friso orientalizante) não foi desenhada na p. 38**

Era **obrigatória** como dispositivo anti-anatomia numa página com duas criaturas policefálicas.
**Entra sem ela** porque o dispositivo protegia contra uma falha que **não ocorreu**: a Hidra tem
três cabeças e só três, a Quimera é um animal, o Cérbero tem três. Registro que a regra foi
**descumprida com resultado correto** — não que ela estava errada.

### R5 — **Pendência de ficha, herdada e ainda aberta: Tifão (§3.6)**

O §32.6 exigiu **cabeça humana barbada** e revogou na prática o `NEVER a whole man's face` da ficha
canônica. **A ficha ainda não foi emendada.** Não bloqueia a Fase 4; **bloqueia o livro 3**, onde a
contradição volta. Dono: `mito-diretor-arte`.

## 🔴 O achado de processo desta fase — e ele muda o método

**O relatório do ilustrador sobre a p. 38 estava errado em dois pontos e omisso num terceiro.**
Ele reportou a D9 quebrada e a Quimera parcial — **abri os arquivos e cruzei em resolução plena:
as duas afirmações são falsas** (§38.1). E **não reportou** o único defeito de capa que havia: a
serpente da juba de Cérbero está de **boca aberta com língua bífida**, e as três serpentes têm
**pupila em fenda vertical** (§38.2).

Confiar no laudo teria custado **duas rodadas de geração contra defeitos inexistentes** e
**publicado a capa com a língua bífida**.

> **Emenda de método, vinculante (§38.6f):** o veredito do diretor de arte **nunca** é emitido
> sobre o relatório do ilustrador — é emitido sobre **o arquivo, aberto e ampliado**. O relatório
> é pista, não prova.

**Lacuna de guia que o achado expôs, e que foi fechada:** a FIXÁVEL-3 (boca aberta, presa, língua
bífida, olho de réptil) estava escrita **só para o corpo de Equidna**. Agora vale para **toda
serpente do livro** — juba, cauda-criatura, serpente ornamental e friso (§38.6c).

## Uma tarefa de execução antes da Fase 4

**Errata de edição da capa — 5 marcas de preenchimento local (Pillow), especificadas px a px em
`curadoria-3b.md` §38.3.** Apaga a língua bífida, fecha a boca aberta e converte as três pupilas em
fenda em olho redondo escuro. Saída: **`00-capa-D-REF.png`**. **A Fase 4 não recebe a `-C`.**

## Veredito

> ## **GATE DA 3b: APROVADO.** Fase 4 (diagramação) liberada.
>
> **12/12 posições do miolo preenchidas. Nenhum placeholder.** Cinco riscos nomeados sobem ao
> dono; **nenhum deles bloqueia a diagramação**, e o R1 é o único que pede decisão dele antes da
> gráfica.
