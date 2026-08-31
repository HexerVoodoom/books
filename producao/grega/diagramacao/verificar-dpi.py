#!/usr/bin/env python3
"""Verifica o DPI efetivo de cada PNG em producao/grega/ilustracoes/ contra o
tamanho final exigido (21,1 x 21,1 cm @ 300 DPI = 2492 x 2492 px — spec da Fase 3).
Rodar sempre que novas ilustrações chegarem, antes de fechar o gate da Fase 4."""
import os, struct, sys

ILUS_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "ilustracoes")
ALVO_PX = 2492
TRIM_MAIS_SANGRIA_CM = 21.1

IDS = ["00-capa", "01-zeus-baucis-e-filemon", "02-atena-disputa-por-atenas",
       "03-leto-e-a-ilha", "04-hermes-o-gado-e-a-lira", "05-hefesto-o-trono-de-ouro",
       "06-demeter-e-persefone", "07-perseu-e-a-medusa", "08-teseu-e-o-minotauro",
       "09-midas-o-toque-de-ouro", "10a-do-caos-abertura", "10b-do-caos-os-libertados"]

def png_size(path):
    with open(path, "rb") as f:
        data = f.read(33)
    if data[:8] != b"\x89PNG\r\n\x1a\n":
        return None
    w, h = struct.unpack(">II", data[16:24])
    return w, h

def main():
    faltando, ok, baixa_res = [], [], []
    for id_ in IDS:
        path = os.path.join(ILUS_DIR, id_ + ".png")
        if not os.path.exists(path):
            faltando.append(id_)
            continue
        size = png_size(path)
        if not size:
            print(f"⚠️  {id_}: não é PNG válido")
            continue
        w, h = size
        dpi_efetivo = w / (TRIM_MAIS_SANGRIA_CM / 2.54)
        linha = f"{id_}: {w}x{h}px -> {dpi_efetivo:.0f} DPI efetivo"
        if w < ALVO_PX or h < ALVO_PX:
            baixa_res.append(linha)
        else:
            ok.append(linha)
    print(f"--- Verificação de DPI ({len(IDS)} ilustrações esperadas) ---")
    print(f"OK (>= {ALVO_PX}px / lado, >=300 DPI efetivo): {len(ok)}")
    for l in ok:
        print("  ✔", l)
    print(f"ABAIXO DO PISO: {len(baixa_res)}")
    for l in baixa_res:
        print("  ✘", l)
    print(f"FALTANDO (encaixe de produção ativo no PDF): {len(faltando)}")
    for f in faltando:
        print("  —", f)
    if baixa_res:
        sys.exit(1)

if __name__ == "__main__":
    main()
