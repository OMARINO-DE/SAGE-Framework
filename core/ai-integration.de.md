# KI-Integration im SAGE Framework

**Version:** 1.0  
**Sprache:** Deutsch  
**Letzte Aktualisierung:** 28. Januar 2026

---

## 1. Einführung

Dieses Dokument definiert, wie Technologien der Künstlichen Intelligenz (KI) in SAGE-konforme Systeme integriert werden sollen. KI hat ein enormes Potenzial, die Benutzererfahrung von Senioren zu verbessern, birgt jedoch auch Risiken in Bezug auf Transparenz, Datenschutz, Bias und Komplexität. Diese Spezifikation stellt sicher, dass KI Senioren ethisch, transparent und effektiv dient.

---

## 2. Grundlegende KI-Prinzipien für SAGE

### 2.1 Menschenzentrierte KI
- KI MUSS die menschliche Autonomie fördern, nicht ersetzen
- Senioren MÜSSEN die Kontrolle über KI-unterstützte Entscheidungen behalten
- KI-Empfehlungen MÜSSEN optional sein, nicht verpflichtend

### 2.2 Transparenz zuerst
- KI-Entscheidungen MÜSSEN in einfacher Sprache erklärbar sein
- Nutzer MÜSSEN wissen, wann sie mit KI interagieren
- Systemverhalten MUSS vorhersehbar sein

### 2.3 Privacy by Design
- On-Device-Verarbeitung MUSS gegenüber Cloud bevorzugt werden
- Datenminimierung MUSS durchgesetzt werden
- Senioren MÜSSEN verstehen, welche Daten KI verwendet

### 2.4 Altersinklusive KI
- KI-Modelle MÜSSEN auf altersbezogene Verzerrungen getestet werden
- Trainingsdaten MÜSSEN Seniorenperspektiven einschließen
- KI DARF NICHT auf Stereotypen basieren

---

## 3. KI-Themenbereiche

### 3.1 Erklärbare KI (XAI) & Transparenz

**Ziel:** KI-Entscheidungen für Senioren ohne technisches Wissen verständlich machen.

**Anforderungen:**

**AI-XAI-1:** Alle KI-generierten Empfehlungen MÜSSEN eine verständliche Erklärung enthalten
- **Begründung:** Senioren müssen verstehen, warum das System etwas vorschlägt
- **Metrik:** 90% der Senioren können mit eigenen Worten erklären, warum die KI eine Empfehlung gegeben hat
- **Test:** Nutzerinterviews nach KI-Interaktion

**AI-XAI-2:** Systeme MÜSSEN eine „Warum ist das passiert?"-Schaltfläche für KI-Aktionen bereitstellen
- **Begründung:** Transparenz schafft Vertrauen
- **Metrik:** Funktion ist für 85% der Nutzer beim ersten Gebrauch auffindbar
- **Test:** Usability-Testing

**AI-XAI-3:** Erklärungen MÜSSEN technischen Jargon vermeiden
- **Begründung:** Begriffe wie „Algorithmus", „neuronales Netz", „Modellkonfidenz" verwirren Senioren
- **Metrik:** Lesbarkeits-Score für allgemeines Publikum (Flesch-Kincaid Grad 8 oder niedriger)
- **Test:** Automatisierte Lesbarkeitsanalyse

**AI-XAI-4:** Visuelle Erklärungen MÜSSEN Texterklärungen begleiten, wenn möglich
- **Begründung:** Multimodale Erklärungen verbessern das Verständnis
- **Metrik:** Kombination aus visuell + Text verbessert Verständnis um 30% vs. nur Text
- **Test:** A/B-Testing

**Anti-Muster:**
- „Der Algorithmus hat entschieden..."
- Verborgene KI-Prozesse
- Komplexe Konfidenzwerte ohne Kontext

---

### 3.2 KI-Ethik & Verantwortungsvolle KI für vulnerable Bevölkerungsgruppen

**Ziel:** Sicherstellen, dass KI Senioren ethisch dient und sie vor Manipulation schützt.

**Anforderungen:**

**AI-ETH-1:** KI DARF KEINE Dark Patterns oder manipulative Techniken verwenden
- **Begründung:** Senioren sind anfällig für Manipulation
- **Metrik:** Unabhängige Prüfung findet null manipulative Muster
- **Test:** Ethische KI-Prüfung

