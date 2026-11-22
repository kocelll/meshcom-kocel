## MeshCom kocel💣 0.9.34-mod.36 + firmware 4.40a-rm5

**Aplikacja (Android) 0.9.34-mod.36:** [MeshCom-RM-Mod.apk na Dysku Google](https://drive.google.com/file/d/1Rxb1w2X-7c-kZEfUHavyCKIBjH5SmdES/view)
**Firmware:** 4.40a-rm5 (oparty na MeshCom 4.40a) — pliki `MeshCom-RM-Mod-4.40a-rm5_<płytka>_…`, instrukcja: `…_INSTRUKCJA.pdf`

### Nowe w aplikacji (od mod.30)
- **Pozycja z telefonu jak w APRSdroid (SmartBeaconing)** — częściej przy większej prędkości i od razu na zakręcie; trasa na aprs.fi idzie po ulicach. Profile Pieszo / Rower / Samochód, działa przy zgaszonym ekranie. aprs.fi wprost z telefonu (APRS-IS), sieć MeshCom przez radio nie częściej niż co 2/5/10 min.
- **Kalibracja baterii** i **limit mocy modułów Ebyte E22** (M22S / M30S / M33S) — kafelki na ekranie Start (firmware rm5).
- **Dźwięki powiadomień** — melodie buzzera, wiadomości z grup i ogólne, T-Deck: mp3 z karty / Morse / cisza.
- **Stacje APRS z internetu jednym przyciskiem** na mapie, radio samo łączy się po wygaszeniu ekranu, „Skopiuj dziennik dla autora”.
- Lista radiów tylko z urządzeniami MeshCom, bez fałszywej „1” na ikonie aplikacji.

### Nowe w firmware rm5 (od rm4)
- Dźwięki powiadomień: grupy i ogólne, 6 melodii buzzera (buzzer na dowolnym GPIO ESP32), T-Deck mp3/Morse/cisza.
- Limit mocy E22: M22S/M30S — wysterowanie do 22 dBm, M33S — do 9 dBm; bez wyboru 9 dBm. **Po aktualizacji wybierz swój moduł.**
- Kalibracja pomiaru baterii (`--battcal <V>`).
- Rewizja „4.40a-rm5” na ekranie, w `--info` i na stronie WWW radia; sprawdzanie aktualizacji patrzy w to repozytorium.

### Który plik
- `…_pelna-instalacja.bin` — ESP32/ESP32-S3, od adresu 0x0 (kasuje ustawienia; zachowuje je skrypt `…_wgraj-usb.ps1`).
- `…_aktualizacja.bin` — OTA / adres 0xC0000, najwygodniej z aplikacji: Start → „Aktualizacja firmware”.
- `….uf2` / `…_aktualizacja-DFU.zip` — nRF52 (RAK4631, T-Echo, T114, Faketec v4).
- Sumy kontrolne: `…_SHA256.txt` (dotyczą nazw plików z Dysku Google; zawartość identyczna).
