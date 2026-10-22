#!/usr/bin/env bash
# Profildeki kapak ve proje kartı görsellerini yigitbuyukeren.com'un kendi kartlarından yeniden üretir.
# Site kaynağındaki sayılar (test sayısı, sürüm...) değişince çalıştır, sonra assets/ değişikliğini commit'le.
#
# Gerekenler: macOS + Xcode komut satırı araçları (swiftc), python3 ve Pillow.
# Kullanım:   tools/render.sh ~/Desktop/yigitbuyukeren-site
#
# Küçük kartlar sabit 585 px yükseklikte çizilir; bir kartın metni uzarsa aşağıdaki h=585 değerini büyüt.
set -euo pipefail
SITE="$(cd "${1:?Kullanım: tools/render.sh <site klasörü>}" && pwd)"
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/../assets"
TMP="$(mktemp -d)"
SRV=""
cleanup() { [ -n "$SRV" ] && kill "$SRV" 2>/dev/null; rm -rf "$SITE/_gh" "$TMP"; }
trap cleanup EXIT

swiftc -O "$HERE/snap.swift" -o "$TMP/snap"
mkdir -p "$SITE/_gh" && cp "$HERE/cards.html" "$SITE/_gh/index.html"
python3 -m http.server 8765 --bind 127.0.0.1 --directory "$SITE" >/dev/null 2>&1 & SRV=$!
sleep 1

B="http://127.0.0.1:8765/_gh/"
for t in light dark; do
  "$TMP/snap" "$B?card=banner&theme=$t" "$TMP/banner-$t.png" 1280 400 1.5
  "$TMP/snap" "$B?card=aile&w=1100&theme=$t" "$TMP/aile-$t.png" 1100 0 2
  "$TMP/snap" "$B?card=ride&w=1100&theme=$t" "$TMP/ride-$t.png" 1100 0 2
  for n in 1 2 3 4; do
    "$TMP/snap" "$B?card=w$n&w=560&h=585&theme=$t" "$TMP/w$n-$t.png" 560 585 2
  done
done
python3 "$HERE/finish.py" "$TMP" "$OUT"
