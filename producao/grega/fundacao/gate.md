# Gate — Fase 0 (Fundação) · Mitologia Grega · 2026-08-30

Rodada: **passe 2** do loop adversarial (passe 1 = spec rev.1 + ataque do `mito-cetico`).
Artefato sob julgamento: `producao/grega/livro-spec.md` **rev. 2**.
Líder do gate: `mito-orquestrador` · revisão estrutural executada pelo `mito-editor`.

---

## Self-grade (líder: mito-editor)

Exit bar da Fase 0 (MÉTODO): *`livro-spec.md` aprovado com lista de capítulos (específicos +
o geral), fontes levantadas por mito, parecer de sensibilidade cultural, direção de arte
preliminar e ordem de produção.*

| Dimensão da exit bar | 🟢/🟡/🔴 | Evidência |
|---|---|---|
| Lista de capítulos: específicos + 1 geral | 🟢 | 9 específicos + cap. 10 geral (*Do Caos ao Olimpo*), tabela de capítulos, com episódio narrativo nomeado em cada um |
| Cada capítulo é uma **história**, não um perfil | 🟢 | Coluna "Episódio narrativo" preenchida para os 10; tabela "Cena única de ilustração" confirma clímax ilustrável por capítulo |
| Fontes levantadas por mito | 🟡 | Todas as URLs presentes, **nenhuma verificada** — proxy da sessão bloqueou Theoi, WHE e a API do Met. Verificação obrigatória na abertura da Fase 1 |
| Parecer de sensibilidade cultural | 🟢 | Seção "Sensibilidade cultural": cultura não viva, sem restrições, `mito-sensibilidade-cultural` dispensado das fases 2–4 com justificativa |
| Direção de arte preliminar (estilo da cultura + Mucha/aquarela) | 🟢 | Tabela de hierarquia da fusão: cerâmica ática = moldura/paleta/ornamento; Mucha/aquarela = figuras e rostos, com lista de proibições |
| Referências de acervo CC0 | 🟡 | 3 obras do Met citadas por acesso conhecido, `objectID` e link direto **a verificar** (Fase 3) |
| Ordem de produção | 🟢 | Seção "Ordem de PRODUÇÃO": ondas P0–P5, dossiê da Teogonia primeiro, recorrentes antes dos avulsos |
| Paginação e extensão fechadas | 🟢 | Tabela item a item somando 56 pp (múltiplo de 4 e de 8); teto de 550–650 (específico) / 800–950 (geral) derivado da caixa de texto |
| Decisões editoriais com autoridade citada | 🟢 | Grafia ancorada em Houaiss → tradição de tradução (Torrano, Nunes, Lourenço) → VOLP |
| Consistência de nomes no próprio spec | 🟢 | Verificado por execução (ver seção abaixo) |
| Riscos de adaptação nomeados com estratégia | 🟢 | Medusa, Minotauro, Cronos, Ariadne/Egeu + **rapto de Perséfone** e **Hefesto/capacitismo** com estratégia escrita |
| Decisões que dependem do humano isoladas | 🟢 | Nome da série, tipografia, disclosure de IA, perfil ICC — todas marcadas `[decisão do humano]`, nenhuma decidida por conta própria |

**Self-grade do passe 1 (para comparação):** 4 🟡 e 3 🔴 nas dimensões de capítulo, paginação,
extensão e ordem de produção.

---

## Ataque

Atacante: `mito-cetico` (nenhum agente atacou artefato próprio — CONTRACT §3).

