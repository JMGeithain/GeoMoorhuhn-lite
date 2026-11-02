# GeoMoorhuhn lite

**Ein natives Zielschießspiel für FreeGEOS / PC/GEOS**, inspiriert vom klassischen Moorhuhn.

Kleine 2D-Anwendung mit Maussteuerung, beweglichen Zielen, Treffererkennung, Zeitlimit und Punktestand.  
Keine originalen Moorhuhn-Grafiken oder -Sounds – alles selbst gezeichnet bzw. eigenständig.

**Status:** Entwicklungsprototyp (GOC-Quellen). Ein erfolgreicher Build mit der FreeGEOS-SDK muss noch auf der eigenen Toolchain bestätigt werden.

## Features (aktueller Stand)

- Native FreeGEOS-Anwendung (`GenView` + `VisContentClass`)
- Spielfeld 400 × 260
- Mehrere gleichzeitig sichtbare, einzeln anklickbare Ziele
- Trefferprüfung pro Körperteil (Körper, Kopf, Flügel)
- 60-Sekunden-Runde mit Timer
- Punkte- und Fehlschussanzeige
- Menü „Spiel“ (Neues Spiel, Info, Beenden)
- About-Dialog mit Logo
- Eigene Application-Icons (Large/Small)

## Voraussetzungen

- FreeGEOS / pcgeos-SDK (z. B. [bluewaysw/pcgeos](https://github.com/bluewaysw/pcgeos))
- Funktionsfähige Build-Umgebung (`pmake` / GOC)
- Optional: Emulator (z. B. Basebox / DOSBox-Variante)

Siehe [docs/ANLEITUNG.md](docs/ANLEITUNG.md) für konkrete Build-Schritte.

## Projektstruktur

```
GeoMoorhuhn-lite/
├── README.md
├── LICENSE
├── src/                    # Aktuelle Quelldateien (zum Bauen)
│   ├── moorgeos.goc
│   ├── moorgeos.goh
│   ├── moorgeos.gp
│   ├── moorgeosicons.goh
│   ├── moorgeosaboutlogo.goh
│   └── local.mk
├── docs/                   # Spezifikationen und Anleitungen
│   ├── ANLEITUNG.md
│   ├── GAMEPLAY-SPEC.md
│   ├── FREEGEOS-PROTOTYPE.md
│   └── SDK-RESEARCH.md
├── assets/                 # Preview-Grafiken (keine Runtime-Assets)
└── history/                # Ältere Entwicklungsstände
    └── random-movement/
```

## Schnellstart (Build)

```bash
# Nach dem Klonen die Dateien aus src/ in dein Local-Verzeichnis kopieren
# (Pfad an deine Installation anpassen)
cp src/* /pfad/zu/pcgeos/Local/MOORGEOS/
cd /pfad/zu/pcgeos/Local/MOORGEOS
del moorgeos.eobj   # Windows / erzwingt Neuübersetzung
pmake
```

Detaillierte Schritte: [docs/ANLEITUNG.md](docs/ANLEITUNG.md)

## Lizenz

Copyright (c) 2026 Johannes Möller (JMGeithain)  
**All rights reserved.**

Siehe [LICENSE](LICENSE).

## Hinweise

- Zielplattform ist FreeGEOS. Kompatibilität mit älteren GeoWorks-1.x-Versionen ist nicht zugesichert.
- Das Projekt ist **kein** Port der originalen Windows-Moorhuhn-Spiele und enthält keine geschützten Originalressourcen.
- Die Referenz [Theaninova/mhlib](https://github.com/Theaninova/mhlib) (Rust/Godot) dient nur als Hintergrundinformation; dieses Spiel ist eine eigenständige native GEOS-Anwendung.

## Autor

Johannes Möller (JMGeithain)  
https://github.com/JMGeithain  
https://www.moellerjaner.de
