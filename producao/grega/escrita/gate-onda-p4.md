# Gate — Fase 2 (Escrita) · onda P4 · **fechamento do livro** · Mitologia Grega · 2026-08-31

Artefatos sob julgamento: `capitulos/10-do-caos-ao-olimpo.md` (o capítulo geral) **e o livro
inteiro lido de ponta a ponta** — os dez capítulos, `capitulos/apendices.md`, `livro-spec.md`,
`ilustracoes/prompts.md` e o processo de extração para diagramação.
Rodada: **passe 2** (passe 1 = cap. 10 entregue pelo `mito-escritor` + ataque quádruplo:
`mito-fidelidade`, `mito-adequacao-etaria`, `mito-critico-tom`, `mito-cetico`).
Líder do gate: `mito-orquestrador` · edição executada pelo `mito-editor`.
Pareceres do passe 1: `escrita/pareceres-onda-p4.md`, `escrita/cetico-p4.md`.

> **Este gate é diferente dos três anteriores.** Os gates P1 e P2–P3 julgaram capítulos. Este
> julga **um livro**: das três objeções fatais, **nenhuma é visível dentro de um capítulo**
> (um atributo que nunca foi plantado, um glossário que não cabe, um aparato incompleto com
> duas seções brigando pela mesma página). É exatamente o que a Fase 2 existe para pegar, e é
> a última chance de pegá-lo antes de a arte e a diagramação congelarem o texto.

---

## Self-grade (líder: mito-editor)

Exit bar da Fase 2: *capítulos escritos dentro do teto, aprovados pelos quatro atacantes, com
box, glossário e cena de ilustração fechados, e o **pacote de texto pronto para o revisor**.*

| Dimensão da exit bar | 🟢/🟡/🔴 | Evidência |
|---|---|---|
| Teto de palavras respeitado (500–600 · 750–850) | 🟢 | 594 · 533 · 556 · 562 · 519 · 509 · 578 · 545 · 503 · **832** — recontado com a **R4.4 corrigida** (saída colada abaixo) |
| Box ≤ 80 palavras, 1 por capítulo | 🟢 | 74 · 67 · 70 · 70 · 62 · 72 · 57 · 54 · 77 · 65 — 10/10 |
| Fidelidade | 🟢 | Zero distorções, zero invenções no cap. 10. As três ressalvas (R1 harmonização, **R2 Métis — condição de aprovação**, R3 elmo sem destinatário) estão **escritas**, não prometidas |
| Adequação etária 4–7 | 🟢 | O1 (pergunta da foice), O2 (bloco movido), O3 (cinco irmãos nomeados), O4 (*bramir* ao glossário) + os **dois vinculantes** (p. 47 no alto · engolimento nunca ilustrado · Urano sem olhar) |
| Tom / anti-infantilização | 🟢 | O1, O2 e O3 aplicados; a última linha do livro **preservada** — era o que o parecer mandava não tocar |
| Cena de ilustração ilustrável e coerente | 🟢 | X6 resolvido (Zeus maduro na 10B), R4.1 linha 10 declarada, dois vinculantes de arte inscritos no `prompts.md` |
| Consistência de grafia entre capítulos | 🟢 | `grep` colado abaixo: **zero** forma latina no corrido dos 10 (as 4 ocorrências de Júpiter/Mercúrio/Saturno estão todas em nota editorial, onde devem estar) |
| Arco do conjunto (os dez lidos em sequência) | 🟢 | **O raio agora existe** (R6.1): os três atributos do box do cap. 10 estão plantados, e a última linha tem lastro. Cota de fechos etiológicos 3/10; maneirismo de coda quebrado (X3) |
| Aparato pós-textual completo | 🟢 | **Era o 🔴 desta onda.** Cap. 10 redigido, colisão de páginas resolvida, 3 perguntas do cap. 10 escritas, nota de cortes de sessão, rodapé de omissões, linha da Frígia |
| Aparato **cabe** | 🟢 | **Provado, não estimado** (R6.2): glossário 1,73/2 pp · fontes 0,84/1 p · perguntas 1,89/2 pp, medidos em Typst 0.15.1 |
| Padrões seriais registrados | 🟢 | livro-spec **Rev. 6**: R6.1–R6.5 novas; R4.1, R4.3, R4.4, R5.1, R5.2, R5.3 alteradas |
| Pacote pronto para revisor e diagramação | 🟡 | Texto fechado e reextraído; o 🟡 é a **tensão da régua serial** (ver Pendências ao humano), que não é decisão do editor |

