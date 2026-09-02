#!/usr/bin/env bash
# Gera imagens-disponiveis.typ escaneando producao/grega/ilustracoes/.
# Rodar antes de cada `typst compile` — é assim que a troca de PNG entra no PDF
# sem tocar em miolo.typ.
set -euo pipefail
cd "$(dirname "$0")"
ILUS_DIR="../ilustracoes"
OUT="imagens-disponiveis.typ"

ids="00-capa 01-zeus-baucis-e-filemon 02-atena-disputa-por-atenas 03-leto-e-a-ilha 04-hermes-o-gado-e-a-lira 05-hefesto-o-trono-de-ouro 06-demeter-e-persefone 07-perseu-e-a-medusa 08-teseu-e-o-minotauro 09-midas-o-toque-de-ouro 10a-do-caos-abertura 10b-do-caos-os-libertados"

{
  echo "// GERADO por scan-imagens.sh — não editar à mão."
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