**AI-ETH-2:** KI DARF kognitive Schwachstellen NICHT ausnutzen
- **Begründung:** Zustände wie leichte kognitive Beeinträchtigung erfordern besonderen Schutz
- **Metrik:** Systemverhalten wird von Gerontologie-Experten überprüft
- **Test:** Expertengutachten

**AI-ETH-3:** KI MUSS Nutzerautonomie über Bequemlichkeit stellen
- **Begründung:** Effizienz darf informierte Zustimmung nicht außer Kraft setzen
- **Metrik:** Alle automatisierten Aktionen können deaktiviert werden
- **Test:** Feature-Audit

**AI-ETH-4:** Systeme MÜSSEN menschliche Override-Mechanismen haben
- **Begründung:** KI-Fehler müssen durch Menschen korrigierbar sein
- **Metrik:** Jede KI-Entscheidung kann durch Nutzer oder Support-Personal rückgängig gemacht werden
- **Test:** Funktionstest

**AI-ETH-5:** KI MUSS auf Altersdiskriminierung getestet werden
- **Begründung:** KI-Modelle können gesellschaftliche Vorurteile übernehmen
- **Metrik:** Leistungsparität über Altersgruppen (±5%)
- **Test:** Fairness-Testing mit diversen Altersgruppen

**Anti-Muster:**
- KI, die „es besser weiß"
- Irreversible KI-Entscheidungen
- Versteckte Automatisierung ohne Zustimmung

---

### 3.3 KI-Personalisierung & Adaptives Lernen

**Ziel:** Systeme lernen Seniorenpräferenzen unter Wahrung von Privatsphäre und Selbstbestimmung.

**Anforderungen:**

**AI-PERS-1:** Personalisierung MUSS Opt-in sein, nicht Standard
- **Begründung:** Senioren müssen lernenden Systemen zustimmen
- **Metrik:** Explizite Zustimmung eingeholt, bevor Personalisierung beginnt
- **Test:** Zustimmungsfluss-Audit

**AI-PERS-2:** Nutzer MÜSSEN gelernte Präferenzen einsehen und löschen können
- **Begründung:** Transparenz und Kontrolle über persönliche Daten
- **Metrik:** Präferenz-Dashboard in ≤3 Taps/Klicks erreichbar
- **Test:** Barrierefreiheits-Audit

**AI-PERS-3:** Adaptive Schwierigkeit MUSS sich graduell anpassen
- **Begründung:** Plötzliche Änderungen verwirren Nutzer
- **Metrik:** Interface-Änderungen erfolgen in ≤10% Schritten
- **Test:** Longitudinales Nutzertest

**AI-PERS-4:** Systeme MÜSSEN erklären, warum sie sich angepasst haben
- **Begründung:** Nutzer brauchen Kontext für Änderungen
- **Metrik:** Benachrichtigung für alle adaptiven Änderungen gezeigt
- **Test:** Funktionstest

**AI-PERS-5:** Personalisierung DARF KEINE Isolationsblasen schaffen
- **Begründung:** Überpersonalisierung begrenzt Entdeckung
- **Metrik:** Mindestens 20% der Inhalte/Optionen liegen außerhalb gelernter Präferenzen
- **Test:** Algorithmus-Audit

**Anti-Muster:**
- „Smarte" Funktionen, die nicht deaktiviert werden können
- Unerklärte Interface-Änderungen
- Personalisierung ohne Zustimmung

---

### 3.4 Konversations-KI & Sprachschnittstellen

**Ziel:** Natürliche Sprachinteraktion, die Senioren-Kommunikationsmuster respektiert.

**Anforderungen:**

**AI-VOICE-1:** Sprachassistenten MÜSSEN langsamere Sprachmuster unterstützen
- **Begründung:** Senioren sprechen möglicherweise langsamer oder mit Pausen
- **Metrik:** Erkennungsgenauigkeit ≥95% für Senioren-Sprachmuster
- **Test:** Spracherkennungstest mit Senioren

**AI-VOICE-2:** Systeme MÜSSEN Unterbrechung ohne Strafe erlauben
- **Begründung:** Senioren müssen KI korrigieren oder stoppen können
- **Metrik:** Unterbrechung innerhalb von 0,5 Sekunden erkannt
- **Test:** Funktionstest

**AI-VOICE-3:** Sprachausgabe MUSS anpassbar sein (Geschwindigkeit, Tonhöhe, Lautstärke)
- **Begründung:** Hören und kognitive Verarbeitung variieren
- **Metrik:** Einstellungen zugänglich und persistent
- **Test:** Barrierefreiheits-Audit

