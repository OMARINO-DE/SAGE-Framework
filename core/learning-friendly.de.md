# Lernfreundlich
## ELDER Framework - Säule 1

**Version:** 1.0  
**Zuletzt aktualisiert:** 28. Januar 2026  
**Sprache:** Deutsch (DE)

---

## Ziel

Die kognitive Belastung ohne Funktionsverlust zu reduzieren, indem Oberflächen geschaffen werden, die sofort verständlich, fehlertolerant sind und wesentliche Funktionen bewahren, während unnötige Komplexität eliminiert wird.

## Anwendungsbereich

Diese Spezifikation gilt für alle benutzerseitigen digitalen Oberflächen, die für Seniorennutzer bestimmt sind, einschließlich:

- Webanwendungen und Websites
- Mobile Anwendungen (iOS, Android)
- Desktop-Anwendungen
- Kioske und öffentliche Terminals
- Smart-Home-Oberflächen
- Gesundheitsgeräte und -anwendungen
- Digitale Regierungsdienste
- Finanzdienstleistungsschnittstellen

Die Prinzipien der Sicheren Einfachheit sollten während der gesamten Nutzerreise angewendet werden, vom ersten Onboarding bis zu erweiterten Funktionen.

## Definitionen

- **Kognitive Belastung**: Der mentale Aufwand, der erforderlich ist, um eine Oberfläche zu verwenden oder eine Aufgabe zu erledigen
- **Wesentliche Funktionalität**: Kernfunktionen, die zur Erreichung der primären Nutzerziele erforderlich sind
- **Visuelles Durcheinander**: Unnötige visuelle Elemente, die von primären Aufgaben ablenken
- **Fehlertoleranz**: Die Fähigkeit des Systems, Fehler zu verhindern, zu erkennen und zu beheben
- **Progressive Komplexität**: Erweiterte Funktionen nur bei Bedarf anzeigen

---

## Anforderungen

### S1: Minimales visuelles Durcheinander

**AusELDER**: Oberflächen müssen visuelles Durcheinander minimieren, indem nur wesentliche Elemente angezeigt werden, die für die aktuelle Aufgabe erforderlich sind.

**Begründung**: Seniorennutzer können Schwierigkeiten haben, dichte visuelle Informationen zu verarbeiten. Die Reduzierung von Durcheinander verbessert den Fokus, reduziert die kognitive Belastung und verhindert Überforderung.

**Metriken**:
- Maximum 7 ± 2 interaktive Elemente pro Bildschirmabschnitt sichtbar
- Weißraum umfasst mindestens 40% der Bildschirmfläche
- Visuelle Hierarchie mit klaren primären, sekundären und tertiären Wichtigkeitsstufen

**Testverfahren**:
1. Zählen Sie interaktive Elemente in jedem größeren Bildschirmabschnitt
2. Messen Sie den Weißraum-Prozentsatz mit Design-Tools
3. Führen Sie Eye-Tracking-Studien durch, um den Aufmerksamkeitsfokus zu verifizieren
4. Benutzertests: Bitten Sie 10 Seniorennutzer, die primäre Aktion auf jedem Bildschirm zu identifizieren (Erfolgsrate sollte 90% überschreiten)

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Gleichzeitiges Anzeigen aller verfügbaren Funktionen
- ❌ Verwendung jedes verfügbaren Raums für Inhalt oder Steuerelemente
- ❌ Mehrere konkurrierende Call-to-Actions auf einem Bildschirm
- ❌ Dichte Layouts mit minimalem Abstand

**Implementierungshinweise**:
- Verwenden Sie kartenbasierte Layouts mit großzügigem Padding
- Gruppieren Sie verwandte Elemente visuell
- Nutzen Sie progressive Offenlegung für erweiterte Optionen
- Standardmäßig nur primäre Aktionen anzeigen

---

### S2: Große, klare Typografie

**AusELDER**: Text muss groß genug sein, um bequem ohne Zoomen oder Hilfstechnologie gelesen zu werden, mit klarer Schriftartauswahl.

**Begründung**: Das Sehvermögen nimmt mit dem Alter natürlich ab. Größerer Text mit hoher Lesbarkeit reduziert Augenbelastung und verbessert das Verständnis.

**Metriken**:
- Minimale Basis-Schriftgröße: 16px (1rem) für Fließtext
- Empfohlene Basis-Schriftgröße: 18-20px für seniorenorientierte Anwendungen
- Minimale Schriftgröße für jeden Text: 14px
- Zeilenhöhe (Durchschuss): 1,5-1,8-fache der Schriftgröße
- Absatz-Zeilenlänge: maximal 50-75 Zeichen

