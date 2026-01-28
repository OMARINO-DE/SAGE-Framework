# GitHub Copilot Instructions  
## Project: SAGE Framework (Senior-Adaptive Guided Ecosystem)

---

## 0. Mission Statement

You are GitHub Copilot operating inside the repository:

https://github.com/OMARINO-DE/SAGE-Framework

Your mission is to **fully generate an open-source framework repository** called **SAGE Framework**, including:
- Repository structure
- Governance and licensing
- Trilingual documentation (**English, German, Arabic**)
- Core framework specifications
- Checklists and standards mapping
- Real-world examples
- A full scientific whitepaper (10–12 pages equivalent)

You must proceed **step by step**, and after **each step**, instruct the developer to **commit and push** changes to the repository.

---

## 1. Global Non-Negotiable Rules

The Framework is developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany (https://www.omarino.de).
e-mail: omar@omarino.de

### 1.1 Trilingual Requirement (MANDATORY)

Every human-readable document MUST be provided in **three languages**:

- **English (EN)** – canonical
- **German (DE)**
- **Arabic (AR)** (RTL-aware)

Use ONE of the following patterns:

#### A) Multi-file (preferred for long documents)
- `filename.en.md`
- `filename.de.md`
- `filename.ar.md`

#### B) Single-file (only for short docs)
Sections ordered as:
1. English
2. Deutsch
3. العربية

❌ Do NOT partially translate  
❌ Do NOT mix languages in one section

---

### 1.2 Arabic RTL Rule

All Arabic files MUST include this note at the top:

> ملاحظة: هذا المستند مكتوب بالعربية وقد يُعرض من اليمين إلى اليسار حسب بيئة العرض.

Keep technical acronyms (WCAG, ISO, UX, UI) in Latin characters.

---

### 1.3 Terminology Consistency

The following terms MUST be used verbatim in all languages:

- **SAGE** – Senior-Adaptive Guided Ecosystem
- **Pillars**:
  - Safe Simplicity
  - Assisted Autonomy
  - Guided Interaction
  - Emotional Trust Layer

Create and maintain a trilingual glossary:
- `glossary/glossary.en.md`
- `glossary/glossary.de.md`
- `glossary/glossary.ar.md`

---

### 1.4 Specification Quality Rules

Every framework requirement MUST include:

1. Requirement ID (e.g., S1, A3)
2. Requirement statement
3. Rationale
4. Metrics
5. Test procedure
6. Compliance level (Minimum / Recommended / Strong)
7. Anti-patterns

No vague language.  
Everything must be **auditable** and **testable**.

---

### 1.5 Git Workflow Rule (MANDATORY)

After **each step**, output the following commands:

```bash
git status
git add .
git commit -m "<clear message>"
git push origin main


Copilot must also recommend the commit message.

2. Execution Plan (STRICT ORDER)
STEP 1 — Repository Initialization & Governance
Create directories:
.github/
.github/ISSUE_TEMPLATE/
core/
standards-mapping/
checklists/
examples/
examples/healthcare-app/
examples/gov-services/
examples/family-communication/
research/
governance/
glossary/
assets/

Add root files (English-only where industry-standard):

LICENSE (MIT)

CODE_OF_CONDUCT.md

SECURITY.md

CONTRIBUTING.md

CITATION.cff

Governance (TRILINGUAL):

governance/GOVERNANCE.en.md

governance/GOVERNANCE.de.md

governance/GOVERNANCE.ar.md

governance/ROADMAP.en.md

governance/ROADMAP.de.md

governance/ROADMAP.ar.md

GitHub templates (English):

.github/pull_request_template.md

.github/ISSUE_TEMPLATE/bug_report.md

.github/ISSUE_TEMPLATE/feature_request.md

Commit message:

chore: initialize repository structure and governance

STEP 2 — Trilingual README + Glossary
README

Create README.md with three sections:

English

Deutsch

العربية

Include:

What SAGE is / is not

The four pillars

How to use SAGE

Repository structure

Contribution & license

Glossary

Create:

glossary/glossary.en.md

glossary/glossary.de.md

glossary/glossary.ar.md

Commit message:

docs: add trilingual README and glossary

STEP 3 — Core Pillar Specifications (FULL)

Create three files per pillar:

Safe Simplicity

core/safe-simplicity.en.md

core/safe-simplicity.de.md

core/safe-simplicity.ar.md

Assisted Autonomy

core/assisted-autonomy.en.md

core/assisted-autonomy.de.md

core/assisted-autonomy.ar.md

Guided Interaction

core/guided-interaction.en.md

core/guided-interaction.de.md

core/guided-interaction.ar.md

Emotional Trust Layer

core/emotional-trust.en.md

core/emotional-trust.de.md

core/emotional-trust.ar.md

Each spec MUST include:

Goal

Scope

Definitions

Requirements (numbered)

Metrics

Test procedures

Compliance levels

Anti-patterns

Implementation notes

Commit message:

docs: add trilingual SAGE core specifications

STEP 4 — Standards Mapping (TRILINGUAL)

Create mappings:

WCAG

ISO 9241-210

Nielsen Heuristics

Files:

standards-mapping/*.en.md

standards-mapping/*.de.md

standards-mapping/*.ar.md

Each mapping must explain:

Related standard concept

What SAGE adds

How to verify compliance

Commit message:

docs: add trilingual standards mapping

STEP 5 — Checklists (TRILINGUAL)

Create:

checklists/product-checklist.*.md

checklists/ux-checklist.*.md

checklists/engineering-checklist.*.md

checklists/release-checklist.*.md

Each checklist item must:

Reference requirement IDs

Include evidence expectations

Commit message:

docs: add trilingual SAGE checklists

STEP 6 — Real-World Examples (TRILINGUAL)

Examples:

1. Healthcare App
2. Government Services
3. Family Communication

For each example:

overview.*.md

user-flows.*.md

acceptance-tests.*.md

Acceptance tests MUST be measurable.

Commit message:

docs: add trilingual real-world examples

STEP 7 — Scientific Whitepaper (10–12 pages)

Create:

research/whitepaper.en.md

research/whitepaper.de.md

research/whitepaper.ar.md

Structure:

Abstract

Introduction

Problem statement

Related work (no fake citations)

SAGE framework

Deep dive: Safe Simplicity & Assisted Autonomy

Overview: Guided Interaction & Emotional Trust

Implementation strategy

Evaluation plan

Governance

Limitations & future work

Conclusion

Commit message:

docs: add trilingual SAGE whitepaper draft

STEP 8 — Consistency & Indexing

Verify terminology consistency

Ensure all requirement IDs are referenced

Add documentation index:

docs/index.en.md

docs/index.de.md

docs/index.ar.md

Commit message:

chore: documentation consistency and indexing

3. Definition of Done

The project is complete when:

Every document exists in EN / DE / AR

Specs are auditable and testable

Examples include acceptance tests

Whitepaper is complete and structured

Repository is publish-ready

4. Final Instruction

Proceed step by step.
After each step:

Summarize what was created

Output exact git commands

Provide the commit message

DO NOT skip steps.
DO NOT merge steps.
DO NOT invent citations.

You are building a reference-grade open-source framework.


---