**AI-VOICE-4:** Konversations-KI MUSS einfache, direkte Sprache verwenden
- **Begründung:** Komplexe Syntax verwirrt Senioren
- **Metrik:** Durchschnittliche Satzlänge ≤15 Wörter
- **Test:** Linguistische Analyse

**AI-VOICE-5:** Mehrteilige Gespräche MÜSSEN Kontext beibehalten
- **Begründung:** Senioren sollten Informationen nicht wiederholen müssen
- **Metrik:** Kontext für ≥5 Gesprächsrunden beibehalten
- **Test:** Gesprächsfluss-Test

**AI-VOICE-6:** Sprachschnittstellen MÜSSEN visuelle Fallbacks haben
- **Begründung:** Nicht alle Senioren können oder wollen Sprache nutzen
- **Metrik:** Jede Sprachaktion hat ein visuelles Äquivalent
- **Test:** Feature-Paritäts-Audit

**Anti-Muster:**
- Schnelle, unterbrechungsfreie KI-Monologe
- Nur-Sprach-Interaktionen
- Kontextverlust, der Wiederholung erfordert

---

### 3.5 KI-gestützte Fehlervermeidung & -behebung

**Ziel:** Fehler proaktiv verhindern und Fehler elegant behandeln.

**Anforderungen:**

**AI-ERR-1:** Systeme MÜSSEN ungewöhnliche Aktionen erkennen und Absicht bestätigen
- **Begründung:** Fehler können ernsthafte Konsequenzen haben
- **Metrik:** Anomale Aktionen lösen 100% der Zeit Bestätigung aus
- **Test:** Funktionstest mit Grenzfällen

**AI-ERR-2:** Bestätigungen MÜSSEN spezifisch sein, nicht generisch
- **Begründung:** Generische Warnungen werden ignoriert
- **Metrik:** Bestätigungsdialoge erwähnen spezifische Aktion und Konsequenz
- **Test:** Content-Audit

**AI-ERR-3:** Rückgängig-Mechanismen MÜSSEN KI-bewusst sein
- **Begründung:** Nutzer müssen KI-Aktionen rückgängig machen können
- **Metrik:** Alle KI-Aktionen können in ≤2 Schritten rückgängig gemacht werden
- **Test:** Funktionstest

**AI-ERR-4:** KI MUSS Korrekturen vorschlagen, nicht nur Fehler markieren
- **Begründung:** Senioren profitieren von Anleitung
- **Metrik:** 80% der Fehlermeldungen enthalten umsetzbare Vorschläge
- **Test:** Content-Audit

**AI-ERR-5:** Fehlerbehebung MUSS Nutzerarbeit erhalten
- **Begründung:** Neu anfangen ist frustrierend
- **Metrik:** Null Datenverlust während Fehlerbehebung
- **Test:** Stresstest

**Anti-Muster:**
- „Sind Sie sicher?" ohne Kontext
- Irreversible KI-Aktionen
- Fehlermeldungen ohne Lösungen

---

### 3.6 Bias-Erkennung & Altersinklusive KI

**Ziel:** Sicherstellen, dass KI-Modelle Senioren fair und ohne Stereotypen behandeln.

**Anforderungen:**

**AI-BIAS-1:** Trainingsdaten MÜSSEN diverse Altersgruppen einschließen
- **Begründung:** Modelle, die nur mit jüngeren Nutzern trainiert wurden, funktionieren bei Senioren schlecht
- **Metrik:** ≥30% der Trainingsdaten von Nutzern 65+
- **Test:** Datensatz-Audit

**AI-BIAS-2:** Modell-Performance MUSS über Altersgruppen evaluiert werden
- **Begründung:** Durchschnittsperformance kann altersbezogene Disparitäten verbergen
- **Metrik:** Performance-Metriken separat für 65+ Kohorte berichtet
- **Test:** Stratifizierte Evaluation

**AI-BIAS-3:** KI DARF KEINE Annahmen allein auf Basis des Alters treffen
- **Begründung:** Senioren sind vielfältig; Alter ≠ Fähigkeit
- **Metrik:** Kein altersbasiertes Feature-Gating
- **Test:** Feature-Audit

**AI-BIAS-4:** Systeme MÜSSEN mit Senioren aus diversen Hintergründen getestet werden
- **Begründung:** Kulturelle, bildungsbezogene und sozioökonomische Faktoren zählen
- **Metrik:** Testing umfasst Senioren aus ≥3 demografischen Kategorien
- **Test:** Nutzerforschungsplanung

