# Mitmachen

Schön, dass du helfen willst! Tippfehler, bessere Formulierungen, korrigierte Fakten oder ganz neue Poster – alles willkommen.

## Ideen und Fehler

Einfach ein [Issue](../../issues) aufmachen. Kein Git-Wissen nötig.

## Änderungen per Pull Request

1. Repo forken und einen Branch anlegen.
2. Die betroffene Datei in `poster/` im Texteditor ändern.
3. Die Datei im Browser öffnen und prüfen:
   - Passt alles auf die A4-Fläche? Nichts darf unten abgeschnitten werden.
   - Läuft kein Text über den Rand eines Kastens?
   - Zum Test kannst du drucken („Als PDF sichern“, A4, Ränder „Keine“) – es muss genau **eine** Seite herauskommen.
4. Pull Request öffnen und kurz beschreiben, was du geändert hast und warum.

Die GitHub Action baut für jeden Pull Request automatisch die PDFs. Du findest sie im Tab „Checks“ unter *Artifacts*.

**Bitte nur HTML und CSS ändern.** PDFs und Screenshots werden nach dem Merge zentral neu erzeugt – so bleiben die Pull Requests übersichtlich.

## Regeln für die Gestaltung

- **Farben** nur über die Variablen in `poster/style.css`, keine festen Farbwerte in den Postern.
- **Kurz halten:** Ein Poster wird im Vorbeigehen gelesen. Lieber eine Zeile streichen als die Schrift verkleinern.
- **Fakten mit Quelle:** Bei Regeln, Zahlen oder technischen Angaben bitte im Pull Request die Quelle nennen
  (z. B. pota.app, die Bauanleitung auf draussenfunker.de, die Bundesnetzagentur).
- **Keine fremden Bilder oder Logos** ohne geklärte Rechte – auch keine Programm-Logos wie das POTA-Logo.
  Die Illustrationen sind bewusst einfache, selbst gezeichnete SVG-Grafiken.

## Ein neues Poster anlegen

1. Ein bestehendes Poster kopieren, das in Aufbau und Länge am besten passt.
2. Kopfzeile, Headline, Szene und Inhalt austauschen. Oben rechts steht ein Themen-Label (z. B. „Ausrüstung“) – bewusst ohne Nummer, die Poster haben keine feste Reihenfolge.
3. Das neue Poster in `poster/index.html` und in der Tabelle im `README.md` eintragen.

## Lizenz

Mit deinem Beitrag stimmst du zu, dass er unter derselben Lizenz wie das Projekt steht:
[CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.de).
