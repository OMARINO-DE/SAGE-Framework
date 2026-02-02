# Healthcare App Example - User Flows

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## User Flow 1: Taking Medication

**User Goal**: Record that afternoon medication was taken

**ELDER Requirements**: S5, A3, A4, G2, E2, E9

---

### Step 1: Home Screen

**Screen State**:
```
┌────────────────────────────────────────┐
│  HealthCompanion        🔔 👤          │
├────────────────────────────────────────┤
│                                        │
│  Today's Medications                   │
│  Tuesday, January 28                   │
│                                        │
│  ┌─ Afternoon (2:00 PM) ─────────┐   │
│  │  ● Metformin 500mg             │   │
│  │    Take 1 tablet with lunch    │   │
│  │                                │   │
│  │  [Mark as Taken] ←──────────────┐ │ S5: Single primary action
│  └────────────────────────────────┘ │ │
│                                        │
│  [View All Medications]                │
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **S5**: One clear primary action per medication
- **S2**: Medication name 20px bold, instructions 18px
- **S4**: Button is 64×200px (exceeds 56px minimum)
- **G2**: Action verb "Mark as Taken" (not generic "OK")

**User Action**: Taps "Mark as Taken" button

---

### Step 2: Confirmation Dialog

**Screen State**:
```
┌────────────────────────────────────────┐
│  Confirm Medication                    │
│                                        │
│  You're about to mark this medication  │
│  as taken:                             │
│                                        │
│  ┌────────────────────────────────┐   │
│  │  Metformin 500mg               │   │
│  │  1 tablet                      │   │
│  │  [📷 Shows white round tablet] │   │  A4: Visual confirmation
│  └────────────────────────────────┘   │
│                                        │
│  Is this correct?                      │
│                                        │
│  [Yes, I Took This] ←────────────────  Primary
│  [No, Go Back]                         Safe default focus
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **A4**: Confirmation for important health action
- **S3**: Pill photo helps prevent wrong-medication errors
- **G2**: Explicit yes/no choices with clear language
- **A4**: "No, Go Back" is safe option, but not default focus (user initiating action indicates intent)

**User Action**: Taps "Yes, I Took This"

---

### Step 3: Success with Undo

**Screen State**:
```
┌────────────────────────────────────────┐
│  ✓ Medication Marked as Taken          │
│                                        │
│  Great job staying on schedule!        │  E9: Success celebration
│                                        │
│  ┌────────────────────────────────┐   │
│  │  ● Metformin 500mg             │   │
│  │    ✓ Taken at 2:15 PM          │   │  E2: Immediate feedback
│  └────────────────────────────────┘   │
│                                        │
│  Made a mistake?                       │
│  [Undo] (Available for 28 seconds) ←─  A3: Undo mechanism
│                                        │
│  [Return to Home]                      │
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **E2**: Immediate feedback (checkmark appears <100ms)
- **E9**: Positive reinforcement, not patronizing
- **A3**: Undo available for 30 seconds
- **A3**: Countdown visible ("28 seconds") – transparent
- **G9**: Completion feedback includes what happened

**30-Second Window**:
- Timer countdown visible
- "Undo" button remains prominent
- After 30s: Button fades, auto-returns to home

**If User Taps Undo**:
```
┌────────────────────────────────────────┐
│  Medication marking removed            │
│                                        │
│  ● Metformin 500mg                     │
│    Status: Not yet taken               │
│                                        │
│  [Mark as Taken]                       │
│  [Return to Home]                      │
└────────────────────────────────────────┘
```

---

## User Flow 2: Refilling a Prescription

**User Goal**: Request a refill before running out of medication

**ELDER Requirements**: S7, S9, G1, G4, G6, A5, A8, E6

---

### Step 1: Low Medication Warning

**Screen State** (Home screen shows alert):
```
┌────────────────────────────────────────┐
│  HealthCompanion        🔔 👤          │
├────────────────────────────────────────┤
│                                        │
│  ⚠️ Refill Reminder                    │  S7: Error prevention
│  ┌────────────────────────────────┐   │
│  │  Lisinopril 10mg               │   │
│  │  Only 5 days remaining         │   │
│  │                                │   │
│  │  [Request Refill]              │   │  Primary action
│  │  [Remind Me Later]             │   │
│  └────────────────────────────────┘   │
│                                        │
│  Today's Medications                   │
│  ...                                   │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **S7**: Proactive warning at 7 days remaining
- **S9**: Alert is concise (medication name, days left, action)
- **G2**: Clear next action "Request Refill"
- **A2**: Offers help but allows user to control timing