**AI-BIAS-5:** Bias-Audits MÜSSEN jährlich durchgeführt werden
- **Begründung:** Modelle driften; neue Biases können entstehen
- **Metrik:** Jährliches Dritt-Audit abgeschlossen
- **Test:** Audit-Zeitplan

**Anti-Muster:**
- Einheitsgröße-KI für „die Alten"
- Performance-Metriken ohne Alterssegmentierung
- Annahmen über technische Kompetenz

---

### 3.7 Datenschutzwahrende KI

**Ziel:** KI-Vorteile maximieren bei Minimierung von Datenschutzrisiken.

**Anforderungen:**

**AI-PRIV-1:** On-Device-Verarbeitung MUSS genutzt werden, wenn möglich
- **Begründung:** Daten verlassen nie das Gerät = maximaler Datenschutz
- **Metrik:** ≥70% der KI-Verarbeitung erfolgt on-device
- **Test:** Architektur-Review

**AI-PRIV-2:** Cloud-basierte KI MUSS Notwendigkeit rechtfertigen
- **Begründung:** Cloud-Nutzung erhöht Risiko
- **Metrik:** Dokumentation erklärt, warum on-device nicht möglich ist
- **Test:** Design-Review

**AI-PRIV-3:** An KI-Modelle gesendete Daten MÜSSEN minimiert werden
- **Begründung:** Nur notwendige Daten sollten verarbeitet werden
- **Metrik:** Dateninventar zeigt nur essenzielle Felder genutzt
- **Test:** Datenschutz-Audit

**AI-PRIV-4:** KI-Modelle DÜRFEN KEINE persönlichen Daten speichern
- **Begründung:** Zustandslose Verarbeitung reduziert Breach-Risiko
- **Metrik:** Keine PII in Modell-Training oder -Speicherung
- **Test:** Sicherheits-Audit

**AI-PRIV-5:** Föderiertes Lernen MUSS für Personalisierung erwogen werden
- **Begründung:** Lernen ohne Zentralisierung von Daten
- **Metrik:** Evaluation föderiertes Lernen dokumentiert
- **Test:** Design-Dokumentations-Review

**AI-PRIV-6:** Nutzer MÜSSEN über KI-Datennutzung informiert werden
- **Begründung:** Informierte Zustimmung erfordert Verständnis
- **Metrik:** Datennutzungserklärung in einfacher Sprache
- **Test:** Content-Review

**Anti-Muster:**
- „KI braucht Zugriff auf alles"
- Cloud-first-KI ohne Begründung
- Undurchsichtige Datennutzung

---

### 3.8 Kognitive Laststeuerung via KI

**Ziel:** KI nutzen, um mentale Belastung zu reduzieren ohne Abhängigkeit zu schaffen.

**Anforderungen:**

**AI-COG-1:** KI MUSS intelligente Standardwerte basierend auf Kontext bieten
- **Begründung:** Reduziert Entscheidungsmüdigkeit
- **Metrik:** Nutzer akzeptieren Standardwerte ≥60% der Zeit
- **Test:** Nutzungsanalytik

**AI-COG-2:** Standardwerte MÜSSEN leicht änderbar sein
- **Begründung:** Standardwerte sollten sich nicht erzwungen anfühlen
- **Metrik:** Standard-Override-Option sichtbar und ≤2 Taps/Klicks
- **Test:** Usability-Testing

**AI-COG-3:** Progressive Disclosure MUSS KI-gesteuert sein
- **Begründung:** Komplexität nur zeigen, wenn nötig
- **Metrik:** Erweiterte Features verborgen, bis Nutzer Bereitschaft zeigt
- **Test:** Adaptive UI-Testing

**AI-COG-4:** KI MUSS nächste Aktionen vorhersagen ohne aufdringlich zu sein
- **Begründung:** Hilfreiche Vorschläge vs. nervige Unterbrechungen
- **Metrik:** Vorschlag-Akzeptanzrate ≥40%, Ablehnungsrate ≤10%
- **Test:** Nutzungsanalytik

**AI-COG-5:** Aufgabenkomplexität MUSS KI-geschätzt und kommuniziert werden
- **Begründung:** Nutzer brauchen realistische Erwartungen
- **Metrik:** Zeit-/Aufwandschätzungen genau innerhalb ±20%
- **Test:** Validierung prädiktives Modell

