#!/usr/bin/env python3
"""Monta miolo.typ a partir de conteudo/capitulos.json e conteudo/aparato.json.
Nenhum texto é reescrito aqui — apenas concatenado/formatado em marcação Typst."""
import json, os

HERE = os.path.dirname(os.path.abspath(__file__))
CONT = os.path.join(HERE, "conteudo")
chapters = json.load(open(os.path.join(CONT, "capitulos.json"), encoding="utf-8"))
aparato = json.load(open(os.path.join(CONT, "aparato.json"), encoding="utf-8"))
by_num = {c["num"]: c for c in chapters}

# ---------- configuração de anatomia por capítulo (livro-spec Rev.5, R4.1) ----------
# split_at: lista de metas de palavras (int) para dividir texto ANTES da(s) imagem(ns)
#           intermediária(s); None = sem split, o texto flui inteiro antes da imagem final.
CHAPTERS_CFG = {
    "01": dict(bloco="7–10", fb=[("p. 10", "01-zeus-baucis-e-filemon",
        "Baucis e Filêmon de mãos dadas na encosta; a choupana virando templo ao fundo; "
        "Zeus e Hermes revelados em luz; o ganso branco vivo.")], split_at=None),
    "02": dict(bloco="11–14", fb=[("p. 14", "02-atena-disputa-por-atenas",
        "Atena e Posêidon diante do rochedo da Acrópole; a oliveira brotando ao lado da "
        "fonte salgada; Cécrops testemunha; o povo em silhueta.")], split_at=None),
    "03": dict(bloco="15–18", fb=[("p. 18", "03-leto-e-a-ilha",
        "Delos ancorada entre ondas; Leto abraçada à palmeira; os gêmeos Ártemis e Apolo "
        "recém-nascidos; dupla luz sem astros.")], split_at=None),
    "04": dict(bloco="19–22", fb=[("p. 22", "04-hermes-o-gado-e-a-lira",
        "O bebê Hermes entregando a lira de casco de tartaruga a Apolo, à beira do rio Alfeu.")],
        split_at=None),
    "05": dict(bloco="23–26", fb=[("p. 24", "05-hefesto-o-trono-de-ouro",
        "Hera no trono de ouro flutuando; Hefesto entrando com o martelo, ainda sem "
        "estender a mão; Dioniso e Ares ao fundo.")], split_at=[150]),
    "06": dict(bloco="27–30", fb=[("p. 30", "06-demeter-e-persefone",
        "Perséfone abraçada a Deméter, os pés ainda no ar; flores abrindo a partir do abraço.")],
        split_at=None),
    "07": dict(bloco="31–34", fb=[("p. 32", "07-perseu-e-a-medusa",
        "Perseu de costas, olhando o reflexo da Medusa adormecida no escudo-espelho; a "
        "foice de adamante ainda baixa.")], split_at=[150]),
    "08": dict(bloco="35–38", fb=[("p. 36", "08-teseu-e-o-minotauro",
        "Teseu no coração do Labirinto, o fio na mão; a sombra do Minotauro projetada na "
        "parede.")], split_at=[150]),
    "09": dict(bloco="39–42", fb=[("p. 40", "09-midas-o-toque-de-ouro",
        "Midas à mesa farta, o pão já virado ouro pálido a meio caminho da boca.")],
        split_at=[140]),
    "10": dict(bloco="43–48", fb=[
        ("p. 44", "10a-do-caos-abertura",
         "Gaia emergindo da terra até a cintura; Urano como o céu estrelado arqueado sobre ela."),
        ("p. 46", "10b-do-caos-os-libertados",
         "Zeus, Posêidon e Hades libertando os Ciclopes e os Cem-Mãos; o raio recém-forjado, "
         "ainda quente."),
    ], split_at=[170, 330]),
}

def split_paragraphs(paras, targets):
    """Divide a lista de parágrafos em len(targets)+1 blocos, cortando no parágrafo mais
    próximo de cada meta de palavras acumuladas."""
    words = [len(p.split()) for p in paras]
    cum = []
    tot = 0
    for w in words:
        tot += w
        cum.append(tot)
    chunks = []
    start = 0
    for target in targets:
        # acha o índice cujo cumulativo mais se aproxima do alvo (sem passar muito longe)
        best_i = min(range(start, len(paras)), key=lambda i: abs(cum[i] - target))
        chunks.append(paras[start:best_i + 1])
        start = best_i + 1
    chunks.append(paras[start:])
    return chunks

def esc(s):
    return s  # já convertido para marcação Typst por extrair.py