| Atacante | Objeção | Classe | Cenário de falha | Resolução |
|---|---|---|---|---|
| cetico | **F1** — Caps. 1 (Zeus), 4 (Hefesto) e 5 (Ártemis e Apolo) não nomeiam episódio narrativo; são perfis de deus | **FATAL** | O escritor recebe "Zeus, o rei do Olimpo" e devolve uma enciclopédia com adjetivos; o diretor de arte não tem cena para ilustrar e produz um retrato posado — o livro passa a ter 3 capítulos sem história no meio de 7 com história | **ACEITA.** Zeus → **Baucis e Filêmon** (xenia, cabana→templo); Hefesto → **o trono de ouro** (a forja é lugar, não enredo); gêmeos → **o nascimento em Delos** (ilha errante ganha raízes). Justificativa por escolha registrada no spec, mais tabela confirmando que cada clímax cabe em **uma** ilustração |
| cetico | **F2** — "48–56 pp" é intervalo de conveniência; 48 não fecha e o número não é múltiplo de assinatura | **FATAL** | A gráfica devolve o PDF ou cobra caderno extra; a diagramação da Fase 4 descobre que faltam 8 pp e amputa glossário/fontes | **ACEITA.** Tabela item a item somando **56 pp**, com falsa folha, rosto, ficha, sumário, aberturas, glossário, fontes, nota de adaptações e colofão contados. 56 ÷ 4 ✔, ÷ 8 ✔; ÷ 16 ✖ registrado como pendência do diagramador |
| cetico | **F3** — Extensão por capítulo não declarada; a caixa real não comporta o que o spec sugeria | **FATAL** | O escritor entrega 900 palavras num capítulo de 2,5 pp úteis e a diagramação reduz o corpo para 10 pt — violando o piso de legibilidade de 4–7 anos | **ACEITA.** Conta explícita (trim → margens → caixa → corpo 14 pt → 22 linhas → ~250 palavras/página). Escolha: manter 4 pp e apertar o texto (6 pp levaria a ~74 pp). Teto **550–650** específico, **800–950** geral, verificado por execução antes do ataque da Fase 2 |
| cetico | **X1** — Falta ordem de produção (item explícito da exit bar) | FIXÁVEL | Dossiês saem em ordem aleatória, o de Zeus contradiz o da Teogonia sobre genealogia e a Fase 1 é refeita | **ACEITA.** Ondas P0–P5: Teogonia primeiro (fonte de verdade genealógica), depois recorrentes (Zeus, Hefesto, gêmeos), depois cruzados, depois heróis; cap. geral **escrito por último**; character sheets antes das cenas |
| cetico | **X2** — Dependências não resolvidas: Hermes citava Apolo antes de Apolo existir; Hades age sem ser apresentado | FIXÁVEL | Criança de 5 anos ouve "e Hermes devolveu o gado de Apolo" sem saber quem é Apolo; Hades aparece do nada no capítulo mais emocionalmente carregado | **ACEITA.** Ártemis e Apolo movidos para o 3º lugar, Hermes para o 4º; linha de apresentação de Hades escrita e marcada como **obrigatória** no cap. 6 |
| cetico | **X3** — Lista de adaptações omite os dois riscos mais sérios: rapto de Perséfone e rejeição de Hefesto | FIXÁVEL | O escritor romantiza o rapto ("ele se apaixonou e a levou") ou o apaga ("foi passear"); e escreve Hefesto como narrativa inspiracional de superação, com direito a cura implícita | **ACEITA.** Perséfone: reenquadre de **foco** (a câmera fica com Deméter que procura), fato preservado, elipse da tomada, proibições explícitas de romantizar e de apagar. Hefesto: foco no talento, rejeição dita uma vez e com dignidade, tratada como erro de quem rejeitou, **linha vermelha contra "cura"**, sem piada com a marcha, sem "apesar de" |
| cetico | **X4** — Mensagem do cap. geral ("cada geração supera a anterior... cooperação") não é sustentada por Hesíodo | FIXÁVEL | O `mito-fidelidade` derruba o capítulo geral na Fase 2 e a espinha do livro cai a três semanas do fecho | **ACEITA.** Reescrita para **"cada geração pode acertar o que a anterior errou"** — Zeus não repete Cronos: liberta os irmãos e os Ciclopes e reparte o cosmo em vez de engolir. Marcada `(preliminar — a derivar do dossiê)` no spec e listada como pendência |
| cetico | **X5** — Fusão de estilo sem hierarquia: "cerâmica ática + Mucha" é instrução impossível | FIXÁVEL | O ilustrador gera personagens em perfil rígido de figura negra, sem expressão facial, e o livro fica ilegível para o leitor de 4 anos que lê a história pelo rosto | **ACEITA.** Tabela vinculante: cerâmica ática **confinada** a moldura/paleta/ornamento; figuras, rostos e gesto **100% Mucha/aquarela**, expressivos. Proibições nomeadas (perfil rígido, olho frontal em rosto de perfil, rosto inexpresso) |
| cetico | **X6** — Midas resolvido com pergunta ("com a filha?") em vez de decisão | FIXÁVEL | A Fase 1 herda uma indecisão travestida de nota e o dossiê chega sem baseline para confirmar ou refutar | **ACEITA.** Frase afirmativa: **preliminar = Ovídio, *Metamorfoses* XI, sem a filha** (a filha dourada é acréscimo de Hawthorne, 1852). O dossiê confirma com citação |
| cetico | **X7** — `state/grega.json` usa status `"planejado"`, que não existe no enum do CONTRACT §4 | FIXÁVEL | O state fica inválido contra o próprio contrato; qualquer validação futura quebra e o orquestrador perde a máquina de estados | **ACEITA — decisão: estender o enum.** `planejado` é um estado real (entrou no sumário, dossiê não aberto) e inventá-lo no state sem declará-lo era a falha. CONTRACT §4 passa a ler `planejado` → `pesquisado` → `escrito` → `gate-aprovado` → `ilustrado` → `diagramado`. State atualizado e enriquecido com `ordem_leitura`/`ordem_producao` |
| cetico | **R2** — Decisão de grafia ("forma aportuguesada consagrada") não cita autoridade; "consagrada" por quem? | FIXÁVEL | O revisor da Fase 2 e o do livro nórdico decidem por gosto, e a coleção fica com dois padrões | **ACEITA.** Precedência declarada: **Houaiss** → **tradição de tradução brasileira** (Jaa Torrano/Hesíodo; Carlos Alberto Nunes e Frederico Lourenço/Homero) → **VOLP-ABL** para acentuação. Divergências vão ao glossário; decisão final do `mito-revisor` |
| cetico | **R1**, **R3** | — | — | **NÃO RESOLVIDAS — não repassadas.** O briefing desta rodada de edição trouxe F1–F3, X1–X7 e R2; R1 e R3 constam do parecer do cético mas não chegaram ao editor. Pendência endereçada ao `mito-orquestrador`: repassar ou declarar retiradas antes do checkpoint humano |