**Anti-Muster:**
- Zu viele Vorschläge
- Verborgene erweiterte Features ohne Entdeckungspfad
- Ungenaue Aufwandschätzungen

---

## 4. KI-Modelle & Technologien

### 4.1 Sprachmodelle

**Empfohlen:**
- **Small Language Models (SLMs):** Phi-3, Gemma für on-device, datenschutzwahrende Konversations-KI
- **Large Language Models (LLMs):** GPT-4, Claude, Llama für komplexes Verständnis (mit Datenschutz-Safeguards)
- **Speech-to-Text:** Whisper, wav2vec für Spracheingabe
- **Text-to-Speech:** VITS, Coqui TTS für natürliche Sprachausgabe

**Anforderungen:**
- Modelle MÜSSEN niedrig-latente Inferenz unterstützen (≤2 Sekunden)
- Output MUSS deterministisch sein, wenn Sicherheit kritisch ist
- Halluzinationen MÜSSEN minimiert oder erkannt werden

---

### 4.2 Vision-Modelle

**Empfohlen:**
- **Objekterkennung:** YOLO, DETR für UI-Element-Identifikation
- **OCR:** TrOCR, EasyOCR zum Vorlesen von Text
- **Szenenverständnis:** CLIP, BLIP für kontextuelle Wahrnehmung

**Anforderungen:**
- Genauigkeit ≥90% für Senioren-Anwendungsfälle
- Graceful Degradation bei schlechter Beleuchtung/Kameraqualität
- Datenschutz: Bildverarbeitung on-device wenn möglich

---

### 4.3 Multimodale Modelle

**Empfohlen:**
- **GPT-4V, Gemini, Claude 3:** Kombiniertes Vision + Sprache
- **LLaVA:** Open-Source multimodales Verständnis
- **CogVLM:** Visuelles Denken

