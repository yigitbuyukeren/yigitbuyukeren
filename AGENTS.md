# Profil

- Bu depo `yigitbuyukeren` GitHub profil deposudur. `README.md` ve `assets/` ec08d87 ile bilinçli olarak kaldırıldı; geri oluşturma, yeni profil README'si veya görsel ekleme.
- Depoda `tools/` yardımcıları ve `.github/workflows/check.yml` kontrolü tutulur. `tools/banners.html` kendi kendine yeter; `tools/render.sh`, `tools/cards.html` ve `tools/finish.py` arşivlidir ve çalıştırılmamalıdır.
- `/assets/...` yolları yigitbuyukeren.com sitesine aittir, bu depoya değil. Kırık site yolu veya kaldırılmış görsel varsa yolu düzelt, görseli CSS ile değiştir ya da başlığı `ARŞİV` olarak işaretle.
- Güncel vitrin: RideDeck, Aile Cüzdanı ve Veil. Kapak/kart metinlerini site ve proje depolarındaki tarihli doğrulanmış durumla uyumlu tut; sürüm/test iddialarını abartma ve garanti verme. Kimlik bilgisi veya gerçek kullanıcı verisi kullanma.
- Değişiklikte bağlantıları ve TR/EN metinlerini kontrol et. Doğrulama: `python3 tools/check-readme.py` ve `git status -sb`. Doğrulama geçtikten sonra kullanıcıya sormadan yalnız ilgili dosyaları stage edip conventional commit oluştur ve `origin/main` dalına push yap (kullanıcı aksini istemedikçe). `main` push'u README olmadığı için profil README'si yayınlamaz; yalnız depo içeriğini günceller.
