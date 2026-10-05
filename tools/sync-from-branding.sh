#!/bin/sh
# Pull the Info Day page out of the brand-system repo. The generator is
# authored there (bdsis-web/); this repo is the published copy.
set -e
SRC="${1:-$HOME/Desktop/To Clean/2026-06-10 PolyU IS Branding/bdsis-web}"
DST="$(cd "$(dirname "$0")/.." && pwd)"
cp "$SRC/infoday.html" "$DST/index.html"
cp "$SRC/infoday.js" "$SRC/infoday-3d.js" "$SRC/cellhash.js" "$SRC/pixelfont.js" "$SRC/web.css" "$DST/"
cp "$SRC/vendor/three.module.js" "$SRC/vendor/RoomEnvironment.js" "$DST/vendor/"
for a in bdsis-lockup-colour.svg bdsis-lockup-white.svg favicon.svg favicon-32.png \
         apple-touch-icon.png mark-mono.svg wordmark-is.svg wordmark-polyu-is.svg; do
  cp "$SRC/assets/$a" "$DST/assets/"
done
echo "synced from $SRC"
