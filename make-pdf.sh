#!/usr/bin/env bash
# Erzeugt aus allen Postern je eine A4-PDF (braucht Google Chrome oder Chromium):
#   poster/*.html    -> pdf/*.pdf      (Deutsch)
#   poster/en/*.html -> pdf/en/*.pdf   (English)
set -euo pipefail
cd "$(dirname "$0")"

CHROME="${CHROME:-}"
if [ -z "$CHROME" ]; then
  for c in "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" google-chrome chromium chromium-browser; do
    if command -v "$c" >/dev/null 2>&1 || [ -x "$c" ]; then CHROME="$c"; break; fi
  done
fi
[ -n "$CHROME" ] || { echo "Chrome/Chromium nicht gefunden – Pfad per CHROME=… setzen." >&2; exit 1; }

render() {  # $1 = source dir, $2 = target dir
  mkdir -p "$2"
  for f in "$1"/*.html; do
    name="$(basename "$f" .html)"
    [ "$name" = "index" ] && continue
    "$CHROME" --headless=new ${CHROME_FLAGS:-} --disable-gpu --no-pdf-header-footer --virtual-time-budget=5000 \
      --print-to-pdf="$2/$name.pdf" "file://$PWD/$f" 2>/dev/null
    echo "$2/$name.pdf"
  done
}

render poster pdf
render poster/en pdf/en