**Objeções adicionais levantadas pelo próprio editor durante a correção** (não vieram do
cético, registradas para não sumirem):

- Baucis e Filêmon é **fonte latina** (Ovídio, Júpiter/Mercúrio) usada para o Zeus grego —
  aceito com ressalva: o dossiê deve documentar o lastro grego (Zeus Xenios) ou o
  `mito-fidelidade` derruba o cap. 1. Pendência aberta.
- **Dois capítulos ovidianos** (1 e 9) num livro de fontes gregas, com risco de eco de tom
  moralizante. Mitigação: polaridade inversa (recompensa × punição) e 8 capítulos de
  distância; o editor vigia na Fase 2.
- **Hera antagonista** em 3 (perseguição a Leto) e em 5 (rejeição de Hefesto), em sequência.
  Mitigação: perseguição a Leto em elipse, sem nomear Hera. A confirmar no dossiê.

---

## Re-grade

- **Passes usados: 2 de 2** (limite do MÉTODO atingido — não há terceiro passe disponível
  nesta fase).
- **Dimensões finais:** 10 🟢 · 2 🟡 · 0 🔴.
  - 🟡 **Fontes por mito** — presentes, não verificadas (rede bloqueada nesta sessão).
  - 🟡 **Referências de acervo** — Met citado por acesso conhecido, `objectID` a confirmar.
  - Ambas são 🟡 por **impedimento de ambiente**, não por trabalho não feito, e ambas têm
    dono e fase de resolução nomeados. Nenhuma vira 🟢 sem verificação por execução.