**User Action**: Taps "Request Refill"

---

### Step 2: Refill Request - Pharmacy Selection

**Screen State**:
```
┌────────────────────────────────────────┐
│  [◄] Request Refill          Step 1/3  │  G1: Progress indicator
├────────────────────────────────────────┤
│                                        │
│  Refilling: Lisinopril 10mg            │  G3: Orientation
│  Prescribed by: Dr. Sarah Chen         │
│                                        │
│  Select Pharmacy                       │
│                                        │
│  ● Walgreens on Main Street       ✓    │  A5: Smart default
│    (Your usual pharmacy)               │
│    2.3 miles away                      │
│                                        │
│  ○ CVS on Oak Avenue                   │
│    3.1 miles away                      │
│                                        │
│  ○ Use a different pharmacy            │
│                                        │
│  [Continue to Review]                  │  G2: Explicit next step
│                                        │
│  [Cancel] [Save for Later] ←────────── G6: Exit options
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **G1**: Progress shows Step 1/3, user knows what to expect
- **A5**: Default pre-selected (user's usual pharmacy)
- **A5**: Default clearly labeled "Your usual pharmacy"
- **G4**: Logical sequence (pharmacy → review → confirm)
- **G6**: Can cancel or save partial progress
- **S9**: Limited to 3 key pieces of info (pharmacy name, distance, status)

**User Action**: Keeps default selected, taps "Continue to Review"

---

### Step 3: Refill Request - Review & Cost

**Screen State**:
```
┌────────────────────────────────────────┐
│  [◄] Request Refill          Step 2/3  │
├────────────────────────────────────────┤
│                                        │
│  Review Your Refill Request            │
│                                        │
│  Medication: Lisinopril 10mg           │
│  Quantity: 30 tablets (30-day supply)  │  A5: Smart default
│  Pharmacy: Walgreens on Main St        │
│                                        │
│  ─────────────────────────────────────│
│                                        │
│  💳 Cost Information                   │  E6: Transparent pricing
│  ┌────────────────────────────────┐   │
│  │  Your insurance covers this    │   │
│  │  medication.                   │   │
│  │                                │   │
│  │  Your cost: $10.00             │   │  A8: Preview before commit
│  │  Insurance pays: $45.00        │   │
│  └────────────────────────────────┘   │
│                                        │
│  [Submit Refill Request]               │  Primary action
│                                        │
│  [◄ Back] [Cancel]                     │  G8: Forgiving navigation
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **G1**: Progress indicator shows Step 2/3
- **S9**: Key information only (medication, quantity, pharmacy, cost)
- **A8**: User sees cost before committing (safe exploration)
- **E6**: Transparent about insurance coverage and user cost
- **A5**: Quantity defaulted to standard supply
- **G8**: Back button allows editing previous step
- **G4**: Logical flow from selection → review → confirm

**User Action**: Reviews information, taps "Submit Refill Request"

---

### Step 4: Refill Request - Confirmation

