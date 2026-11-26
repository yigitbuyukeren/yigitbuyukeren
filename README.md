<a href="https://yigitbuyukeren.com/">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/portfolio-dark.png">
    <img src="assets/portfolio-light.png" width="100%" alt="Rota kartı biçiminde portfolyo: KM 0 başlangıç Yiğit Eren Büyükeren; 01 RideDeck v0.7.0 kokpit ekranı; 02 Aile Cüzdanı geliştirmede özet ekranı; 03 Veil kapalı alfa, yalnızca Tor. Alt satırda yigitbuyukeren.com.">
  </picture>
</a>

<div align="center">

# Yiğit Eren Büyükeren

Bağımsız geliştirici · İstanbul — fikirden yayına tek elden.

[Web sitesi](https://yigitbuyukeren.com/) · [CV](https://yigitbuyukeren.com/cv/) · [E-posta](mailto:mail@yigitbuyukeren.com) · [🇹🇷 Türkçe](#tr) · [🇬🇧 English](#en)

[![RideDeck](https://img.shields.io/badge/RideDeck-v0.7.0%20kararl%C4%B1-E8480C?style=flat-square&labelColor=16150F)](https://yigitbuyukeren.com/ridedeck/)
[![Aile Cüzdanı](https://img.shields.io/badge/Aile%20C%C3%BCzdan%C4%B1-geli%C5%9Ftirmede-E8480C?style=flat-square&labelColor=16150F)](https://yigitbuyukeren.com/aile-cuzdani/)
[![Veil](https://img.shields.io/badge/Veil-kapal%C4%B1%20alfa%20%C2%B7%20NO--GO-E8480C?style=flat-square&labelColor=16150F)](https://yigitbuyukeren.com/veil/)

</div>

---

<a id="tr"></a>

## 🇹🇷 Türkçe

Android'de üç ürün geliştiriyorum: motosiklet kokpiti, ortak aile bütçesi ve gizlilik odaklı mesajlaşma. Durum satırları proje depolarındaki tarihli doğrulama kayıtlarına dayanır.

### 01 · RideDeck

Android telefonu yatay bir motosiklet kokpitine çevirir: GPS hızı, sesli navigasyon, müzik, aramalar ve cihazda sürüş geçmişi. Hesap, API anahtarı veya RideDeck sunucusu yok.

- **Durum:** v0.7.0 kararlı sürüm · Apache 2.0 · Android 13+ üzerinde canlı TR/EN geçişi
- **Yığın:** Kotlin · Jetpack Compose · MapLibre
- **Sınır:** SOS ve kaza algılama deneysel; gerçek cihaz, sürüş ve SMS teslimi doğrulanmadı. Kamuya açık 1.0 **NO-GO**.

[İmzalı APK ↓](https://github.com/yigitbuyukeren/ridedeck/releases/download/v0.7.0/RideDeck-0.7.0.apk) · [GitHub](https://github.com/yigitbuyukeren/ridedeck) · [Site](https://yigitbuyukeren.com/ridedeck/)

### 02 · Aile Cüzdanı

Maaş gününden maaş gününe ortak aile bütçesi: gelir, gider, taksit, fatura ve birikim hedefleri tek yerde. Davet koduyla beş kişiye kadar.

- **Durum:** Geliştirmede · ücretsiz ve reklamsız · kaynak kodu özel
- **Yığın:** React Native · Expo · TypeScript · PocketBase
- **Sınır:** App Store veya Google Play'de yok. Tanıtım ekranları demo verisi kullanır; Android yayın hazırlığı sürüyor.

[Showcase](https://github.com/yigitbuyukeren/aile-cuzdani-showcase) · [Site](https://yigitbuyukeren.com/aile-cuzdani/)

### 03 · Veil

SimpleX protokolü üzerine kurulu, hesapsız Android mesajlaşma istemcisi. Tül tasarımı, fail-closed başlangıç Tor kapısı ve kilitli ağ ayarları.

- **Durum:** Denetlenmemiş kapalı alfa · AGPLv3 · **NO-GO**
- **Yığın:** Kotlin · SimpleX Core · Tor (Orbot)
- **Sınır:** SimpleX Chat'in bağımsız türevi; SimpleX Chat Ltd ile bağlantılı, onun tarafından desteklenen veya onaylanan bir proje değil. Mesajlar ve dosyalar yalnızca Tor `.onion` üzerinden gider; aramalar varsayılan olarak kapalıdır ve Tor üzerinden gitmez. Tor, trafik korelasyonuna karşı koruma sağlamaz. Gerçek cihaz doğrulaması henüz yok.

[GitHub](https://github.com/yigitbuyukeren/veil) · [Durum raporu](https://github.com/yigitbuyukeren/veil/blob/main/docs/veil/DEVELOPMENT_STATUS.md) · [Site](https://yigitbuyukeren.com/veil/)

---

<a id="en"></a>

## 🇬🇧 English

I build three Android products: a motorcycle cockpit, a shared family budget and privacy-first messaging. Status lines reflect dated verification records in each project repository.

### 01 · RideDeck

Turns an Android phone into a landscape motorcycle cockpit: GPS speed, voice navigation, music, calls and on-device trip history. No account, API key or RideDeck server.

- **Status:** v0.7.0 stable release · Apache 2.0 · live TR/EN switch on Android 13+ without restarting
- **Stack:** Kotlin · Jetpack Compose · MapLibre
- **Boundary:** SOS and crash detection are experimental; real-device use, riding and SMS delivery are unverified. Public 1.0 is **NO-GO**.

[Download signed APK ↓](https://github.com/yigitbuyukeren/ridedeck/releases/download/v0.7.0/RideDeck-0.7.0.apk) · [GitHub](https://github.com/yigitbuyukeren/ridedeck) · [Website](https://yigitbuyukeren.com/en/ridedeck/)

### 02 · Aile Cüzdanı

Payday-to-payday shared family budget: income, expenses, instalments, bills and savings goals in one place, for up to five members via an invite code.

- **Status:** In development · free and ad-free · private source
- **Stack:** React Native · Expo · TypeScript · PocketBase
- **Boundary:** Not in the App Store or Google Play. Showcase screens use demo data; Android release preparation is underway.

[Showcase](https://github.com/yigitbuyukeren/aile-cuzdani-showcase) · [Website](https://yigitbuyukeren.com/en/aile-cuzdani/)

### 03 · Veil

Accountless Android messaging built on the SimpleX protocol. Tül redesign, fail-closed Tor gate and locked network settings.

- **Status:** Unaudited closed alpha · AGPLv3 · **NO-GO**
- **Stack:** Kotlin · SimpleX Core · Tor (Orbot)
- **Boundary:** Independent derivative of SimpleX Chat; not affiliated with, endorsed by or supported by SimpleX Chat Ltd. Messages and files go only through Tor `.onion`; calls are off by default and do not go through Tor. Tor does not protect against traffic correlation. No real-device verification yet.

[GitHub](https://github.com/yigitbuyukeren/veil) · [Status report](https://github.com/yigitbuyukeren/veil/blob/main/docs/veil/DEVELOPMENT_STATUS.md) · [Website](https://yigitbuyukeren.com/en/veil/)

---

<div align="center">

<sub>© Yiğit Eren Büyükeren · [yigitbuyukeren.com](https://yigitbuyukeren.com/) · İstanbul</sub>

</div>