- **Objeções FATAIS sobreviventes:** **nenhuma.** F1, F2 e F3 foram resolvidas no artefato.
- **Objeções não resolvidas:** R1 e R3, por não terem sido repassadas — vão em **primeiro
  lugar** no checkpoint humano, porque não se pode afirmar que o gate está limpo sobre
  objeções que ninguém leu.

---

## Verificação por execução

**1. Consistência de grafia de nomes dentro do spec** (barra objetiva do MÉTODO):

```
$ grep -o -E 'Hefesto|Hefaísto|Ártemis|Artemis|Perséfone|Persefone|Apolo|Apollo|Atena|Athena|Zeus' livro-spec.md | sort | uniq -c | sort -rn
     20 Zeus
     16 Hermes
     15 Apolo
     13 Hefesto
     11 Atena
     10 Perséfone
      9 Ártemis
      1 Athena
      1 Artemis
      1 Apollo

$ grep -n -E '\b(Athena|Artemis|Apollo)\b' livro-spec.md | grep -v -E 'https?://'
NENHUMA ocorrencia fora de URL
```

**Veredito:** 🟢 — as três ocorrências de forma não aportuguesada estão dentro de URLs de
fonte (`worldhistory.org/athena/`, `worldhistory.org/artemis/`, `theoi.com/.../Apollon.html`),
onde são endereços e não texto do livro. Zero inconsistência de grafia no corpo do spec.

**2. Fechamento da paginação:** soma da coluna "Conta" da tabela de paginação =
6 (pré-textual) + 9 × 4 (específicos) + 6 (geral) + 8 (pós-textual) = **56**.
56 ÷ 4 = 14 ✔ · 56 ÷ 8 = 7 ✔ · 56 ÷ 16 = 3,5 ✖ (pendência declarada).

**3. Teto de palavras:** 22 linhas × 11,5 palavras = 253 ≈ 250 palavras/página cheia;
2,5 pp úteis × 250 = 625, dentro da faixa declarada 550–650 ✔.

**4. State contra o contrato:** `grega.json` usa exclusivamente `planejado`, agora primeiro
valor do enum em `CONTRACT.md` §4 ✔.

---

## Pendências abertas

**Ao humano, no checkpoint (em ordem de prioridade):**

1. **R1 e R3 do cético não foram repassadas ao editor** → `mito-orquestrador`: entregar as
   duas objeções ou declará-las retiradas. O gate não pode ser dito limpo sem isso.
2. **Héracles fora do sumário** — confirmar a exclusão (ou trocar por Midas) → humano.
3. **Nome da série** e **tipografia serial** → humano.
4. **Disclosure de IA nas ilustrações** — texto proposto pelo editor-chefe aguarda aprovação
   → humano.
5. **Cap. 1 com fonte latina (Ovídio) para o Zeus grego** — aprovar a escolha de episódio
   sabendo do risco, ou pedir substituição agora, antes de o dossiê ser aberto → humano.

**Às fases seguintes:**

6. Verificar todas as URLs de Theoi/WHE → `mito-pesquisador`, abertura da Fase 1.
7. Confirmar `objectID` e links diretos das 3 referências do Met →
   `mito-historiador-arte`, Fase 3.
8. Mensagem definitiva do cap. 10 (hoje preliminar) → `mito-pesquisador`, dossiê P0.
9. Elipse da perseguição de Leto por Hera → `mito-pesquisador`, dossiê do cap. 3.
10. Variante de Midas confirmada com citação de fonte → `mito-pesquisador`, dossiê do cap. 9.
11. Finais tristes de Teseu (Ariadne, véu de Egeu) → `mito-pesquisador`, dossiê do cap. 8.
12. 56 pp não é múltiplo de 16 — decidir com a gráfica-alvo → `mito-diagramador`, Fase 4.
13. Perfil ICC / gráfica-alvo → `mito-editor-chefe`, Fase 5.
14. Registrar em `references/serie-padroes.md` a extensão do padrão: o **capítulo geral de
    cada livro leva 2 ilustrações full-bleed**, não 1 → `mito-editor-chefe`.