**Testverfahren**:
1. Messen Sie Schriftgrößen in CSS/Code
2. Testen Sie die Lesbarkeit mit Seniorennutzern in Armlänge vom Bildschirm
3. Verifizieren Sie mit Accessibility-Tools (WAVE, axe DevTools)
4. Durchführen von Lesbarkeitstests: Benutzer sollten Beispieltext ohne Fehler mit >95% Genauigkeit lesen

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Verwendung von Standard-Browser-Schriftgrößen (typisch 16px) als Maximum
- ❌ Kleingedrucktes für „weniger wichtige" Informationen
- ❌ Schmale oder stilisierte Schriften, die die Lesbarkeit reduzieren
- ❌ Übermäßig lange Textzeilen (>80 Zeichen)

**Implementierungshinweise**:
- Verwenden Sie Systemschriften oder hochlesbare serifenlose Schriften (z.B. Inter, Open Sans, Segoe UI)
- Vermeiden Sie dekorative oder Schreibschriften für Fließtext
- Ermöglichen Sie Anpassung der Schriftgröße ohne Layout-Bruch
- Testen Sie auf tatsächlichen Geräten bei typischen Betrachtungsabständen

---

### S3: Hoher Farbkontrast

**AusELDER**: Alle Text- und interaktiven Elemente müssen ausreichenden Kontrast zu ihren Hintergründen aufweisen, um die Lesbarkeit zu gewährleisten.

**Begründung**: Altersbedingte Sehveränderungen reduzieren die Kontrastempfindlichkeit. Hoher Kontrast verbessert die Lesbarkeit und reduziert Augenermüdung.

**Metriken**:
- Minimales Kontrastverhältnis: 7:1 für normalen Text (WCAG AAA)
- Minimales Kontrastverhältnis: 4,5:1 für großen Text (18pt+)
- Minimales Kontrastverhältnis: 3:1 für interaktive Elemente und Grafiken
- Vermeiden Sie kontrastarme Farbkombinationen (Grau auf Grau, Pastelltöne auf Weiß)

**Testverfahren**:
1. Verwenden Sie Kontrastprüfungs-Tools (WebAIM, Stark, Figma-Plugins)
2. Testen Sie mit Farbenblindheitssimulatoren
3. Betrachten Sie die Oberfläche unter verschiedenen Lichtverhältnissen
4. Benutzertests: Seniorennutzer identifizieren alle interaktiven Elemente mit >95% Erfolgsrate

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Hellgrauer Text auf weißem Hintergrund
- ❌ Farbiger Text auf farbigem Hintergrund ohne Kontrastprüfung
- ❌ Kontrastarme „deaktivierte" Zustände, die dennoch funktional sind
- ❌ Ausschließliche Verwendung von Farbe zur Informationsvermittlung

