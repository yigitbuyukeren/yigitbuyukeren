# Profil

- Bu depo `yigitbuyukeren` GitHub profil deposudur. `README.md` ve `assets/` ec08d87 ile bilinçli olarak kaldırıldı; geri oluşturma, yeni profil README'si veya görsel ekleme.
- `tools/banners.html` güncel ve kendi kendine yeter: RideDeck, Aile Cüzdanı ve Veil ürün kapakları ile site kapağı. `tools/render.sh`, `tools/cards.html`, `tools/finish.py`, `tools/snap.swift` ve `tools/tazele-panel.js` arşivlidir; çalıştırılmamalıdır.
- `/assets/...` yolları bu depoya değil yigitbuyukeren.com sitesine aittir. Kırık yol veya kaldırılmış görsel varsa yolu düzelt, görseli CSS ile değiştir ya da başlığı `ARŞİV` olarak işaretle.
- `tools/check-readme.py`, README.md yokken geçerli bir no-op'tur; `.github/workflows/check.yml` yalnızca bu kontrolü çalıştırır. `tools/banners.html` düzenlenirse görünen metinleri ve bağlantıları tarihli proje gerçeklerine göre elle doğrula; sürüm/test sayılarını abartma, kimlik bilgisi veya gerçek kullanıcı verisi kullanma.
- Teslimat: kök çalışma alanı `AGENTS.md` ve `python3 teslim.py --deliver yigitbuyukeren ...` kuralı geçerlidir; yalnız ilgili dosyaları commit edip push yap. `main` dalına push, README olmadığı için profil README'si yayınlamaz; yalnız depo içeriğini günceller.