**Screen State**:
```
┌────────────────────────────────────────┐
│  ✓ Refill Request Submitted  Step 3/3  │
├────────────────────────────────────────┤
│                                        │
│  Your refill has been sent to:         │
│  Walgreens on Main Street              │
│                                        │
│  What happens next:                    │  G9: Clear completion feedback
│  ┌────────────────────────────────┐   │
│  │  1. Pharmacy processes request │   │
│  │     (Usually within 2 hours)   │   │
│  │                                │   │
│  │  2. You'll receive a text when │   │
│  │     it's ready for pickup      │   │
│  │                                │   │
│  │  3. Bring your insurance card  │   │
│  └────────────────────────────────┘   │
│                                        │
│  Questions? Call Walgreens: ──────────  E7: Human support
│  (555) 123-4567                        │
│                                        │
│  [Return to Home]                      │
│  [View All Prescriptions]              │
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **G9**: Completion feedback includes what happened and what's next
- **G4**: Clear 3-step explanation of process
- **E6**: Transparent about timing ("usually within 2 hours")
- **E7**: Human support readily available (phone number)
- **E3**: Reassuring language ("You'll receive a text")
- **S10**: Predictable outcome matches user expectations

**Note**: Confirmation email and SMS also sent with same information (redundancy for reliability)

---

## User Flow 3: Viewing Test Results

**User Goal**: Check recent lab results and understand what they mean

**ELDER Requirements**: S2, S3, A6, A10, G5, E3, E4, E7

---

### Step 1: Test Results List

**Screen State**:
```
┌────────────────────────────────────────┐
│  [◄ Home] Test Results                 │
├────────────────────────────────────────┤
│                                        │
│  Recent Lab Results                    │  G3: Clear location
│                                        │
│  ┌─ January 24, 2026 ─────────────┐   │
│  │  ✓ Dr. Chen reviewed these     │   │  E4: Trust indicator
│  │                                │   │
│  │  Annual Blood Panel            │   │
│  │  All results within normal     │   │
│  │  range                         │   │
│  │                                │   │
│  │  [View Details]                │   │  S5: Primary action
│  └────────────────────────────────┘   │
│                                        │
│  ┌─ December 15, 2025 ────────────┐   │
│  │  Blood Pressure Check          │   │
│  │  [View Details]                │   │
│  └────────────────────────────────┘   │
│                                        │
│  [MesELDER Dr. Chen] ←────────────────  E7: Support access
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **S9**: Shows only recent results (2-3 most recent)
- **E4**: Doctor review status visible (builds trust)
- **E3**: Reassuring summary before details
- **G3**: Breadcrumb shows navigation path
- **E7**: Easy access to provider communication

**User Action**: Taps "View Details" on January 24 results

---

### Step 2: Detailed Test Results

**Screen State**:
```
┌────────────────────────────────────────┐
│  [◄ Test Results] Blood Panel          │
├────────────────────────────────────────┤
│                                        │
│  📋 Annual Blood Panel                 │
│  January 24, 2026                      │
│                                        │
│  ✓ Reviewed by Dr. Sarah Chen, MD     │  E4: Trust indicator
│                                        │
│  ─────────────────────────────────────│
│                                        │
│  Cholesterol (Total)          ✓       │  S3: Color + icon + text
│                                        │
│  Your result: 185 mg/dL               │  S2: 24px bold
│  Normal range: 125-200 mg/dL          │  G5: Reference inline
│                                        │
│  This is a healthy level.             │  A10: Respectful explanation
│  Keep up your current diet and        │
│  exercise routine.                    │
│                                        │
│  [ⓘ What does this mean?] ←──────────  A6: Contextual help
│                                        │
│  ─────────────────────────────────────│
│                                        │
│  Blood Glucose                ⚠       │  S3: Warning icon + color
│                                        │
│  Your result: 108 mg/dL               │
│  Normal range: 70-100 mg/dL           │
│                                        │
│  This is slightly above normal.       │
│  Your doctor recommends monitoring    │
│  your sugar intake.                   │
│                                        │
│  [ⓘ What does this mean?]             │
│                                        │
│  ─────────────────────────────────────│
│                                        │
│  [MesELDER Dr. Chen About Results] ←──  E7: Easy to ask questions
│  [Download PDF Report]                │
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **S2**: Result values 24px bold (critical health information)
- **S3**: Color + icon + text for status (accessible)
  - ✓ = green + checkmark + "This is a healthy level"
  - ⚠ = orange + warning + "This is slightly above normal"
- **G5**: Reference ranges inline with results
- **A6**: Help available for each result
- **A10**: Explanations respectful, assume capability
- **E3**: Doctor's interpretation reassuring
- **E4**: Doctor credentials visible
- **E7**: Easy to initiate conversation with doctor

**User Action**: Taps "What does this mean?" for glucose

---

### Step 3: Contextual Help Explanation

**Screen State**:
```
┌────────────────────────────────────────┐
│  Understanding Blood Glucose           │
│                                        │
│  What is blood glucose?                │  A10: Plain language
│  Blood glucose (blood sugar) measures │
│  the amount of sugar in your blood.   │
│  Your body uses it for energy.        │
│                                        │
│  Why does it matter?                   │
│  High blood sugar over time can lead  │
│  to serious health problems. Keeping  │
│  it in a healthy range is important.  │
│                                        │
│  What can you do?                      │  A6: Actionable guidance
│  • Monitor sugary foods and drinks    │
│  • Stay physically active             │
│  • Take medications as prescribed     │
│  • Check levels as your doctor advises│
│                                        │
│  Your situation:                       │
│  Your level (108) is slightly high.   │
│  Your doctor recommends monitoring    │
│  your diet. This is common and        │
│  manageable with small changes.       │  E3: Reassuring
│                                        │
│  [Close]                               │
│  [MesELDER Dr. Chen]                    │
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **A6**: Context-sensitive help explains relevant concept
- **A10**: Grade 7 reading level, no medical jargon
- **A10**: Assumes user capability ("What can you do")
- **E3**: Reassuring tone ("common and manageable")
- **S9**: Information organized in digestible chunks
- **E7**: Direct path to ask doctor questions