**Self-grade do passe 1 (comparação):** 3 🔴 (raio inexistente; glossário estourado; aparato
incompleto com colisão de página) e 5 🟡.

---

## Ataque adversarial — resolução item a item

### FATAIS

| # | Objeção | Resolução | Onde |
|---|---|---|---|
| **F1** | O raio não existe nos caps. 1–9 (`grep` = 0) — derruba a justificativa do capítulo geral, o box do cap. 10 e a última linha do livro | **ACEITA.** Plantado no **corrido do cap. 1**, com 11 palavras: *"Quando Zeus falou, um trovão respondeu longe: o raio era dele."* 583 → **594** (teto 600, margem 6). Escolhido o cap. 1 e não o 2 ou o 6: é a **primeira aparição de Zeus**, dá a distância máxima ao pagamento, e é o único dos três em que Zeus **age como deus** (no cap. 2 ele é árbitro e no 6 é ausente/consentidor — plantar o raio ali empurraria autoridade para uma cena que o livro escolheu não dar a ele). ⚠️ **A proibição visual do cap. 1 continua valendo e ficou mais forte:** o raio é luz insinuada, nunca objeto — reforçado no `prompts.md`. Vira regra serial **R6.1** | `capitulos/01…md`, `livro-spec.md` R6.1, `ilustracoes/prompts.md` |
| **F2** | Glossário não cabe: 68 verbetes reais; a R5.2 declarava o cap. 2 podado a 6 e ele tinha 9; podar tudo a 6 "ainda deixa ~1.930" | **ACEITA, e resolvida ao contrário do que o cético temia.** Poda executada (68 → **56**, sem tocar em uma linha de corrido) e depois **medida**: o glossário real ocupa **1,73 de 2 páginas**. Não foi preciso teto de 5, nem tomar a p. 51, nem subir a paginação. A técnica que pagou o teto sem perder palavra difícil foi **absorver** (tenaz→Forja, tirso→Dioniso) em vez de cortar. Prova colada abaixo | `capitulos/0{1,2,3,5}…md`, `livro-spec.md` R5.2/R6.2, `escrita/prova-composicao/glossario.typ` |
| **F3** | Aparato incompleto (item 10 "a redigir") e com **colisão**: duas seções na p. 52 | **ACEITA.** Item 10 escrito (70 palavras, com a folga de 40 que os caps. 1–9 deixaram). Escritos: **Métis** (R2, condição de aprovação), **harmonização aclamação→sorteio** (R1), **atribuição tripartida**, **rodapé Afrodite/Erínias/Gigantes/Mélias**, as **3 perguntas do cap. 10** com "O que Cronos fez com a foice?" obrigatória, a **nota dos dois cortes seguros de sessão**, a **linha da Frígia** (caps. 1 e 9). Paginação corrigida: **fontes p. 51 · perguntas pp. 52–53**. Para a p. 51 fechar em uma página, a bibliografia caiu de ~300 para **203** e o parágrafo de internet + crédito do Met **desceram ao colofão (p. 54)** — não foram cortados | `capitulos/apendices.md`, `livro-spec.md` R4.3/R5.3 |

### FIXÁVEIS

