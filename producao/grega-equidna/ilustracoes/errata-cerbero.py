"""Errata de edição do 07-cerbero (§34 da curadoria).

Apaga 7 marcas de rosto (olhos, narinas, focinhos) dentro do scrollwork da gola,
mais o olho da cauda-dragão. NÃO toca em orelhas nem em linhas de contorno — sem
olho e sem narina a forma deixa de ler como rosto e passa a ler como palmeta.

Método (do parecer): mediana de um anel de 6 px em volta da caixa, restrito aos
pixels mais claros que a marca; preenche; GaussianBlur(2) no retalho; compõe com
máscara elíptica com feather ~3 px.
"""
import os
import statistics
from PIL import Image, ImageDraw, ImageFilter

BASE = r"E:\books\producao\grega-equidna\ilustracoes"
SRC = os.path.join(BASE, "07-cerbero-o-abraco-sem-armas-C-r3.png")
DST = os.path.join(BASE, "07-cerbero-o-abraco-sem-armas-D-REF.png")

# (x0, y0, x1, y1, amostra_x, amostra_y, rotulo)
MARCAS = [
    (1767, 1024, 1793, 1048, 1770, 1062, "olho da cauda-dragao"),
    (1283,  412, 1311,  438, 1270,  455, "olho topo"),
    (1360,  432, 1392,  460, 1352,  470, "narina topo"),
    (1450,  598, 1494,  634, 1440,  650, "olho meio"),
    (1514,  660, 1554,  702, 1500,  660, "focinho meio"),
    (1468,  843, 1504,  892, 1455,  900, "olho baixo"),
    (1496,  940, 1538,  980, 1490,  930, "focinho baixo"),
]

ANEL = 3
FEATHER = 3


def luminancia(p):
    return 0.2126 * p[0] + 0.7152 * p[1] + 0.0722 * p[2]


def cor_do_anel(im, box, amostra):
    """Mediana do anel imediato em volta da caixa.

    A 1ª versão restringia aos pixels *mais claros que a marca*; como a marca é
    um olho escuro, quase tudo passava no filtro e a mediana ia para quase-branco,
    deixando manchas visíveis. Aqui a mediana é do anel inteiro, que devolve o
    meio-tom local da aquarela.
    """
    x0, y0, x1, y1 = box
    px = im.load()

    candidatos = []
    for x in range(max(0, x0 - ANEL), min(im.width, x1 + ANEL)):
        for y in range(max(0, y0 - ANEL), min(im.height, y1 + ANEL)):
            if x0 <= x < x1 and y0 <= y < y1:
                continue
            candidatos.append(px[x, y])

    if not candidatos:
        return px[amostra[0], amostra[1]]

    return tuple(
        int(statistics.median([c[i] for c in candidatos])) for i in range(3)
    )


def main():
    im = Image.open(SRC).convert("RGB")
    print(f"origem: {im.size}")

    for x0, y0, x1, y1, ax, ay, rotulo in MARCAS:
        cor = cor_do_anel(im, (x0, y0, x1, y1), (ax, ay))

        # retalho preenchido com a cor do anel, suavizado
        margem = FEATHER * 2
        cx0, cy0 = x0 - margem, y0 - margem
        cx1, cy1 = x1 + margem, y1 + margem
        retalho = im.crop((cx0, cy0, cx1, cy1)).copy()
        d = ImageDraw.Draw(retalho)
        d.rectangle(
            [margem, margem, retalho.width - margem, retalho.height - margem],
            fill=cor,
        )
        retalho = retalho.filter(ImageFilter.GaussianBlur(radius=3))

        # máscara elíptica com feather
        mask = Image.new("L", retalho.size, 0)
        md = ImageDraw.Draw(mask)
        md.ellipse(
            [margem // 2, margem // 2,
             retalho.width - margem // 2, retalho.height - margem // 2],
            fill=255,
        )
        mask = mask.filter(ImageFilter.GaussianBlur(radius=FEATHER))

        im.paste(retalho, (cx0, cy0), mask)
        print(f"  apagado: {rotulo:24s} cor do anel {cor}")

    im.save(DST, "PNG")
    ok = open(DST, "rb").read(4) == b"\x89PNG"
    print(f"gravado: {os.path.basename(DST)}  PNG real={ok}  {Image.open(DST).size}")


if __name__ == "__main__":
    main()