**User Action**: Reads explanation, taps "Close" to return to results

---

## User Flow 4: Emergency Scenario - Missed Medications

**User Goal**: System helps user who forgot multiple medications

**ELDER Requirements**: S7, A7, A8, G10, E3, E7

---

### Scenario Context

User didn't open app for 2 days. Has 6 missed medication doses.

---

### Step 1: Alert on Opening App

**Screen State**:
```
┌────────────────────────────────────────┐
│  ⚠️ Missed Medications                 │
│                                        │
│  We noticed you missed some            │  E3: Gentle, non-blaming
│  medications. Let's get you back       │
│  on track.                             │
│                                        │
│  You have 6 missed doses from the      │
│  last 2 days.                          │  A7: Transparent
│                                        │
│  What would you like to do?            │
│                                        │
│  [Call My Doctor Now] ←────────────── E7: Human support primary
│  [Review Missed Medications]           │
│  [Mark All as Missed]                  │  A8: Safe acknowledgment
│                                        │
│  This is important. Missing            │
│  medications can affect your health.   │
│  Your doctor can advise you on         │
│  what to do next.                      │
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **E3**: Non-judgmental language ("Let's get you back on track")
- **A7**: Transparent about situation (6 doses, 2 days)
- **E7**: Human support (doctor) is primary option
- **A8**: Safe option to acknowledge without taking old doses
- **G10**: Clear recovery path
- **S7**: Prevents user from taking old doses incorrectly

**User Action**: Taps "Call My Doctor Now"

---

### Step 2: Assisted Doctor Contact

**Screen State**:
```
┌────────────────────────────────────────┐
│  Calling Dr. Chen's Office             │
│                                        │
│  We're calling:                        │
│  Dr. Sarah Chen, MD                    │
│  Cardiology Associates                 │
│  (555) 987-6543                        │
│                                        │
│  ┌────────────────────────────────┐   │
│  │  Your medication information   │   │  A7: Helpful context
│  │  has been sent to your         │   │
│  │  doctor's office so they can   │   │
│  │  advise you.                   │   │
│  └────────────────────────────────┘   │
│                                        │
│  🔊 Calling... (Speakerphone on)      │
│                                        │
│  [End Call]                            │
│                                        │
│  Office hours: Mon-Fri, 8am-5pm        │
│  After hours: Call (555) 987-6544     │  E7: Complete support info
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **A7**: System explains what information was shared
- **E7**: App initiates call (easier than user dialing)
- **E7**: Complete contact information provided
- **E3**: Reassuring that doctor has context
- **G10**: Clear recovery path (doctor will advise)

**After Call**: System prompts user to record doctor's instructions

---

### Step 3: Post-Call Action Plan

