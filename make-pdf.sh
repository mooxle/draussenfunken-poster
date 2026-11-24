#!/usr/bin/env bash
# Erzeugt aus allen Postern in poster/ je eine A4-PDF in pdf/ (braucht Google Chrome oder Chromium).
set -euo pipefail
cd "$(dirname "$0")"

CHROME="${CHROME:-}"
if [ -z "$CHROME" ]; then
  for c in "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" google-chrome chromium chromium-browser; do
    if command -v "$c" >/dev/null 2>&1 || [ -x "$c" ]; then CHROME="$c"; break; fi
  done
fi
[ -n "$CHROME" ] || { echo "Chrome/Chromium nicht gefunden – Pfad per CHROME=… setzen." >&2; exit 1; }

mkdir -p pdf
for f in poster/*.html; do
  name="$(basename "$f" .html)"
  [ "$name" = "index" ] && continue
  "$CHROME" --headless=new ${CHROME_FLAGS:-} --disable-gpu --no-pdf-header-footer --virtual-time-budget=5000 \
    --print-to-pdf="pdf/$name.pdf" "file://$PWD/$f" 2>/dev/null
  echo "pdf/$name.pdf"
done
