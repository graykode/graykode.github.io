#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$REPO_ROOT/cv/main.typ"
OUT="$REPO_ROOT/static/media/resume.pdf"
ALSO="$REPO_ROOT/cv/tae_hwan_jung_cv.pdf"

mkdir -p "$(dirname "$OUT")"

typst compile "$SRC" "$OUT"
cp "$OUT" "$ALSO"

echo "✓ CV built → $OUT"
echo "✓ Copy    → $ALSO"