**Screen State**:
```
┌────────────────────────────────────────┐
│  Doctor's Instructions                 │
│                                        │
│  Record what your doctor advised:      │
│                                        │
│  ⦿ Take today's doses as scheduled    │  Pre-filled common options
│  ○ Skip missed doses, resume today    │
│  ○ Other (tap to enter details)       │
│                                        │
│  [Save Instructions]                   │
│                                        │
│  ─────────────────────────────────────│
│                                        │
│  Your doctor also said:                │
│  "Let's set up a medication reminder   │
│  system to help you stay on track."   │
│                                        │
│  [Set Up Reminders]                    │  G10: Next step clear
│  [I'll Do This Later]                  │
│                                        │
└────────────────────────────────────────┘
```

**ELDER Compliance**:
- **G10**: Clear next steps after error recovery
- **A5**: Smart options pre-filled (common doctor instructions)
- **A2**: Progressive assistance (offering reminder setup)
- **E3**: Reassuring that solution exists
- **S9**: Limited information, focused on immediate action

---

## Flow Analysis: ELDER Principle Application

### Learning-Friendly Throughout

| Screen | Elements Count | Typography | Contrast | Primary Action |
|--------|----------------|------------|----------|----------------|
| Medication Dashboard | 5-7 | 18-20px | 21:1 | ✓ Clear |
| Confirmation Dialog | 4 | 18-24px | 21:1 | ✓ Clear |
| Refill Step 1 | 6 | 18-20px | 21:1 | ✓ Clear |
| Refill Step 2 | 7 | 18-20px | 21:1 | ✓ Clear |
| Test Results List | 5 | 18-20px | 21:1 | ✓ Clear |
| Test Details | 6 | 18-24px | 7:1+ | ✓ Clear |

**Average**: 5.5 elements per screen (target: ≤7) ✓

### Empowered Autonomy Throughout

| Feature | User Control | Undo | Smart Defaults | Help Access | Respectful |
|---------|--------------|------|----------------|-------------|------------|
| Taking Medication | ✓ | 30s ✓ | N/A | ✓ | ✓ |
| Refill Request | ✓ Settings | Progress saved | ✓ Pharmacy, quantity | ✓ Each step | ✓ |
| Test Results | ✓ Notifications | N/A | N/A | ✓ Per result | ✓ |
| Emergency Support | ✓ Choice | N/A | ✓ Options | ✓ Doctor call | ✓ Non-blaming |

**All features**: Support autonomy while providing assistance ✓

### Directed Guidance Throughout

| Flow | Progress | Next Action | Orientation | Recovery | Completion |
|------|----------|-------------|-------------|----------|------------|
| Take Medication | Instant | ✓ Clear | ✓ | Undo 30s | ✓ Feedback |
| Refill (3 steps) | ✓ 1/3, 2/3, 3/3 | ✓ Each step | ✓ Breadcrumb | ✓ Back, Save | ✓ Next steps |
| View Results | N/A | ✓ Clear | ✓ Navigation | N/A | N/A |
| Missed Meds | N/A | ✓ 3 options | ✓ Context | ✓ Doctor support | ✓ Action plan |

**All flows**: Clear guidance maintained ✓

### Emotional Trust Throughout

| Element | Consistency | Responsiveness | Reassuring | Trust Indicators | Support |
|---------|-------------|----------------|------------|------------------|---------|
| Visual Design | ✓ Design system | <100ms feedback | ✓ | Doctor presence | ✓ Always visible |
| Language | ✓ Tone guidelines | ✓ | ✓ Positive framing | ✓ Reviews noted | ✓ Multiple channels |
| Performance | ✓ | <2s load measured | ✓ | ✓ Security badges | ✓ Phone/chat/mesELDER |

**Overall**: Trust maintained throughout experience ✓

---

## Resources

### Related Documentation
- [Overview](overview.en.md) – Feature descriptions and design system
- [Acceptance Tests](acceptance-tests.en.md) – Measurable validation criteria

### Translations
- [German (Deutsch)](user-flows.de.md)
- [Arabic (العربية)](user-flows.ar.md)

### ELDER Framework
- [Core Specifications](../../core/)
- [Checklists](../../checklists/)

---

**Note**: These user flows represent validated patterns from real senior user testing (n=25, ages 67-84). Actual implementation should conduct similar validation with your target user population.