| # | Objeção | Resolução |
|---|---|---|
| **X1** | A resposta da p. 52 (cap. 2) promete que o último capítulo conta como alguém cabe dentro de uma **cabeça**; o cap. 10 não tem a palavra | **APLICADA.** A promessa passa a ser da **gramática**: *"Nessa família cabe gente inteira dentro de gente: o último capítulo do livro mostra de onde vem esse costume."* Casa palavra a palavra com a nova frase do cap. 10 |
| **X2** | Prolepse do elmo nomeia o destinatário por adjacência ("ia **pedir** emprestado") | **APLICADA.** → *"ia **usar** emprestado"*. Fidelidade R3 satisfeita: em Apolodoro 2.4.2 Perseu recebe o elmo **das ninfas**, e o cap. 7 mantém a cadeia |
| **X3** | Maneirismo de coda: três dos quatro últimos capítulos com o mesmo verbo | **APLICADA no cap. 7** — *"Ficou só com a história."* → *"**Guardou** só a história."* Escolhido o 7, e não o 8: (a) a coda do 10 é a última linha do livro e o parecer de tom proibiu tocá-la; (b) a do 8 é **citada literalmente** nas pp. 52–53 e já estava sendo mexida por X4 — dois cortes na mesma frase é reescrita, não montagem; (c) no 7 a troca **ganha** a antítese *devolveu o resto / guardou só a história*, que o capítulo não tinha. Restam 2 "ficou" em 4 codas |
| **X4** | Cota R5.1 indecidível: o cap. 8 diz a etiologia duas vezes e termina em "até hoje" | **ESCOLHIDO CORTAR A REDUNDÂNCIA** (em vez de reescrever a regra). Cai a **última** frase; o capítulo termina em *"Atenas ficou de luto e ficou de pé."* 560 → **545**. Motivo da escolha: reescrever a R5.1 para proibir marcador etiológico na última frase **invalidaria retroativamente** os caps. 1, 2 e 3, que já estão gateados e dentro da cota — a regra passaria a punir três capítulos para consertar um. A R5.1 ganha, em vez disso, a **forma canônica** da conversão: *etiologia → coda humana*, com a etiologia **fora** da última frase. Bônus: some um dos "até hoje" do livro |
| **X5** | *bramia* ao glossário colide com o teto de 6 do cap. 10 | **APLICADA como recomendado.** Entra **bramir**, sai **Urano** — que o corrido ancora na própria linha em que o nomeia ("Urano, o Céu estrelado"). A tríade *fervia/bramia/rachava* fica intacta |
| **X6** | Brief 10B diz "Zeus jovem"; a sheet diz *mature, tall* | **A SHEET VENCE** — decisão do editor, virou regra serial **R6.5**. Dois motivos: a 10B é a ⭐ PRODUZIR PRIMEIRO e a referência de continuidade (um Zeus adolescente contamina os caps. 1, 2, 6, 7, 8); e o cap. 1 **depende** dela, sendo impresso **36 páginas antes** e declarado "o mesmo rosto do cap. 10". O arco **bebê → rei** fica onde a fonte o sustenta — **no texto**, na gruta de Creta. **Nenhuma página do livro mostra Zeus criança.** Brief corrigido |
| **X7** | Comando de contagem da R4.4 quebrado (`split('## Texto')[1]` casa com a menção da regra no cabeçalho e devolve 3) | **CORRIGIDO** para `split('\n## Texto\n')[-1]`. Todas as dez contagens refeitas. Uma divergência achada: o cap. 7 é **578**, não 579 |
| **X8** | `capitulos.json` congelou frase proibida; extração anterior ao gate; `state` incoerente em 5 pontos | **APLICADA.** `extrair.py` re-rodado **depois** de todas as edições; aviso no cabeçalho do script e `diagramacao/README.md` novo; vira regra serial **R6.3**. `state/grega.json` corrigido nos 5 pontos: cap. 10 → `gate-aprovado`, artefatos → Rev. 6, `ritmo_visual` → **4/11 = 36%**, `gates.escrita` → `aprovado`, pendência da p. 53 substituída pelo formato vigente |

### RUÍDO (registrado, não agido)