**Implementierungshinweise**:
- Verwenden Sie dunklen Text (nahezu schwarz) auf hellen Hintergründen oder hellen Text auf dunklen Hintergründen
- Vermeiden Sie reines Schwarz (#000) auf reinem Weiß (#FFF) - beide leicht abschwächen
- Bieten Sie eine Hochkontrast-Modus-Option
- Testen Sie den Kontrast bei der Komponentengestaltung, nicht erst bei der endgültigen Implementierung

---

### S4: Große Touch-Ziele

**AusELDER**: Alle interaktiven Elemente müssen groß genug sein, um ohne präzise Feinmotorik genau getippt zu werden.

**Begründung**: Die Feinmotorik kann mit dem Alter abnehmen. Größere Touch-Ziele reduzieren Fehler und Frustration, insbesondere auf Touch-Geräten.

**Metriken**:
- Minimale Touch-Zielgröße: 44x44 CSS-Pixel (iOS HIG-Standard)
- Empfohlene Touch-Zielgröße: 48x48 CSS-Pixel (Material Design)
- Optimale Touch-Zielgröße für Senioren: 56x56 bis 64x64 CSS-Pixel
- Minimaler Abstand zwischen Touch-Zielen: 8px

**Testverfahren**:
1. Messen Sie die Dimensionen interaktiver Elemente in Inspector-Tools
2. Testen Sie auf Touch-Geräten mit Seniorennutzern (einschließlich solcher mit Tremor)
3. Messen Sie Fehlerraten beim Tippen auf Schaltflächen
4. Erfolgskriterium: <5% Fehltipp-Rate bei Seniorennutzern

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Kleine Symbol-Only-Schaltflächen (32px oder kleiner)
- ❌ Dicht gepackte Navigationselemente
- ❌ Inline-Text-Links in Absätzen ohne angemessenen Abstand
- ❌ Schieberegler-Steuerelemente mit kleinen Griffen

**Implementierungshinweise**:
- Erhöhen Sie das Padding um klickbare Bereiche
- Stellen Sie sicher, dass der gesamte Schaltflächen-/Link-Bereich klickbar ist, nicht nur der Text
- Verteilen Sie Menüelemente und Navigation
- Machen Sie die gesamte Karte/Zeile klickbar, wenn angemessen

---

### S5: Einzelne primäre Aktion pro Bildschirm

**AusELDER**: Jeder Bildschirm oder jede Ansicht sollte eine klare primäre Aktion haben, wobei sekundäre Aktionen visuell deemphasiert werden.

**Begründung**: Mehrere konkurrierende Handlungsaufforderungen erzeugen Entscheidungslähmung. Eine klare primäre Aktion leitet Benutzer und reduziert die kognitive Belastung.

**Metriken**:
- Eine primäre Schaltfläche pro Bildschirm (visuell prominent)
- Maximal 2-3 sekundäre Aktionen pro Bildschirm
- Primäre Aktionsschaltfläche ist 1,5-2x visuell prominenter als sekundäre Aktionen
- Primäre Aktion steht in direktem Zusammenhang mit dem Zweck des Bildschirms

**Testverfahren**:
1. Zeigen Sie Seniorennutzern den Bildschirm und fragen Sie „Was sollte ich als nächstes tun?"
2. Erfolgsrate: >90% identifizieren primäre Aktion korrekt
3. Zeit zur Identifizierung der primären Aktion: <3 Sekunden
4. Visuelle Prominenztests: Primäre Schaltfläche zieht beim Eye-Tracking zuerst Aufmerksamkeit auf sich

**Compliance-Level**: Empfohlen

**Anti-Patterns**:
- ❌ Mehrere Schaltflächen mit gleichem visuellem Gewicht
- ❌ Unklare Unterscheidung zwischen primären und sekundären Aktionen
- ❌ Destruktive Aktionen (Löschen, Abbrechen) als primär gestaltet
- ❌ Primäre Aktion unterhalb des Faltbereichs versteckt

**Implementierungshinweise**:
- Verwenden Sie kontraststarke, gefüllte Schaltflächen für primäre Aktionen
- Verwenden Sie Outline- oder Ghost-Schaltflächen für sekundäre Aktionen
- Positionieren Sie die primäre Aktion prominent (typischerweise unten rechts oder zentriert)
- Stellen Sie sicher, dass die primäre Aktion immer sichtbar ist (sticky Positioning bei Bedarf)

---

### S6: Konsistente Navigationsmuster

**AusELDER**: Navigationsstruktur und -muster müssen über alle Bildschirme und Abschnitte der Anwendung hinweg konsistent bleiben.

**Begründung**: Konsistenz reduziert die Lernkurve und kognitive Belastung. Vorhersehbare Navigation ermöglicht es Benutzern, mentale Modelle aufzubauen.

**Metriken**:
- Navigationsposition konsistent über 100% der Bildschirme
- Navigationselementreihenfolge konsistent
- Gleiches Navigationsmuster anwendungsweit verwendet
- Nicht mehr als ein Navigationsparadigma (z.B. Tabs und Seitenleiste nicht mischen)

**Testverfahren**:
1. Überprüfen Sie alle Bildschirme auf Navigationskonsistenz
2. Benutzertests: Benutzer navigieren ohne Fehler zu 5 verschiedenen Abschnitten
3. Messen Sie die Zeit zur Navigation zu bestimmten Abschnitten (sollte über Sitzungen abnehmen)
4. Mentales Modell-Test: Benutzer ELDERn mit >80% Genauigkeit voraus, wo Funktionen zu finden sind

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Verschieben der Navigationsposition zwischen Bildschirmen
- ❌ Ändern von Navigationsbeschriftungen oder -symbolen für dieselbe Funktion
- ❌ Unterschiedliche Navigationsmuster für verschiedene Abschnitte
- ❌ Unerwartetes Verstecken der Navigation

**Implementierungshinweise**:
- Verwenden Sie Standard-Navigationsmuster (obere Leiste, Seitenmenü, untere Tabs)
- Halten Sie die Navigation jederzeit sichtbar und zugänglich
- Verwenden Sie dieselben Symbole und Beschriftungen konsistent
- Bieten Sie auf jedem Bildschirm eine „Home"-Schaltfläche

---

### S7: Klare Fehlervermeidung

**AusELDER**: Das System muss Fehler verhindern, bevor sie auftreten, durch Beschränkungen, Warnungen und Bestätigungen.

**Begründung**: Die Fehlerbehebung kann für Seniorennutzer herausfordernd sein. Prävention ist effektiver als Korrektur.

**Metriken**:
- Formularvalidierung erfolgt in Echtzeit mit hilfreicher Anleitung
- Destruktive Aktionen erfordern explizite Bestätigung
- Deaktivierte Steuerelemente haben eine klare Erklärung der Anforderungen
- Ungültige Eingaben werden verhindert oder sofort abgefangen

**Testverfahren**:
1. Versuchen Sie, alle möglichen Fehlerzustände zu erstellen
2. Verifizieren Sie, dass jeder eine angemessene Prävention oder Warnung hat
3. Benutzertests: Fehlerrate sollte bei allen Aufgaben <10% sein
4. Messen Sie das Benutzervertrauen vor/nach Fehlervermeidung

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Validierung von Formularen nur bei Übermittlung
- ❌ Zulassen destruktiver Aktionen ohne Bestätigung
- ❌ Unklare Fehlermeldungen im Nachhinein
- ❌ Deaktivieren von Steuerelementen ohne Erklärung

**Implementierungshinweise**:
- Verwenden Sie Eingabemasken und Beschränkungen (z.B. Datumsauswahl vs. Textfelder)
- Bieten Sie Inline-Validierung mit hilfreichen Meldungen
- Zeigen Sie Bestätigungsdialoge für wichtige Aktionen
- Verwenden Sie klare, spezifische Beschränkungsmeldungen („Muss 6-12 Zeichen sein", nicht „Ungültig")

---

### S8: Großzügige Fehlertoleranz

**AusELDER**: Wenn Fehler auftreten, muss das System klare Erklärungen, einfache Korrekturpfade bieten und Datenverlust verhindern.

**Begründung**: Fehler sind unvermeidlich. Elegante Fehlerbehandlung erhält das Benutzervertrauen und verhindert Abbruch.

**Metriken**:
- Alle Fehlermeldungen erklären, was passiert ist und wie es zu beheben ist
- Fehlermeldungen verwenden einfache Sprache (Lesestufe: Klasse 8 oder niedriger)
- Benutzer können Fehler korrigieren, ohne eingegebene Daten zu verlieren
- Rückgängig-Funktionalität verfügbar für alle nicht-trivialen Aktionen

**Testverfahren**:
1. Lösen Sie absichtlich alle Fehlerbedingungen aus
2. Verifizieren Sie, dass jede Fehlermeldung klar und umsetzbar ist
3. Benutzertests: 90%+ Benutzer erholen sich erfolgreich von Fehlern
4. Messen Sie die Zeit zur Behebung häufiger Fehler (Ziel <30 Sekunden)

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Technische Fehlermeldungen („Fehler 404", „Exception in Zeile 42")
- ❌ Fehlermeldungen, die nicht erklären, wie das Problem zu beheben ist
- ❌ Löschen von Formulardaten bei Validierungsfehlern
- ❌ Keine Möglichkeit, Aktionen rückgängig zu machen

**Implementierungshinweise**:
- Schreiben Sie Fehlermeldungen in einfacher Sprache: „Wir konnten diese Seite nicht finden"
- Bieten Sie immer nächste Schritte: „Versuchen Sie zu suchen oder kehren Sie zur Startseite zurück"
- Bewahren Sie Benutzereingaben bei Fehlern
- Implementieren Sie Rückgängig für wichtige Aktionen (30-60 Sekunden Zeitfenster)

---

### S9: Begrenzte Informationen pro Ansicht

**AusELDER**: Jeder Bildschirm oder jede Ansicht sollte eine begrenzte Menge an Informationen präsentieren, die sich auf eine einzelne Aufgabe oder ein Konzept konzentriert.

**Begründung**: Informationsüberflutung verursacht kognitive Belastung. Fokussierte Bildschirme verbessern das Verständnis und die Aufgabenerledigung.

**Metriken**:
- Maximal 3-5 Hauptinformationen pro Bildschirm
- Eine primäre Aufgabe/Ziel pro Bildschirm
- Inhalt passt auf einen Bildschirm ohne Scrollen für primäre Aktionen (wenn möglich)
- Informationsarchitektur: maximal 3 Ebenen tief

**Testverfahren**:
1. Zählen Sie unterschiedliche Informationen pro Bildschirm
2. Benutzertests: Verständnistests (Benutzer erinnern sich an 80%+ der Schlüsselinformationen)
3. Aufgabenabschlussraten für mehrstufige Abläufe
4. Bewertung der kognitiven Belastung mit NASA-TLX mit Seniorennutzern

**Compliance-Level**: Empfohlen

**Anti-Patterns**:
- ❌ „Dashboard"-Bildschirme mit 10+ verschiedenen Metriken/Widgets
- ❌ Endloses Scrollen von Inhalten ohne klare Abschnitte
- ❌ Kombinieren mehrerer unabhängiger Aufgaben auf einem Bildschirm
- ❌ Tiefe hierarchische Navigation (>3 Ebenen)

**Implementierungshinweise**:
- Teilen Sie komplexe Abläufe in mehrere Schritte auf
- Verwenden Sie progressive Offenlegung für zusätzliche Details
- Implementieren Sie „Chunking" - gruppieren Sie verwandte Informationen
- Bieten Sie klare Abschnittsumbrüche und Überschriften

---

### S10: Vorhersehbare Interaktionen

**AusELDER**: Alle interaktiven Elemente müssen sich auf vorhersehbare, standardisierte Weise verhalten, die den Benutzererwartungen entspricht.

**Begründung**: Unerwartetes Verhalten erhöht die kognitive Belastung und reduziert das Vertrauen. Vorhersehbare Interaktionen nutzen bestehende mentale Modelle.

**Metriken**:
- Interaktive Elemente folgen Plattformkonventionen (iOS HIG, Material Design, Windows UX)
- Links sehen aus wie Links, Schaltflächen sehen aus wie Schaltflächen
- Hover/Focus-Zustände bieten klares Feedback
- Aktionen haben vorhersehbare Ergebnisse, die ihren Beschriftungen entsprechen

**Testverfahren**:
1. Überprüfen Sie alle interaktiven Elemente gegen Plattformstandards
2. Benutzertests: Benutzer ELDERn Elementverhalten mit 90%+ Genauigkeit voraus
3. Messen Sie Verwirrungsvorfälle (Ziel: <5% der Interaktionen)
4. A/B-Test Standard vs. Nicht-Standard-Implementierungen

**Compliance-Level**: Minimum

**Anti-Patterns**:
- ❌ Links als Schaltflächen gestaltet oder umgekehrt
- ❌ Benutzerdefinierte Steuerelemente, die sich nicht wie Standardversionen verhalten
- ❌ Unerwartete Seitenneuladen oder Navigation
- ❌ Steuerelemente, die in verschiedenen Kontexten unterschiedliche Dinge tun

**Implementierungshinweise**:
- Verwenden Sie Standard-UI-Komponentenbibliotheken
- Befolgen Sie plattformspezifische Design-Richtlinien
- Stellen Sie sicher, dass Links navigieren und Schaltflächen Aktionen ausführen
- Bieten Sie klare Hover- und Focus-Zustände
- Testen Sie mit Screenreadern zur Sicherstellung semantischer Korrektheit

---

## Zusammenfassungstabelle der Anforderungen

| ID | Anforderung | Compliance-Level |
|----|-------------|------------------|
| S1 | Minimales visuelles Durcheinander | Minimum |
| S2 | Große, klare Typografie | Minimum |
| S3 | Hoher Farbkontrast | Minimum |
| S4 | Große Touch-Ziele | Minimum |
| S5 | Einzelne primäre Aktion pro Bildschirm | Empfohlen |
| S6 | Konsistente Navigationsmuster | Minimum |
| S7 | Klare Fehlervermeidung | Minimum |
| S8 | Großzügige Fehlertoleranz | Minimum |
| S9 | Begrenzte Informationen pro Ansicht | Empfohlen |
| S10 | Vorhersehbare Interaktionen | Minimum |

---

**Für Übersetzungen siehe:**
- [Englisch (English)](learning-friendly.en.md)
- [Arabisch (العربية)](learning-friendly.ar.md)

**Für Implementierungs-Checklisten siehe:**
- [Produkt-Checkliste](../checklists/product-checklist.de.md)
- [UX-Checkliste](../checklists/ux-checklist.de.md)
- [Engineering-Checkliste](../checklists/engineering-checklist.de.md)
