#!/usr/bin/env python3
"""Upscale de pré-impressão (Fase 4/5) — `mito-diagramador`.

`references/estilo-ilustracao.md` §Resolução: o Gemini sai fixo em 2048x2048, abaixo
do piso de 300 DPI para o trim de 20,5 cm + 3 mm de sangria (2492 px). Upscale é
NECESSÁRIO e PERMITIDO, desde que declarado: ferramenta nomeada (Pillow,
`Image.resize(..., Image.LANCZOS)`), fator registrado por imagem e teto de 2x.
Acontece DEPOIS da aprovação do diretor de arte — não é "upscale disfarçado".

Regra que este script implementa e que a contagem de pixels sozinha não enxerga:
**decide-se pelo TAMANHO IMPRESSO, não pelo número de px.** Uma vinheta impressa em
16,9 cm já passa de 300 DPI com 2048 px e NÃO deve ser esticada só para bater número.

O original aprovado nunca é destruído: vai para `ilustracoes/originais/<id>.png`
antes de qualquer escrita (e, se já estiver lá, é ele a fonte do upscale — rodar
duas vezes não empilha interpolação).

Uso:  python upscale-preimpressao.py [--dry-run]
"""
import os, sys, shutil
from PIL import Image

AQUI = os.path.dirname(os.path.abspath(__file__))
ILUS = os.path.join(AQUI, "..", "ilustracoes")
ORIG = os.path.join(ILUS, "originais")

DPI_ALVO = 300
TETO_FATOR = 2.0

# id -> largura impressa em cm (a mesma que miolo.typ usa na página)
#   full-bleed = 21,10 cm (trim 20,5 + 2 x 3 mm de sangria)
#   vinhetas   = tamanho declarado no miolo
TAMANHO_IMPRESSO_CM = {
    "01-equidna-a-caverna-e-as-portas": 21.10,
    "02-dragao-da-colquida":            21.10,
    "03-ortro-o-turno-de-trabalho":     21.10,
    "04-ladon-e-o-pedido-da-almofada":  21.10,
    "05-a-pergunta-da-esfinge":         21.10,
    "06-o-leao-antes":                  21.10,
    "07-cerbero-o-abraco-sem-armas":    21.10,
    "08a-tifao":                        21.10,
    "08b-o-retrato-de-origem":          21.10,
    "06v1-as-duas-bocas":                2.40,
    "06v2-a-pele":                       4.40,
    "08c-a-caverna-final":              16.90,
}


def px_necessarios(cm):
    return int(round(DPI_ALVO * cm / 2.54))


def main():
    dry = "--dry-run" in sys.argv
    os.makedirs(ORIG, exist_ok=True)
    print(f"--- Upscale de pré-impressão · Pillow {Image.__version__ if hasattr(Image,'__version__') else ''} "
          f"· filtro LANCZOS · alvo {DPI_ALVO} DPI · teto {TETO_FATOR}x ---")
    tocados = pulados = ausentes = 0
    for id_, cm in TAMANHO_IMPRESSO_CM.items():
        atual = os.path.join(ILUS, id_ + ".png")
        guardado = os.path.join(ORIG, id_ + ".png")
        fonte = guardado if os.path.exists(guardado) else atual
        if not os.path.exists(fonte):
            print(f"  —  {id_}: ausente (placeholder de encaixe ativo)")
            ausentes += 1
            continue
        with Image.open(fonte) as im:
            w, h = im.size
            alvo = px_necessarios(cm)
            dpi_atual = w / (cm / 2.54)
            if w >= alvo:
                print(f"  ✔  {id_}: {w}x{h} em {cm:.2f} cm = {dpi_atual:.0f} DPI "
                      f"— JÁ PASSA de {DPI_ALVO}, NÃO upscalado")
                pulados += 1
                continue
            fator = alvo / w
            if fator > TETO_FATOR:
                print(f"  ✘  {id_}: fator {fator:.4f}x acima do teto {TETO_FATOR}x — "
                      f"NÃO upscalado, precisa de regeração")
                continue
            print(f"  ↑  {id_}: {w}x{h} ({dpi_atual:.0f} DPI) -> {alvo}x{alvo} ({DPI_ALVO} DPI) "
                  f"| fator {fator:.4f}x | Pillow Image.resize LANCZOS | impresso a {cm:.2f} cm")
            if dry:
                continue
            if not os.path.exists(guardado):
                shutil.copy2(atual, guardado)
            im.convert("RGB").resize((alvo, alvo), Image.LANCZOS).save(atual, "PNG", optimize=True)
            tocados += 1
    print(f"--- upscalados: {tocados} · já acima do piso: {pulados} · ausentes: {ausentes} ---")
    if not dry:
        print(f"originais aprovados preservados em {os.path.normpath(ORIG)}")


if __name__ == "__main__":
    main()