- Contagem 837 × 842 no cap. 10: o correto era **837**; hoje é **832**, e a régua é a R4.4 corrigida.
- Nota 14 do cap. 10 dizia "dois 'até hoje'" e há **um** — a nota foi corrigida (custo zero, é nota).
- R4.1 linha 10 dizia "a declarar": **declarada** (A: p. 44 default · B: p. 46, exceção).
- Caps. 1 e 9 ambos na Frígia: virou **linha do rodapé das pp. 52–53**, e o bônus ficou melhor do que o cético supunha — é o mesmo lugar, com um deus dando o que foi pedido nas duas vezes, e com resultados opostos.
- Divergência nova, não levantada por ninguém: o cap. 7 conta **578**, não 579.

### "Verificado e SEM objeção" — **não refeito**, conforme instrução

Dependências 3→4, 8→3, 4→1, 10→6 · R4.1 do cap. 10 por contagem · R4.2 · dedup de glossário
por termo · boxes ≤ 80. O gate **não** regasta trabalho que o cético já certificou.
⚠️ Uma ressalva de honestidade: a **dedup por termo foi reconferida de graça** no momento da
poda (o corte de *lira* do cap. 3 **é** um caso de dedup, contra o cap. 4) — e continua zerada.

---

## Provas de execução (saídas coladas)

### Contagem de palavras — R4.4 **corrigida** (X7)

```
$ for f in 0*.md 10*.md; do python3 -c "t=open('$f').read().split('\n## Texto\n')[-1]\
  .split('## Você sabia?')[0]; print(len(t.replace('—',' ').split()))"; done

cap.  01   02   03   04   05   06   07   08   09   10
     594  533  556  562  519  509  578  545  503  832
teto 600  600  600  600  600  600  600  600  600  850   ✔ 10/10

box   74   67   70   70   62   72   57   54   77   65   ✔ 10/10 (teto 80)
```
Mudaram nesta onda: **01** (+11, F1) · **07** (−1 de recontagem, não de edição) · **08** (−15,
X4) · **10** (−5: −9 tom O2, −3 tom O1, +7 adequação O3, +4 tom O3). Os outros seis estão
byte a byte como saíram do gate P2–P3.

### Grafia entre capítulos — `grep`, os 10 arquivos

```
$ grep -ho "Posêidon\|Poseidon\|Cécrops\|Cecrops\|Filêmon\|Filemon\|Deméter\|Demeter\|\
Perséfone\|Persefone\|Hefesto\|Cronos\|Saturno\|Júpiter\|Mercúrio\|Ártemis\|Artemis" *.md \
  | sort | uniq -c | sort -rn

  30 Hefesto     27 Posêidon    23 Deméter    20 Perséfone    19 Cronos
  16 Filêmon     10 Ártemis     10 Cécrops
   2 Saturno      2 Mercúrio     2 Júpiter
```
**Zero** variante não acentuada em qualquer arquivo. As 6 ocorrências latinas:

```
$ grep -n "Saturno\|Mercúrio\|Júpiter" *.md
01…:16   > … a única versão conservada é latina — Ovídio, com **Júpiter e Mercúrio** …
01…:249  > … (fonte latina, Júpiter e Mercúrio, Zeus/Hermes como decisão editorial) …
10…:153  > … foice de Saturno ou alegoria do Tempo (Cronos ≠ Chronos) …
10…:263  > … nenhuma forma latina (nunca Saturno, Cibele, Céu/Terra como nomes próprios).
```
Todas em **nota editorial ou proibição de arte**. **Zero no corrido.** ✔

### O raio — a prova que F1 pedia

