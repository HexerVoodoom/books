#!/usr/bin/env python3
"""Verifica o DPI efetivo de cada ilustração de producao/grega-equidna/ilustracoes/
**pelo tamanho impresso real de cada uma**, não pela contagem de pixels.

Por que pelo tamanho impresso: uma full-bleed ocupa 21,10 cm (trim 20,5 + 2 × 3 mm de
sangria) e precisa de 2492 px para 300 DPI; a vinheta da p. 40 é impressa em 16,90 cm e
passa de 300 DPI com os 2048 px nativos do Gemini. Medir por px trataria as duas iguais
e mandaria esticar a vinheta à toa.

A tabela de tamanhos vem de `upscale-preimpressao.py` — fonte única.
Rodar sempre que novas ilustrações chegarem, antes de fechar o gate da Fase 4/5.
"""
import os, struct, sys, importlib.util

_AQUI = os.path.dirname(os.path.abspath(__file__))
_spec = importlib.util.spec_from_file_location(
    "upscale_preimpressao", os.path.join(_AQUI, "upscale-preimpressao.py"))
_mod = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(_mod)
TAMANHO_IMPRESSO_CM = _mod.TAMANHO_IMPRESSO_CM

ILUS_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "ilustracoes")
DPI_ALVO = 300


def png_size(path):
    with open(path, "rb") as f:
        data = f.read(33)
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        return None
    return struct.unpack(">II", data[16:24])


def main():
    faltando, ok, baixa = [], [], []
    for id_, cm in TAMANHO_IMPRESSO_CM.items():
        path = os.path.join(ILUS_DIR, id_ + ".png")
        if not os.path.exists(path):
            faltando.append(id_)
            continue
        size = png_size(path)
        if not size:
            print(f"AVISO {id_}: não é PNG válido")
            continue
        w, h = size
        dpi = w / (cm / 2.54)
        alvo_px = int(round(DPI_ALVO * cm / 2.54))
        linha = f"{id_}: {w}x{h}px impresso a {cm:.2f} cm -> {dpi:.0f} DPI (piso {alvo_px}px)"
        (ok if w >= alvo_px else baixa).append(linha)
    print(f"--- Verificação de DPI por tamanho impresso ({len(TAMANHO_IMPRESSO_CM)} esperadas) ---")
    print(f"OK (>= {DPI_ALVO} DPI no tamanho impresso): {len(ok)}")
    for l in ok:
        print("  [OK]", l)
    print(f"ABAIXO DO PISO: {len(baixa)}")
    for l in baixa:
        print("  [X] ", l)
    print(f"FALTANDO (encaixe de produção ativo no PDF): {len(faltando)}")
    for f in faltando:
        print("   - ", f)
    if baixa:
        sys.exit(1)


if __name__ == "__main__":
    main()
