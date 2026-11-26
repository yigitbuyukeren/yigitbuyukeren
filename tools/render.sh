#!/usr/bin/env bash
# ARŞİV / DEPRECATED: yigitbuyukeren.com artık /assets/site.css ve eski kart seçicilerini kullanmıyor.
# README.md ve assets/ ec08d87 ile kaldırıldı; bu hat çıktı üretmez ve assets/ geri oluşturmaz.
# Güncel, kendi kendine yeten proje kapakları için tools/banners.html kullanın.
set -euo pipefail

cat >&2 <<'MSG'
DEPRECATED: tools/render.sh arşivlendi.

Neden: Site /assets/site.css yerine /assets/route.css ve yeni bölüm sınıflarını kullanıyor;
eski .hero/.feature/.work-card seçicileri kaldırıldı. Profil deposundaki README.md ve assets/
ec08d87 ile bilinçli olarak silindi.

Yapılacak: Kapakları doğrudan tools/banners.html ile açın; assets/ dizinini yeniden oluşturmayın.
MSG

exit 1