```
$ grep -l "raio" 0*.md          →  01-zeus-baucis-e-filemon.md     (antes: nenhum)
$ grep -c "raio" 10-do-caos-ao-olimpo.md   →  presente no corrido, no box e na cena
```
Tridente ✔ (cap. 2) · elmo ✔ (cap. 7) · **raio ✔ (cap. 1)** — os três atributos do box do
cap. 10 estão plantados. A última linha do livro (*"Zeus estava com o raio na mão e podia ter
ficado com tudo"*) passa a ter lastro: a criança **já viu** de quem é aquele raio, na página 9,
e **já viu** que ele foi um presente, na página 47.

### Prova de composição — F2 e F3 (regra nova **R6.2**)

Typst 0.15.1 · trim 20,5 × 20,5 cm · caixa 16,9 × 16,5 cm (479 × 468 pt) · **9,5/12 pt · 2
colunas · goteira 0,8 cm** · verbetes, fontes e perguntas **reais**, extraídos dos arquivos.
Arquivos: `escrita/prova-composicao/{glossario,p51,p5253}.typ`. Método: um marcador de posição
no fim do fluxo, lido com `typst eval 'query(<fim>)'` — mede **em que página e a que altura o
texto acaba**, que é a única pergunta que importa.

```
$ typst eval 'query(<fim>)' --in glossario.typ      # 56 verbetes · 1.414 palavras
Libertinus Serif → page 2, x 301.9pt (col. 2), y 267.8pt   → 1,73 pp de 2   ✔
Liberation Serif → page 2, x 301.9pt,           y 267.1pt   → 1,73 pp        ✔
Nimbus Roman     → page 2, x 301.9pt,           y 259.9pt   → 1,72 pp        ✔
DejaVu Serif     → page 3                                   → estoura        ✖ (ver ressalva)

$ typst eval 'query(<fim>)' --in p51.typ            # fontes + bibliografia · 902 palavras
Libertinus Serif → page 1, x 301.9pt (col. 2), y 443.3pt   → 0,84 p de 1    ✔
Liberation Serif → page 1,                     y 451.2pt   → 0,86 p          ✔
Nimbus Roman     → page 1,                     y 445.0pt   → 0,84 p          ✔

$ typst eval 'query(<fim>)' --in p5253.typ          # perguntas · 1.813 palavras
Libertinus Serif → page 2, x 301.9pt (col. 2), y 416.1pt   → 1,89 pp de 2   ✔
Liberation Serif → page 2,                     y 414.8pt   → 1,89 pp         ✔
Nimbus Roman     → page 2,                     y 417.7pt   → 1,90 pp         ✔
```

**Leitura da prova.** O aparato **cabe nas 5 páginas que a paginação lhe deu (49–53)**, com
folga de ~0,27 p no glossário, ~6 linhas na p. 51 e ~0,11 p nas perguntas. **Capacidade real
medida:** ~1.000 palavras de prosa por página, ~820 de verbete, ~960 de pergunta→resposta — a
R4.3 (900/página) é conservadora por ~10%, e essa folga é o que vai absorver fólio, cabeço e a
tipografia serial definitiva. **A R5.2 fica em 6 verbetes por capítulo e não desce para 5.**

⚠️ **Ressalva registrada:** com uma serifada muito larga (DejaVu Serif, que é face de tela e
nunca seria escolhida para miolo de livro), o glossário vai a 3 páginas e a p. 51 estoura. A
tipografia serial ainda é decisão do humano; **a prova tem de ser re-rodada com a face
escolhida** antes da Fase 4. Está nas pendências.

### Extração posterior ao gate — X8

```
$ python3 producao/grega/diagramacao/extrair.py     # rodado DEPOIS de todas as edições
Capítulos extraídos: ['01','02','03','04','05','06','07','08','09','10']
Fontes entries: 11 | Para ler mais paras: 5 | Perguntas seções: 10 | Mudamos itens: 27

$ grep -c "você já leu" conteudo/capitulos.json   → 0    (era 1 — a frase que o gate proibiu)
$ grep -o "raio era dele"  conteudo/capitulos.json → presente
$ grep -o "Guardou só a história" conteudo/capitulos.json → presente
```
Nada mais foi tocado em `diagramacao/` (o `mito-diagramador` está trabalhando ali): apenas o
aviso no cabeçalho de `extrair.py`, o `README.md` novo e a reextração.

---

## Re-grade após a edição

| Item do passe 1 | Antes | Depois |
|---|---|---|
| F1 — raio inexistente | 🔴 | 🟢 plantado, medido, virou regra R6.1 |
| F2 — glossário não cabe | 🔴 | 🟢 podado a 56 e **provado** em 1,73/2 pp |
| F3 — aparato incompleto + colisão | 🔴 | 🟢 completo, repaginado, medido |
| X1 · X2 · X5 · X7 | 🟡 | 🟢 aplicadas literalmente |
| X3 · X4 · X6 | 🟡 (decisão do editor) | 🟢 decididas e justificadas acima |
| X8 | 🟡 | 🟢 corrigido + regra R6.3 + README |
| Régua serial × cap. 10 (832 × piso de 1.200) | 🟡 | 🟡 **não resolvida — é do humano** |
| Tipografia serial | 🟡 | 🟡 **não resolvida — a prova precisa da face final** |

**Veredito: APROVADO.** A Fase 2 fecha com **10 de 10 capítulos e o aparato pós-textual em
texto**, dentro do teto, com o arco do livro provado por `grep` e a caixa provada por
composição. O pacote está pronto para o `mito-revisor` e para a Fase 3.

---

## Objeções sobreviventes (declaradas, não escondidas)

1. **O cap. 10 tem 832 palavras contra um piso serial de 1.200.** O parecer de adequação
   declarou a tensão e o gate não a resolve: o capítulo **cabe** no livro-spec (750–850, teto
   derivado da paginação real de 56 pp) e **não cabe** na régua da série. Não é conserto de
   editor — ou a régua desce na Fase 5, ou o formato do livro cresce.
2. **A prova de composição vale para as três faces testadas, não para a face final.** O
   glossário tem ~3–4 verbetes de margem e a p. 51 tem ~6 linhas: é folga real, mas não é
   folga infinita. Uma edição ampliada com um 11º capítulo **não cabe** no glossário atual.
3. **"choupana" ficou no corrido do cap. 1 sem verbete.** Foi decisão consciente de poda: o
   contexto a ancora ("paredes de vime, telhado de junco"), mas é a única das quatro entradas
   cortadas em que o corrido **não** diz a palavra por extenso. Se o `mito-revisor` discordar,
   a troca barata é *choupana* entrando e *carvalho* saindo.
4. **56 pp não é múltiplo de 16** — pendência antiga, ainda aberta, e agora com uma consequência
   nova: se o livro for a 64 pp, o aparato ganha folga e a poda do glossário podia ter sido
   menos severa. Não desfazer a poda antes de a gráfica ser escolhida.
5. **O box do cap. 10 afirma que os três objetos saíram "da mesma forja, no mesmo dia".** O
   cap. 1 agora mostra Zeus **com** o raio antes de a forja acontecer no cap. 10 — o que é
   correto (o cap. 1 se passa muito depois), mas depende de a **imagem** do cap. 1 não
   entregar o raio como objeto. É por isso que a proibição visual foi reforçada, e não relaxada,
   ao mesmo tempo em que o raio entrou no texto. **Se a arte do cap. 1 desobedecer, o box do
   cap. 10 fica falso na leitura da criança.**

---

## Pendências ao humano (o editor não decide sozinho)

1. **Régua da série × capítulo geral.** Baixar o piso de `serie-padroes.md` (1.200–2.000) para
   algo compatível com um livro de 56 pp, **ou** aprovar um formato maior a partir do 2º livro.
   Recomendação do editor: baixar a régua — 832 palavras é o que **cabe** e o que uma sessão de
   4–7 anos sustenta; o número da série foi escrito antes de existir uma página real.
2. **Tipografia serial.** Escolher a face de miolo. A prova de composição **tem de ser
   re-rodada** com ela antes da Fase 4 (`escrita/prova-composicao/` já está pronto para isso —
   basta trocar uma linha).
3. **Título do livro.** A série é *Era Uma Vez um Mito* (confirmado); o título de trabalho
   ainda é *Mitos da Grécia*.
4. **Caderno de 16 pp / gráfica-alvo** — 56 ou 64 pp. Ver objeção 4 acima.
5. **Confirmar que o colofão (p. 54) recebe** o parágrafo de consulta na internet e o crédito
   do acervo Open Access do Metropolitan, descidos da p. 51 por falta de caixa. São 43 palavras
   e um crédito de imagem: se o colofão não os aceitar, eles voltam e a p. 51 estoura.
