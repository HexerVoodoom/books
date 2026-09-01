# Arbitragens da Fase 3a — decididas pelo orquestrador

Três ondas atacaram o guia de estilo: `mito-historiador-arte` (reprovou, 3 FATAIS),
`mito-adequacao-etaria` (aprovou com condições, 2 FATAIS) e `mito-cetico` (3 FATAIS de
executabilidade). Este arquivo resolve o que **não é edição de texto** — as colisões entre
lentes e o que depende do dono.

---

## A1 — Cérbero contável na arte antiga × a decisão de gate "cabeças não contáveis"

**O conflito.** O historiador mostrou que a iconografia grega é o oposto de ambígua: Cérbero é
**sistematicamente contável** (duas cabeças no repertório arcaico, três depois). Logo, o
raciocínio do guia — *"nenhum número canônico nas fontes → não contáveis"* — é verdadeiro no
eixo **literário** e falso no eixo **visual**. O cético apontou que corrigir isso pareceria
reabrir a decisão D2, que é de gate.

**Decisão: a regra fica; a justificativa muda.** "Cabeças não contáveis" **não é fidelidade
iconográfica** — é **adequação etária**, e tem precedente próprio: o Cem-Mãos do livro 1 foi
reprovado justamente por ser contável. A regra continua valendo por inteiro. O que era erro era
o livro **dizer que estava sendo fiel** quando estava protegendo a criança.

Isso **não reabre D2** — mantém a regra e conserta o rótulo. Cada ficha do §3 ganha a linha
**[ICONOGRAFIA]** proposta pelo historiador, e onde o livro diverge da arte antiga a divergência
entra como **[NOSSO], com o motivo declarado**. A página de Fontes herda: *"a arte grega
desenhava Cérbero com duas ou três cabeças; aqui ele tem tantas que ninguém conta — foi escolha
nossa, para este livro."*

Vale igual para **Tifão** (sem asas nem pernas-de-serpente é uma forma que nenhum grego
desenhou — a hídria calcídica de Munique é o anguípede alado; a escolha é defensável porque a
fonte-espinha é Hesíodo, mas o silêncio não era) e para **Ladon** (o guardião da macieira antigo
tem **uma** cabeça só; "cem cabeças" é do texto, e o livro funde as duas autoridades — declarar).

## A2 — A colisão tripla da capa (a única que precisa ser resolvida de uma vez)

Três correções de três lentes caem no mesmo elemento — a cauda-dragão de Cérbero na capa:

- **Historiador (F1):** forma que derrete em ornamento é art nouveau; a faixa ática é
  não-figurativa. A cauda **não pode virar palmeta**.
- **Adequação (FIXÁVEL-2.3):** a cauda é a segunda coisa que o olho da criança encontra —
  precisa de trava: sem boca, sem dente, sem olho no leitor.
- **Cético (FIXÁVEL-1):** aplicar F1 isoladamente devolve a cauda ao corpo, **perto do rosto**,
  destruindo a alavanca 5 (a válvula que tira o perigo do rosto).

**Decisão, numa peça só:** a cauda **enrola no arco Mucha**, não na faixa ática. O arco é art
nouveau por definição — é lá que a metamorfose forma↔ornamento é legítima, e o historiador
mesmo autoriza ("a cauda pode enrolar no arco; não pode virar palmeta"). Assim: o perigo
continua deportado para longe do rosto (alavanca 5 preservada), a faixa geométrica fica
intocada (F1 satisfeita), e a cauda entra sob as travas da adequação (padrão, sem boca, sem
dente, sem olho).

**E a faixa ática ganha a solução com lastro:** duas faixas distintas, como o historiador
propôs — a **geométrica intocável** (meandro, palmeta-e-gavinha) e um **friso de animais
orientalizante** (coríntio/proto-ático: perfis enfileirados como módulo, campo de rosetas,
silhueta chapada). É nele, e só nele, que a multidão vira textura com gramática autenticamente
grega. A camada 3 da fórmula não-contável passa a apontar para o friso, não para o meandro.

## A3 — O teste de leitura de 4 anos: a barra é rebaixada, e isso fica por escrito

