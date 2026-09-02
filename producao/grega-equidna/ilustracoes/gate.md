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
