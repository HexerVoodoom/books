# Books — Coleção de livros infantis de mitologia

Série de livros infantis ilustrados sobre as mitologias do mundo (grega, nórdica, egípcia,
brasileira, mesopotâmica, hindu…), para crianças de 4 a 7 anos — com dupla audiência: o
adulto que lê junto também precisa gostar.

A produção é conduzida pela **SQUAD-Mitologia**, uma squad editorial de 15 agentes
instanciada a partir da SQUAD-Alpha (repo `Core`).

## Como usar

```
/squad-mitologia start grega     # abre o run de um livro novo
/squad-mitologia status          # estado do run atual
/squad-mitologia resume          # retoma de onde parou
```

- Método, fases e gates: `.claude/skills/squad-mitologia/{SKILL,CONTRACT,METODO}.md`
- Banco de referências (fontes de pesquisa, acervos de imagem, estilo, pipeline de
  impressão, padrões da série): `.claude/skills/squad-mitologia/references/`
- Agentes: `.claude/agents/mito-*.md`
- Artefatos de produção: `producao/<slug-do-livro>/`

## Roster (resumo)

| Área | Agentes |
|---|---|
| Orquestração | mito-orquestrador |
| Pesquisa & verdade | mito-pesquisador · mito-historiador-arte · mito-fidelidade · mito-sensibilidade-cultural |
| Texto | mito-escritor · mito-editor · mito-revisor · mito-adequacao-etaria |
| Ilustração | mito-diretor-arte (conceito/validação) · mito-ilustrador (execução IA) |
| Produção | mito-diagramador (Typst→PDF/X) · mito-editor-chefe (publicação) |
| Adversariais | mito-cetico · mito-critico-tom |
