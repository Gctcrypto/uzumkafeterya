# Üzüm Cafe — uzumkafeterya.com.tr

Delice · Kırıkkale'de yer alan Üzüm Cafe'nin tanıtım web sitesi.
Tamamen **statik** (HTML + CSS + JS), tüm görseller ve yazı tipleri proje içinde
gömülü — harici CDN gerektirmez (tek istisna: İletişim bölümündeki canlı Google
Harita gömülüsü).

## İçerik
- `index.html` — sitenin tamamı (tek sayfa).
- `image-slot.js` — kullanıcı dolduran görsel bileşeni.
- `images/` — sayfadaki tüm fotoğraflar (yerel).
- `fonts/` — Google Fonts'tan indirilmiş `.woff2` dosyaları + `fonts.css`.

## Yerelde çalıştırma (port 3000)
Windows'ta, hiçbir kurulum gerektirmeden:
```powershell
& '.\serve.ps1'
```
Ardından tarayıcıda: http://localhost:3000

## Coolify ile yayına alma
Bu repo bir `Dockerfile` içerir (nginx ile statik servis, port **80**).

1. Coolify → **New Resource → Application → Public/Private Git Repository**
2. Repo: `https://github.com/Gctcrypto/uzumkafeterya`  · Branch: `main`
3. Build Pack: **Dockerfile**
4. Ports Exposes: `80`
5. Domain: `uzumkafeterya.com.tr` (Coolify → Domains alanına yaz; DNS A kaydını
   sunucunun IP'sine yönlendir, Coolify Let's Encrypt ile HTTPS'i otomatik alır)
6. **Deploy**

Her `git push` sonrası Coolify otomatik yeniden dağıtım yapacak şekilde
ayarlanabilir (webhook / auto-deploy).
