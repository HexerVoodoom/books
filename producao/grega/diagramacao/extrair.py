#!/usr/bin/env python3
"""Extrai conteúdo final dos capítulos e do aparato para arquivos .typ parciais.

⚠️ ORDEM OBRIGATÓRIA (livro-spec.md R6.3 · ver README.md deste diretório):
    ESTE SCRIPT SÓ RODA DEPOIS DE O GATE DA ONDA ESTAR ESCRITO E FECHADO.
    A fonte é sempre capitulos/*.md; conteudo/*.json é cópia congelada e envelhece em
    silêncio. Na onda P4 o capitulos.json tinha congelado uma frase que o gate de tom
    havia proibido, porque a extração rodou antes da edição. Se você está rodando isto
    "para adiantar", pare: adiantar é exatamente o que produziu o erro.

Transcrição literal — nenhuma palavra é alterada. Único trabalho de conversão:
markdown ** bold ** -> typst *bold*, markdown *italic* -> typst _italic_,
e remoção de linhas de metadado editorial (não destinadas à página impressa).
"""
import re, glob, os, json

import pathlib
_ROOT = pathlib.Path(__file__).resolve().parents[3]
BASE = str(_ROOT / "producao" / "grega" / "capitulos")
OUT = str(_ROOT / "producao" / "grega" / "diagramacao" / "conteudo")
os.makedirs(OUT, exist_ok=True)

def md_to_typ(s):
    # bold ** -> *
    s = re.sub(r'\*\*(.+?)\*\*', r'*\1*', s)
    # italic single * -> _..._
    s = re.sub(r'\*(.+?)\*', r'_\1_', s)
    return s

def paragraphs(block):
    # separa por linha em branco, preserva parágrafos e falas; junta quebras de linha internas
    # (wrap do markdown-fonte); remove o marcador "> " de blockquote linha a linha.
    out = []
    for p in block.split('\n\n'):
        lines = [re.sub(r'^>\s?', '', ln).strip() for ln in p.strip().split('\n')]
        joined = ' '.join(l for l in lines if l)
        if joined:
            out.append(re.sub(r' {2,}', ' ', joined))
    return out

chapters = []
for f in sorted(glob.glob(os.path.join(BASE, "0*.md"))) + [os.path.join(BASE, "10-do-caos-ao-olimpo.md")]:
    slug = os.path.basename(f)[:-3]
    num = slug[:2]
    t = open(f, encoding='utf-8').read()
    title = re.search(r'^# Capítulo \d+ — (.+)$', t, re.M).group(1).strip()

    texto = re.search(r'## Texto\n(.*?)\n## Você sabia\?', t, re.S).group(1)
    box_raw = re.search(r'## Você sabia\?\n(.*?)\n## Cena da ilustração', t, re.S).group(1)
    # remove o(s) parágrafo(s) de rodapé editorial (bloco que começa com "> " no fonte —
    # a contagem de palavras/fontes do box, não destinado à página impressa)
    box_blocks_raw = [p for p in box_raw.split('\n\n') if p.strip()]
    box_paras = [paragraphs(p)[0] for p in box_blocks_raw if not p.strip().startswith('>') and paragraphs(p)]

    gloss_m = re.search(r'## Termos para o glossário\n(.*?)\n## Notas', t, re.S)
    gloss_items = []
    if gloss_m:
        for line in gloss_m.group(1).split('\n'):
            line = line.strip()
            if line.startswith('- '):
                gloss_items.append(line[2:])
            elif line and gloss_items:
                # continuação de item (linha quebrada), junta ANTES de converter markdown
                # (senão um **negrito**/_itálico_ partido em duas linhas não fecha)
                gloss_items[-1] += ' ' + line
        gloss_items = [re.sub(r' {2,}', ' ', md_to_typ(g)) for g in gloss_items]

    chapters.append({
        "num": num, "slug": slug, "title": md_to_typ(title),
        "texto_paras": [md_to_typ(p) for p in paragraphs(texto)],
        "box_paras": [md_to_typ(p) for p in box_paras],
        "gloss": gloss_items,
    })

with open(os.path.join(OUT, "capitulos.json"), "w", encoding='utf-8') as fh:
    json.dump(chapters, fh, ensure_ascii=False, indent=2)

# ---- Aparato (apêndices, pp. 51-53) ----
ap = open(os.path.join(BASE, "apendices.md"), encoding='utf-8').read()

fontes_m = re.search(r'## p\.? ?51.{0,6}· De onde vêm estas histórias\n(.*?)\n---', ap, re.S)
fontes_block = fontes_m.group(1)
# parágrafos em itálico introdutório + entradas por capítulo (1. **Título.** texto) + "Para ler mais"
fontes_paras = [md_to_typ(p) for p in paragraphs(fontes_block)]

perguntas_m = re.search(r'## pp\. 52–53 · Perguntas que as crianças fazem\n(.*?)\n### O que mudamos', ap, re.S)
perguntas_block = perguntas_m.group(1)

mudamos_m = re.search(r'### O que mudamos, e por quê\n(.*?)$', ap, re.S)
mudamos_block = mudamos_m.group(1)
mudamos_items = [md_to_typ(l.strip()[2:]) for l in mudamos_block.split('\n') if l.strip().startswith('- ')]

def split_by_h3(block):
    # separa a introdução (antes do primeiro "### ") das subseções por capítulo
    first = block.find('\n### ')
    intro_raw = block[:first] if first != -1 else block
    rest_raw = block[first:] if first != -1 else ""
    intro = [md_to_typ(p) for p in paragraphs(intro_raw)]
    parts = re.split(r'\n### ', rest_raw)
    out = []
    for p in parts:
        p = p.strip()
        if not p:
            continue
        head, _, rest = p.partition('\n')
        out.append((md_to_typ(head.strip()), [md_to_typ(x) for x in paragraphs(rest)]))
    return intro, out

fontes_intro = paragraphs(fontes_block.split('\n\n## ')[0])
# fontes_block already only up to next '---'; separate leading italic intro then numbered entries then "### Para ler mais"
parts = re.split(r'\n### Para ler mais.*?\n', fontes_block, flags=re.S)
fontes_entries_raw = parts[0]
para_ler_mais_raw = parts[1] if len(parts) > 1 else ""

fontes_entries = [md_to_typ(p) for p in paragraphs(fontes_entries_raw)]
para_ler_mais = [md_to_typ(p) for p in paragraphs(para_ler_mais_raw)]

perguntas_intro, perguntas_sections = split_by_h3(perguntas_block)

aparato = {
    "fontes_entries": fontes_entries,
    "para_ler_mais": para_ler_mais,
    "perguntas_intro": perguntas_intro,
    "perguntas_sections": [{"titulo": h, "paras": ps} for h, ps in perguntas_sections],
    "mudamos": mudamos_items,
}
with open(os.path.join(OUT, "aparato.json"), "w", encoding='utf-8') as fh:
    json.dump(aparato, fh, ensure_ascii=False, indent=2)

print("Capítulos extraídos:", [c["num"] for c in chapters])
print("Fontes entries:", len(fontes_entries), "| Para ler mais paras:", len(para_ler_mais))
print("Perguntas seções:", len(perguntas_sections))
print("Mudamos itens:", len(mudamos_items))
