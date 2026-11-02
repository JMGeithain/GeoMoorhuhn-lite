# GeoMoorhuhn lite – Build-Anleitung (FreeGEOS)

Kurzanleitung zum Klonen des Repositories und zum Bauen unter einer bestehenden FreeGEOS-/pcgeos-Installation.

## 1. Repository klonen

```bash
git clone https://github.com/JMGeithain/GeoMoorhuhn-lite.git
cd GeoMoorhuhn-lite
```

## 2. Quellen in die SDK-Local-Struktur legen

Passe den Zielpfad an deine Installation an. Typische Beispiele:

- Windows: `C:\Geos\pcgeos\Local\MOORGEOS\`
- oder dein eigener `Local`-Pfad unter dem pcgeos-Tree

```bash
# Beispiel Windows (Git-CMD / PowerShell)
mkdir C:\Geos\pcgeos\Local\MOORGEOS
copy /Y src\* C:\Geos\pcgeos\Local\MOORGEOS\
```

Unter Linux/macOS (falls du mit dem FreeGEOS-Toolchain arbeitest):

```bash
mkdir -p /pfad/zu/pcgeos/Local/MOORGEOS
cp src/* /pfad/zu/pcgeos/Local/MOORGEOS/
```

Benötigte Dateien aus `src/`:

- `moorgeos.goc`
- `moorgeos.goh`
- `moorgeos.gp`
- `moorgeosicons.goh`
- `moorgeosaboutlogo.goh`
- `local.mk`

## 3. Bauen

```bash
cd C:\Geos\pcgeos\Local\MOORGEOS   # bzw. dein Pfad
del moorgeos.eobj                 # erzwingt Neuübersetzung (Windows)
pmake
```

Das Löschen von `moorgeos.eobj` ist sinnvoll, wenn du Quelländerungen gemacht hast und sicherstellen willst, dass GOC neu übersetzt.

## 4. Starten

Die erzeugte `.geo`- bzw. Geode-Datei in deiner FreeGEOS-/Emulator-Umgebung starten (z. B. über den Desktop oder die World-Ordner-Struktur deiner Installation).

## Hinweise

- Die GOC-Quellen verwenden GEOS-Hex-Escapes für Umlaute (z. B. `\x9F` = ü, `\x9A` = ö).
- Ein erfolgreicher Build gilt erst als bestätigt, wenn er auf **deiner** konkreten SDK-/Toolchain-Version durchgelaufen ist.
- Bei Compilerfehlern zuerst `timer.h`, Include-Pfade und die genutzte FreeGEOS-Version prüfen (siehe `docs/SDK-RESEARCH.md` und `docs/FREEGEOS-PROTOTYPE.md`).

## Weiterführende Dokumente

- [GAMEPLAY-SPEC.md](GAMEPLAY-SPEC.md) – Spielregeln und Testfälle
- [FREEGEOS-PROTOTYPE.md](FREEGEOS-PROTOTYPE.md) – technische Leitlinie
- [SDK-RESEARCH.md](SDK-RESEARCH.md) – SDK-/API-Hinweise