**Anforderungen:**
- Cross-modale Erklärungen (beschreiben, was KI „sieht")
- Konsistentes Verhalten über Modalitäten
- Fallback, wenn eine Modalität ausfällt

---

### 4.4 Spezialisierte Modelle

**Emotionserkennung:**
- Modelle: FER+ (Gesichtsausdruck-Erkennung)
- **Anforderung:** Nur für empathische Reaktion genutzt, NICHT Überwachung
- **Datenschutz:** Nur on-device, keine Emotionsdaten gespeichert

**Intent-Klassifikation:**
- Modelle: BERT, RoBERTa feingetuned für Senioren-Absichten
- **Anforderung:** Hohe Präzision (≥85%) um Fehlinterpretation zu vermeiden

**Anomalie-Erkennung:**
- Modelle: Isolation Forest, Autoencoders
- **Anforderung:** Niedrige False-Positive-Rate (≤5%) um Alert-Müdigkeit zu vermeiden

**Text-Vereinfachung:**
- Modelle: SBERT-basierte Vereinfachung
- **Anforderung:** Bedeutung bewahren bei Komplexitätsreduktion

---

### 4.5 Modell-Optimierung

**Quantisierung:**
- INT8, INT4 für schnellere Inferenz auf begrenzter Hardware
- **Anforderung:** Genauigkeitsverlust ≤2% vs. Vollpräzision

**Destillation:**
- Kleinere Modelle (Schüler) lernen von größeren Modellen (Lehrer)
- **Anforderung:** 50%+ Größenreduktion mit <5% Genauigkeitsverlust

**LoRA/QLoRA:**
- Effizientes Fine-Tuning für seniorenspezifische Anpassungen
- **Anforderung:** Fine-Tuning-Daten umfassen Senioren-Nutzer

---

## 5. Implementierungsleitlinien

### 5.1 KI-Entwicklungslebenszyklus

1. **Anforderungserhebung:** Senioren in Definition von KI-Bedürfnissen einbeziehen
2. **Datensammlung:** Altersdiverse, repräsentative Daten sicherstellen
3. **Modellauswahl:** On-device, erklärbare Modelle priorisieren
4. **Training:** Fairness-bewusste Trainingstechniken nutzen
5. **Evaluation:** Mit Senioren testen, Bias messen
6. **Deployment:** Performance über Altersgruppen überwachen
7. **Wartung:** Regelmäßige Bias-Audits, Modell-Updates

---

### 5.2 Test-Anforderungen

**Funktionstest:**
- KI-Features funktionieren wie dokumentiert
- Erklärungen sind korrekt

**Performance-Test:**
- Latenz ≤2 Sekunden für Echtzeit-KI
- Inferenz auf typischen Senioren-Geräten (ältere Hardware)

**Fairness-Test:**
- Performance-Parität über Altersgruppen
- Keine diskriminierenden Muster

**Sicherheitstest:**
- KI kann nicht manipuliert werden, um private Daten zu enthüllen
- Adversarial Robustness

**Usability-Test:**
- Senioren können KI-Features verstehen und kontrollieren
- Fehlerbehebung ist intuitiv

---

### 5.3 Dokumentationsanforderungen

**Für Entwickler:**
- Modellarchitektur und Fähigkeiten
- Inferenz-Anforderungen (Rechenleistung, Speicher)
- Bekannte Einschränkungen und Fehlermodi

**Für Nutzer:**
- Was KI in einfacher Sprache tut
- Wie KI-Features zu kontrollieren/deaktivieren sind
- Datennutzungs- und Datenschutzrichtlinien

**Für Prüfer:**
- Trainingsdatenquellen
- Bias-Mitigationstechniken
- Performance-Metriken nach Altersgruppe

---

## 6. Compliance-Levels

### Minimum (Erforderlich)
- AI-XAI-1, AI-XAI-2, AI-XAI-3
- AI-ETH-1, AI-ETH-2, AI-ETH-3, AI-ETH-4
- AI-PRIV-1, AI-PRIV-3, AI-PRIV-6
- AI-BIAS-2, AI-BIAS-3

### Empfohlen (Best Practice)
- AI-XAI-4
- AI-ETH-5
- AI-PERS-1, AI-PERS-2, AI-PERS-4
- AI-VOICE-1, AI-VOICE-2, AI-VOICE-3, AI-VOICE-6
- AI-ERR-1, AI-ERR-3, AI-ERR-4
- AI-PRIV-2, AI-PRIV-4
- AI-BIAS-1, AI-BIAS-4

### Stark (Exzellenz)
- Alle Anforderungen
- AI-PERS-5 (Anti-Blasen-Mechanismen)
- AI-PRIV-5 (Föderiertes Lernen)
- AI-BIAS-5 (Jährliche Audits)
- AI-COG-1 bis AI-COG-5 (Vollständige kognitive Laststeuerung)

---

## 7. Anti-Muster

**Das undurchsichtige Orakel:**
- KI trifft Entscheidungen ohne Erklärung
- „Vertraue dem Algorithmus"-Mentalität

**Der überhilfsbereite Assistent:**
- KI macht alles automatisch
- Nutzer verlieren Autonomie und Fähigkeiten

**Der Daten-Hamsterer:**
- KI sammelt exzessive Daten „nur für den Fall"
- Datenschutz als Nachgedanke

**Das Einheitsmodell:**
- KI nimmt an, alle Senioren seien gleich
- Keine Rücksicht auf Diversität

**Der irreversible Automat:**
- KI-Aktionen können nicht rückgängig gemacht werden
- Kein menschlicher Override

**Die Jargon-Maschine:**
- Erklärungen verwenden technische Begriffe
- Setzt KI-Kompetenz voraus

---

## 8. Zukünftige Überlegungen

- **Generative KI-Sicherheit:** Richtlinien für KI-generierte Inhalte (Text, Bilder, Code)
- **KI-Begleiter:** Ethische Grenzen für KI-Beziehungen
- **Kognitive Assessment-KI:** Datenschutzwahrende Erkennung kognitiven Verfalls
- **Kollaborative KI:** Multi-User-KI für Familien-/Pfleger-Koordination

---

## 9. Fazit

KI hat transformatives Potenzial für Senioren-Nutzer, aber nur wenn sie mit Transparenz, Ethik und menschlicher Würde im Kern gestaltet wird. SAGE-konforme KI-Systeme befähigen Senioren ohne sie zu überfordern, personalisieren ohne zu manipulieren und assistieren ohne menschliches Urteilsvermögen zu ersetzen.

---

## 10. Referenzen & Weiterführende Literatur

- IEEE Ethically Aligned Design
- EU AI Act (High-Risk AI Systems)
- ISO/IEC 42001:2023 (AI Management System)
- Partnership on AI Guidelines
- ACM Code of Ethics (AI Principles)

---

**Maintainer:**  
OMARINO IT Services – Omar Zaror (omar@omarino.de)  
**Ursprung:**  
Konzept von Oday Bakkour (https://oday-bakkour.com/)

---

**Lizenz:** MIT  
**Repository:** https://github.com/OMARINO-DE/SAGE-Framework
