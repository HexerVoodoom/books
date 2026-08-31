# Diagramação — Grécia · como o conteúdo chega aqui

## ⚠️ Regra 1, acima de todas: **a extração é SEMPRE posterior ao gate**

`extrair.py` **não é fonte**. A fonte é `producao/grega/capitulos/*.md`. Este diretório contém
uma **cópia congelada** do texto, e uma cópia congelada envelhece em silêncio.

**Rode `extrair.py` somente depois de o gate da onda estar escrito e fechado.**

Isto não é zelo: aconteceu. Na onda P4, `conteudo/capitulos.json` tinha congelado a frase
*"Mas isso é outro capítulo, e você já leu"* — que o parecer de tom **proibiu** e o gate
cortou. O `.json` estava certo em relação ao `.md` do dia em que rodou, e errado em relação ao
livro. Se o PDF tivesse ido para a gráfica a partir dele, teria ido com uma frase reprovada.

Regra fechada em `livro-spec.md`, **R6.3**.

### Ordem correta de operações, a cada onda

1. `mito-editor` aplica os pareceres em `capitulos/*.md` e em `capitulos/apendices.md`.
2. `mito-editor` escreve `escrita/gate-onda-<N>.md`. **O gate fecha.**
3. **Só então:** `python3 producao/grega/diagramacao/extrair.py`
4. `python3 gerar_typst.py` · `typst compile miolo.typ`
5. Conferir contra as contagens declaradas no gate — não contra as do dia anterior.

### Como saber se a cópia está velha

```
python3 producao/grega/diagramacao/extrair.py   # reextrai
git diff --stat producao/grega/diagramacao/conteudo/
```
Diff vazio = a cópia estava em dia. Diff não vazio = ela **não** estava, e qualquer PDF
compilado antes desta linha está desatualizado.

## Vinculantes de página que vêm do texto (não são preferências)

- **Cap. 10, p. 47:** a linha *"Depois saíram os cinco — Hera, Hades, Posêidon e as duas irmãs
  — inteiros e vivos"* cai no **alto da p. 47**, nunca no pé da página anterior. Única
  restrição de quebra do livro (`livro-spec.md` R6.4).
- **Aparato:** fontes + bibliografia na **p. 51** · "Perguntas que as crianças fazem" nas
  **pp. 52–53** · glossário nas **pp. 49–50**. A colisão antiga ("pp. 51–52" × "pp. 52–53") foi
  resolvida na Rev. 6; qualquer texto antigo que diga "pp. 51–52" **lê-se p. 51**.
- **Colofão (p. 54):** tem de receber o parágrafo de consulta na internet (Theoi, World History
  Encyclopedia) e o crédito do acervo Open Access do Metropolitan Museum, **descidos da p. 51**
  na onda P4 por falta de caixa. Eles não foram cortados do livro.

## Prova de composição

Antes de fechar qualquer página de aparato, ver `escrita/prova-composicao/*.typ` e a tabela de
ocupação medida em `livro-spec.md` **R6.2**. Números medidos (Typst 0.15.1, 9,5/12 pt, 2
colunas, caixa 16,9 × 16,5 cm): glossário **1,73 pp** · fontes **0,84 p** · perguntas
**1,89 pp**.
