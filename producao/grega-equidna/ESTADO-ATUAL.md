# Estado do livro — *Equidna e as portas do mundo* (`grega-equidna`)

**2026-09-02 · bloqueado na Fase 3b, aguardando o dono.**

## O que está PRONTO

| Fase | Estado |
|---|---|
| 0 · Fundação | ✅ aprovada — enquadramento, frase-fio, regra-de-luto, título |
| 1 · Pesquisa | ✅ aprovada — 8 dossiês, validados independentemente pelo `mito-fidelidade` |
| 2 · Escrita | ✅ aprovada — 8 capítulos (4.471 palavras), quarta capa, aparato completo |
| 3a · Direção de arte | ✅ aprovada — guia v2.5, 12 referências CC0 verificadas, 22 pacotes |
| 4 · Diagramação | 🟡 **antecipada** — miolo compila em **48 pp exatas**, fontes embutidas, mediabox 21,10 cm |
| 3b · Ilustração | 🔴 **6 de 12 posições** do miolo · capa aprovada |
| 5 · Publicação | ⏸ não iniciada (depende das imagens + perfil ICC) |

**Comando de build:** `typst compile --root .. miolo.typ miolo.pdf`
(o `--root ..` é obrigatório — sem ele falha em toda página com ilustração)

## Ilustrações

**Encaixadas no miolo (6):** `01` a caverna de Equidna · `02` o dragão da Cólquida ·
`03` Órtro e o gado vermelho · `04` Ladon e a almofada de Atlas · `06` o leão vivo (candidata) ·
`08c` a caverna final (p. 40).
**Capa:** ✅ aprovada, etiquetada *"aguardando teste com leitor real"*.
**Folhas de personagem aprovadas:** Equidna, Cérbero (5 candidatas até fechar), Leão de Nemeia.

**Faltam 6 peças:**
| peça | estado |
|---|---|
| `05` a pergunta da Esfinge | rodada 2 **gerada, presa no download**; o Gemini declarou desvio em 2 dos 4 redirecionamentos (asas espelhadas, câmera de frente) → provável rodada 3 |
| `07` o abraço em Cérbero | reprovada (cauda de boca aberta); prompt v3 pronto |
| `08a` Tifão | prompt pronto |
| `08b` o retrato de origem | prompt pronto (Hidra e Quimera vivas — único lugar do livro) |
| `06v1` / `06v2` vinhetas | regra de proporção resolvida hoje; prompts a reescrever |
| `sheet-heracles` r3 | reprovou 2× por motivos opostos; se falhar, vai ao gate como está |

## 🔴 BLOQUEIO — só o dono resolve

**Os downloads do Chrome pararam.** Confirmado por teste direto: a imagem está renderizada, o
botão responde ao clique, e nenhum arquivo cai em `E:\dowload`. Sem erro, sem `.crdownload`.

Distinguir das três vezes anteriores: aquelas eram **degradação de aba/CDP** (7 abas abertas) e
foram resolvidas fechando abas. Esta persiste com **uma aba limpa**, recém-aberta.

**O que fazer:**
1. `chrome://settings/content/automaticDownloads` → permitir para `gemini.google.com`
2. Conferir a **barra de downloads** no rodapé do Chrome — prompt nativo "Manter/Descartar"
   para `.jfif` é invisível à extensão.

**Imagem esperando:** a Esfinge refeita, na conversa `e18660aafee4dada`
("Refining the Sphinx Illustration") — baixável sem regerar.

## Pendências do dono (não bloqueiam, mas o gate as cobra)

1. **Nomear a criança do teste de aceitação** — quem, que idade, quem aplica, onde se registra.
   Todo veredito de nomeação até aqui é **proxy declarado**. A capa depende disso para deixar de
   ser "aguardando teste com leitor real". Protocolo: pergunta **aberta** ("o que é isso?"), sem
   o texto, sem nomear o animal antes, sem alternativas.
2. **Perfil ICC da gráfica** — em aberto desde o livro 1; a Fase 5 precisa dele para o PDF/X.
   ⚠️ Armadilha registrada: o Ghostscript escreve um PDF de 1.207 bytes e **retorna exit 0**
   quando o ICC não existe. Conferir **tamanho**, nunca só o código de saída.
3. **48 páginas em vez de 56** — decisão de produto já tomada por delegação, reversível.
4. **Título** *Equidna e seus filhos* → *Equidna e as portas do mundo*, por fidelidade
   (o antigo declarava grau de parentesco, falso em 3 dos 8 capítulos). Reversível.