def paras_to_typ(paras):
    return "\n\n".join(esc(p) for p in paras)

def chapter_block(c, cfg):
    out = []
    title = c["title"]
    num_arabic = int(c["num"])
    out.append(f'#chapter-title(numero: {num_arabic}, titulo: "{title}")')
    out.append("")
    paras = c["texto_paras"]
    fb_list = cfg["fb"]
    split_at = cfg["split_at"]
    if split_at is None:
        chunks = [paras]
    else:
        chunks = split_paragraphs(paras, split_at)
    # intercala chunks de texto com páginas de imagem, exceto a ÚLTIMA imagem do
    # default (anatomia padrão), que vem DEPOIS de todo o texto (incl. box + glossário)
    if len(chunks) == len(fb_list):
        # default: todas as imagens vêm depois do bloco de texto completo (p4, ou pA/pB do cap.10
        # quando ambas ficam ao final — não é o caso de nenhum capítulo aqui, mantido por generalidade)
        out.append(paras_to_typ(chunks[0]))
        out.append("")
        out.append(box_and_gloss(c))
        for label, imgid, desc in fb_list:
            out.append("#pagebreak()")
            out.append(f'#fullbleed("{imgid}", "{label}", [{desc}])')
        out.append("#pagebreak()")
    else:
        # exceção: chunks[0] é a abertura (antes da 1ª imagem); demais chunks intercalam
        # com as imagens restantes; o ÚLTIMO chunk carrega box + glossário no final.
        for i, (label, imgid, desc) in enumerate(fb_list):
            out.append(paras_to_typ(chunks[i]))
            out.append("")
            out.append("#pagebreak()")
            out.append(f'#fullbleed("{imgid}", "{label}", [{desc}])')
            out.append("#pagebreak()")
        out.append(paras_to_typ(chunks[-1]))
        out.append("")
        out.append(box_and_gloss(c))
    return "\n".join(out)

def box_and_gloss(c):
    box = paras_to_typ(c["box_paras"])
    gloss_items = "\n".join(f"- {g}" for g in c["gloss"])
    return f'''
#voce-sabia[
{box}
]

#glossario-do-capitulo[
{gloss_items}
]
'''

# ---------------- monta o corpo dos 10 capítulos ----------------
chapters_typ = []
for num in sorted(CHAPTERS_CFG):
    c = by_num[num]
    cfg = CHAPTERS_CFG[num]
    chapters_typ.append(chapter_block(c, cfg))
    chapters_typ.append("#pagebreak()")

CHAPTERS_TYP = "\n\n".join(chapters_typ)

# ---------------- glossário geral (pp. 49-50): reaproveita os verbetes de todos os caps ----------------
gloss_all = []
for num in sorted(by_num):
    c = by_num[num]
    for g in c["gloss"]:
        gloss_all.append(g)
GLOSSARIO_GERAL = "\n".join(f"- {g}" for g in gloss_all)

# ---------------- aparato pp.51-53 ----------------
FONTES_ENTRIES = "\n\n".join(esc(p) for p in aparato["fontes_entries"])
PARA_LER_MAIS = "\n\n".join(esc(p) for p in aparato["para_ler_mais"])
PERGUNTAS_INTRO = "\n\n".join(esc(p) for p in aparato["perguntas_intro"])
perguntas_secs = []
for sec in aparato["perguntas_sections"]:
    perguntas_secs.append(f"=== {sec['titulo']}\n\n" + "\n\n".join(esc(p) for p in sec["paras"]))
PERGUNTAS_SECOES = "\n\n".join(perguntas_secs)
MUDAMOS_LISTA = "\n".join(f"- {m}" for m in aparato["mudamos"])

TEMPLATE = open(os.path.join(HERE, "miolo-template.typ"), encoding="utf-8").read()
subs = {
    "@@CHAPTERS@@": CHAPTERS_TYP,
    "@@GLOSSARIO_GERAL@@": GLOSSARIO_GERAL,
    "@@FONTES_ENTRIES@@": FONTES_ENTRIES,
    "@@PARA_LER_MAIS@@": PARA_LER_MAIS,
    "@@PERGUNTAS_INTRO@@": PERGUNTAS_INTRO,
    "@@PERGUNTAS_SECOES@@": PERGUNTAS_SECOES,
    "@@MUDAMOS_LISTA@@": MUDAMOS_LISTA,
}
out = TEMPLATE
for k, v in subs.items():
    out = out.replace(k, v)
open(os.path.join(HERE, "miolo.typ"), "w", encoding="utf-8").write(out)
print("miolo.typ gerado:", len(out), "bytes")