O cético tem razão e o problema não tem solução dentro desta sessão: o teste
("a criança diz 'cachorro'?" + "ia querer ficar perto dele?") é **condição de aprovação da capa
e de todo o livro**, e não existe criança, dono, protocolo nem registro. Sem isso, o veredito
viraria o dono carimbando a própria arte — gate sem evidência, que é o anti-padrão que o loop
existe para impedir.

**Decisão: a barra é rebaixada explicitamente, nunca em silêncio.** Até que o dono nomeie um
leitor real, vale um **proxy declarado**: o `mito-adequacao-etaria` aplica o teste como
*avaliação especializada*, e o veredito é registrado **como proxy**, com essas palavras, no
`log-geracao.md`. **A capa não é considerada validada** — vai ao dono com a etiqueta
"aguardando teste com leitor real".

⚠️ **PENDÊNCIA PARA O DONO** — a única coisa desta fase que ninguém aqui pode resolver:
nomear a criança (idade), quem aplica e onde o veredito é gravado. Protocolo já definido pela
adequação: pergunta **aberta** (*"o que é isso?"*), **sem o texto**, **sem nomear o animal
antes**, **sem oferecer alternativas** — perguntar *"isso é um cachorro?"* invalida o teste.

## A4 — Referências CC0: tabela na 3a, uso como anexo decidido na 3b

O historiador exigia a tabela **antes da primeira geração**. O cético verificou que a API do Met
responde sem chave nesta sessão (é trabalho, não bloqueio) — **mas** apontou o que a onda 1 não
sabia: o livro 1 gerou as 21 imagens **sem anexar uma única referência**. Exigir o anexo agora
introduz um passo de UI nunca executado, num pipeline já instável.

**Decisão:** a **tabela** é entregável da 3a (está sendo construída). O **uso como imagem
anexada** é decidido na 3b, por piloto de uma imagem. E fica registrado o alerta que impede o
acidente: **British Museum é NC — estudo, nunca asset anexado ao gerador**; e o precedente do
log do livro 1 (proposta de anexar imagens de *Age of Mythology*, obra protegida, recusada)
continua valendo como o que **não** se faz na falta de referência.

## A5 — Regra demais (cético, FIXÁVEL-7)

~60 proibições explícitas conferidas por uma pessoa olhando um JPEG de 2048 px não é rigor, é
teatro — e o item 14 da validação ("todo elemento rastreável a [FONTE] ou [NOSSO]") é
inverificável numa aquarela com folhagem.

**Decisão:** cada peça leva um `[MUST NOT APPEAR]` de **≤7 itens verificáveis**, colado no
prompt (que foi o que o livro 1 de fato executou); o resto vira **racional**, no guia, para
consulta — não checklist de gate.

## A6 — Correções baratas de pipeline que o guia esquecera

- **Recodificação obrigatória:** o Gemini entrega **JPEG com extensão `.png`**, e o Typst
  rejeita ("Invalid PNG signature"). O guia restaurou a linha de proporção (o outro achado
  sistêmico do livro 1) e esqueceu esta. Uma linha, e sem ela a Fase 4 quebra.
- **Piso de variações declarado:** o guia herda "3–4 variações e curar" e impõe "máx. 3 rodadas"
  — mas o livro 1 entregou 1 de 4 em quase tudo. Sem piso, "curar" é ficção.
- **Orçamento realista:** 18 peças é o piso teórico. Com as rodadas das 7 peças não-contáveis e
  o histórico do livro 1 (aba degradando após ~15 gerações, downloads intermitentes, conversas
  "envelhecidas"), o realista são **30–40 conversas em 3+ sessões**. Declarar isso e o ponto de
  parada.

## A7 — O que os pilotos vão decidir (não arbitrável no papel)

Duas objeções do cético são **empíricas** e estão sendo testadas agora, porque nenhuma discussão
as resolve:

- **F-C2:** a fórmula das três camadas é gerável, ou repete a falha do Cem-Mãos (que errou 4/4
  com a instrução colada verbatim)? 7 das 18 peças dependem disso.
- **F-C1:** duas gerações do mesmo prompt de Equidna produzem "o mesmo rosto sem uma ruga a
  mais" (D9), ou D9 precisa de mecanismo (anexar a 1ª como referência) ou de rebaixamento
  (de "idêntico" para "mesmo enquadramento e mesma idade")?

O resultado entra no guia **antes** de a 3a fechar.
