#!/usr/bin/env bash
# Gera imagens-disponiveis.typ escaneando producao/grega-equidna/ilustracoes/.
# Rodar antes de cada `typst compile` — é assim que a troca de PNG entra no PDF
# sem tocar em miolo.typ. Ids = os 12 chamados por miolo.typ (9 fullbleed + 3 vinhetas).
set -euo pipefail
cd "$(dirname "$0")"
ILUS_DIR="../ilustracoes"
OUT="imagens-disponiveis.typ"

ids="01-equidna-a-caverna-e-as-portas 02-dragao-da-colquida 03-ortro-o-turno-de-trabalho 04-ladon-e-o-pedido-da-almofada 05-a-pergunta-da-esfinge 06-o-leao-antes 06v1-as-duas-bocas 06v2-a-pele 07-cerbero-o-abraco-sem-armas 08a-tifao 08b-o-retrato-de-origem 08c-a-caverna-final"

{
  echo "// GERADO por scan-imagens.sh — não editar à mão."
  echo "// true = a imagem entra na página · false = placeholder de encaixe"
  echo "#let imagens-disponiveis = ("
  for id in $ids; do
    f="$ILUS_DIR/$id.png"
    if [ -f "$f" ]; then
      echo "  \"$id\": true,"
    else
      echo "  \"$id\": false,"
    fi
  done
  echo ")"
} > "$OUT"

echo "Gerado $OUT:"
cat "$OUT"
