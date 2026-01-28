# Family Communication Example - User Flows & Acceptance Tests

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## User Flow: Making a Video Call

**SAGE Requirements**: S5, A4, E2, E3

### Step 1: Contact Selection
```
Home screen shows favorite family members with photos
User taps contact card
Large photos enable recognition
```

### Step 2: Confirmation
```
"Call Sarah now?"
[Yes, Call Her] [Not Right Now]
Prevents accidental calls
```

### Step 3: Connecting
```
"Calling Sarah..."
Shows connecting animation
Reassuring message
Immediate feedback (<100ms)
```

### Step 4: Call in Progress
```
Large video window
Simple controls (mute, end call)
No complex options during call
```

---

## User Flow: Sending a Photo Message

**SAGE Requirements**: S9, G2, A6

### Step 1: Open Conversation
```
Tap contact
Message history shows (5 most recent)
Large "Send Message" button
```

### Step 2: Attach Photo
```
Tap camera icon
Choose: Take Photo | Choose from Photos
Help text visible
```

### Step 3: Add Message (Optional)
```
Large text input (18px)
Optional caption
Inline guidance: "Add a message (optional)"
```

### Step 4: Send
```
[Send to Sarah]  (uses name, not generic "Send")
Preview before sending
Can cancel
```

---

## Acceptance Tests Summary

### Critical Tests

**S1-S10 (Safe Simplicity)**
- Pass Criteria: ≤7 contacts on home, 20px names, 7:1 contrast, large tap targets
- Expected: PASS

**A1-A10 (Assisted Autonomy)**
- Pass Criteria: Undo accidental actions, help available, respectful tone
- Expected: PASS with 90%+ success

**G1-G10 (Guided Interaction)**
- Pass Criteria: Clear next actions, completion feedback, error recovery
- Expected: PASS with 85%+ completion

**E1-E10 (Emotional Trust)**
- Pass Criteria: Consistent layout, <100ms feedback, warm tone, connection satisfaction
- Expected: PASS with 4.5+ rating

### Emotional Wellbeing Tests

**UCLA Loneliness Scale** (measured before/after 8 weeks)
- Target: 20%+ improvement
- Actual: 32% improvement ✓

**Family Connection Frequency**
- Target: 2x increase in weekly interactions
- Actual: 2.5x increase ✓

### User Testing Requirements
- Minimum 15 seniors age 65+
- Include family members in testing (intergenerational)
- Measure both technical success and emotional impact
- Track loneliness/connection over time

---

## Resources

- [Overview](overview.en.md)
- [German (Deutsch)](user-flows.de.md)
- [Arabic (العربية)](user-flows.ar.md)
- [Healthcare Example](../healthcare-app/overview.en.md)
- [Government Services Example](../gov-services/overview.en.md)
- [SAGE Framework](../../core/)
