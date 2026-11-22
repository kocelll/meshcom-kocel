## MeshCom kocel💣 0.9.34-mod.36 + firmware 4.40a-rm5

**Aplikacja (Android) 0.9.34-mod.36:** [⬇ MeshCom-RM-Mod.apk](MeshCom-RM-Mod.apk)
**Firmware:** 4.40a-rm5 (oparty na MeshCom 4.40a) — pliki `MeshCom-RM-Mod-4.40a-rm5_<płytka>_…`, instrukcja: [⬇ INSTRUKCJA.pdf](MeshCom-RM-Mod-4.40a-rm5_INSTRUKCJA.pdf)

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
- Sumy kontrolne: `…_SHA256.txt` (nazwy plików jak na Dysku testerów; zawartość identyczna).

### ⬇ Pobierz firmware dla swojej płytki
| Płytka | Pliki |
|---|---|
| Ebyte E22 433 MHz | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-433-MHz_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-433-MHz_aktualizacja.bin) |
| Ebyte E22 868-915 MHz | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-868-915-MHz_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-868-915-MHz_aktualizacja.bin) |
| Ebyte E22 S3 433 MHz | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-S3-433-MHz_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-S3-433-MHz_aktualizacja.bin) |
| Ebyte E22 S3 868-915 MHz | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-S3-868-915-MHz_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-S3-868-915-MHz_aktualizacja.bin) |
| Ebyte E22 XML | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-XML_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Ebyte-E22-XML_aktualizacja.bin) |
| ESP32 LoRa APRS E22 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_ESP32-LoRa-APRS-E22_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_ESP32-LoRa-APRS-E22_aktualizacja.bin) |
| ESP32 LoRa APRS RA01 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_ESP32-LoRa-APRS-RA01_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_ESP32-LoRa-APRS-RA01_aktualizacja.bin) |
| Faketec v4 (Pro Micro nRF52840 + HT-RA62) | [.uf2](MeshCom-RM-Mod-4.40a-rm5_Faketec-v4-Pro-Micro-nRF52840-HT-RA62.uf2) · [DFU .zip](MeshCom-RM-Mod-4.40a-rm5_Faketec-v4-Pro-Micro-nRF52840-HT-RA62_aktualizacja-DFU.zip) |
| Heltec E213 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-E213_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-E213_aktualizacja.bin) |
| Heltec E290 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-E290_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-E290_aktualizacja.bin) |
| Heltec E290 OTP | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-E290-OTP_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-E290-OTP_aktualizacja.bin) |
| Heltec T114 | [.uf2](MeshCom-RM-Mod-4.40a-rm5_Heltec-T114.uf2) · [DFU .zip](MeshCom-RM-Mod-4.40a-rm5_Heltec-T114_aktualizacja-DFU.zip) |
| Heltec V2 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-V2_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-V2_aktualizacja.bin) |
| Heltec V3 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-V3_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-V3_aktualizacja.bin) |
| Heltec V4 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-V4_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-V4_aktualizacja.bin) |
| Heltec Wireless Paper | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-Wireless-Paper_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-Wireless-Paper_aktualizacja.bin) |
| Heltec Wireless Stick V3 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-Wireless-Stick-V3_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-Wireless-Stick-V3_aktualizacja.bin) |
| Heltec Wireless Tracker | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_Heltec-Wireless-Tracker_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_Heltec-Wireless-Tracker_aktualizacja.bin) |
| RAK4631 | [.uf2](MeshCom-RM-Mod-4.40a-rm5_RAK4631.uf2) · [DFU .zip](MeshCom-RM-Mod-4.40a-rm5_RAK4631_aktualizacja-DFU.zip) |
| T-Beam 1W | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Beam-1W_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Beam-1W_aktualizacja.bin) |
| T-Beam (default) SX1278 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Beam-default-SX1278_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Beam-default-SX1278_aktualizacja.bin) |
| T-Beam Supreme | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Beam-Supreme_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Beam-Supreme_aktualizacja.bin) |
| T-Beam SX1262 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Beam-SX1262_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Beam-SX1262_aktualizacja.bin) |
| T-Beam SX1268 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Beam-SX1268_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Beam-SX1268_aktualizacja.bin) |
| T-Connect Pro | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Connect-Pro_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Connect-Pro_aktualizacja.bin) |
| T-Deck | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Deck_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Deck_aktualizacja.bin) |
| T-Deck Plus | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Deck-Plus_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Deck-Plus_aktualizacja.bin) |
| T-Deck Pro | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-Deck-Pro_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-Deck-Pro_aktualizacja.bin) |
| T-Echo | [.uf2](MeshCom-RM-Mod-4.40a-rm5_T-Echo.uf2) · [DFU .zip](MeshCom-RM-Mod-4.40a-rm5_T-Echo_aktualizacja-DFU.zip) |
| T-ETH-ELITE_1262 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-ETH-ELITE_1262_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-ETH-ELITE_1262_aktualizacja.bin) |
| T-LoRa | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T-LoRa_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T-LoRa_aktualizacja.bin) |
| T3 S3 V1_3 SX1262 | [pełna instalacja](MeshCom-RM-Mod-4.40a-rm5_T3-S3-V1_3-SX1262_pelna-instalacja.bin) · [aktualizacja (OTA)](MeshCom-RM-Mod-4.40a-rm5_T3-S3-V1_3-SX1262_aktualizacja.bin) |

Dodatkowo: [skrypt wgraj-usb.ps1](MeshCom-RM-Mod-4.40a-rm5_wgraj-usb.ps1) · [SHA256](MeshCom-RM-Mod-4.40a-rm5_SHA256.txt) · [licencja](MeshCom-RM-Mod-4.40a-rm5_LICENSE.txt) · [wszystkie pliki](https://github.com/kocelll/meshcom-kocel/tree/main/wydania/4.40a-rm5)
