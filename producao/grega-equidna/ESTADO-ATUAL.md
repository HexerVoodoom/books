# Estado do livro — *Equidna e as portas do mundo* (`grega-equidna`)

> ## ▶ PARA RETOMAR: uma ação, e é do dono
>
> **Feche e reabra o Chrome.** Depois disso, os 5 passos mecânicos no fim do
> `diagramacao/build.log` fecham o livro.
>
> Nada se perde ao reiniciar: as conversas do Gemini ficam no servidor, e as 7 peças que faltam
> têm prompt pronto. A Esfinge já está gerada e esperando em `e18660aafee4dada`.
>
> **Por que não reiniciei eu mesmo:** é o navegador do dono e a hipótese do gerenciador travado
> é a melhor que tenho, **não** um fato provado — as três causas que eu podia testar já foram
> eliminadas (permissão, espaço no destino, degradação de aba). Reiniciar o Chrome de outra
> pessoa com base em palpite fecharia as abas dela por uma aposta minha.

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

### ⚠️ CORREÇÃO — a hipótese do disco NÃO se confirmou

Verificado nas Preferências do Chrome, depois de escrever a seção abaixo:

- **`download.default_directory` = `E:\dowload`** — e o E: tem **91 GB livres**. O destino
  não está sem espaço.
- **`prompt_for_download` não está setado** — não há diálogo "onde salvar" travando.
- **A permissão de download automático ESTÁ concedida**, tanto para `gemini.google.com` quanto
  para `lh3.googleusercontent.com` (`setting: 1` = permitir). O dono resolveu isso na sessão 1 e
  continua valendo.

Ou seja: **destino com espaço, permissão concedida, sem diálogo nativo — e ainda assim nada cai.**

**Hipótese mais provável agora: o gerenciador de downloads do Chrome travou.** Bate com o
comportamento observado ao longo do run — o bloqueio **vai e volta sozinho**, sem ninguém mexer
em configuração nenhuma. É o estado interno do Chrome, não uma regra.

**Primeira coisa a tentar, e é barata: fechar e reabrir o Chrome.** As conversas do Gemini são
salvas no servidor — **nenhuma imagem se perde**, inclusive a Esfinge que está esperando.

**Segunda, independente disso: liberar espaço em C:** ele está a 100% (2,2 GB de 223 GB), o que
deixa o Windows instável mesmo sem ser a causa direta aqui. Medido: `Temp` tem só 170 MB e o
cache do Chrome 245 MB — juntos não resolvem. O peso está em
`AppData\Local\Google` (7,2 GB), `Packages` (4,2 GB), `Android` (4,0 GB) e `Roblox` (2,0 GB),
que são arquivos do dono e não cabe a esta squad mexer.

---

### Hipótese anterior (registrada, não confirmada) — disco C: cheio

    C:  223G total · 221G usados · **2,2G livres · 100%**
    E:  448G total · 357G usados · 91G livres · 80%

O Chrome **baixa para uma área temporária em `C:`** e só depois move o arquivo para
`E:\dowload`. Com o C: em 100%, ele aborta **em silêncio** — sem erro, sem `.crdownload`, sem
nada na barra de downloads. É exatamente o sintoma observado, e explica por que o problema **vai
e volta** sem ninguém mexer na permissão do Chrome.

**Não é** a proteção contra downloads automáticos (essa mordeu na sessão 1 e foi resolvida).
**Não é** degradação de aba (essa mordeu nas sessões 4 e 5 e se resolve fechando abas).

**O que fazer — liberar espaço em C:**
- Limpar `C:\Users\spera\AppData\Local\Temp`
- Limpar o cache do Chrome (`chrome://settings/clearBrowserData` → apenas *arquivos em cache*)
- Executar a Limpeza de Disco do Windows (`cleanmgr`), incluindo *Arquivos temporários* e
  *Arquivos de instalação anteriores do Windows*, se existirem

Alvo: **pelo menos 10–15 GB livres**. Assim que houver espaço, o download volta sozinho e a
Fase 3b retoma de onde parou — nenhuma imagem precisa ser regerada.

**Descartado como causa** (verificado):
- `chrome://settings/content/automaticDownloads` — já liberado pelo dono na sessão 1
- barra de downloads com prompt "Manter/Descartar" pendente — nenhuma aparece
- degradação de aba/CDP — testado com aba nova e limpa, o sintoma persiste

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
