# Government Services Example - User Flows & Acceptance Tests

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## User Flow: Driver's License Renewal

**SAGE Requirements**: S7, G1, G4, G6, A5, E6

### Step 1: Eligibility Check (Error Prevention - S7)
```
✓ Check eligibility before starting
✓ Explain why checking first
✓ Show clear yes/no result
```

### Step 2: Information Review (Smart Defaults - A5)
```
Pre-filled from DMV records:
- Name, address, DOB
- All editable
- Explain data source
```

### Step 3-5: Photo Upload, Payment, Confirmation
- Progress indicator (G1) shows 1/5, 2/5, etc.
- Can save and resume (G6)
- Transparent about timeline (E6)

---

## Acceptance Tests Summary

### Critical Tests

**S1-S10 (Safe Simplicity)**
- Pass Criteria: ≤7 elements per screen, 18px min font, 7:1 contrast, 64px buttons
- Expected Result: PASS on all screens

**A1-A10 (Assisted Autonomy)**
- Pass Criteria: Can save progress, edit before submit, help available, respectful tone
- Expected Result: PASS with 90%+ user success

**G1-G10 (Guided Interaction)**
- Pass Criteria: Progress visible, next action clear, can cancel, completion feedback
- Expected Result: PASS with 85%+ task completion

**E1-E10 (Emotional Trust)**
- Pass Criteria: Government seals visible, <2s load, privacy explained, support accessible
- Expected Result: PASS with 4+ trust rating

### User Testing Requirements
- Minimum 20 seniors age 65+
- Diverse language backgrounds
- Mix of digital literacy levels
- Test on desktop + mobile + tablet

---

## Resources

- [Overview](overview.en.md)
- [German (Deutsch)](user-flows.de.md)
- [Arabic (العربية)](user-flows.ar.md)
- [SAGE Framework](../../core/)
