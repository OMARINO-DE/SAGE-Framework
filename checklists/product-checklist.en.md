# ELDER Framework - Product Checklist

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Overview

This checklist helps Product Managers define requirements and validate that products meet ELDER Framework standards. Use this during product definition, sprint planning, and acceptance testing.

**How to Use**:
- ✅ Check items that are complete and verified
- 📋 Note items that need attention
- 🚫 Mark items that are not applicable (with justification)
- 📊 Use compliance percentage to track progress

**Target**: Minimum 90% compliance for ELDER-certified products

---

## Learning-Friendly Requirements

### Visual Design & Layout

- [ ] **S1.1**: Each screen section contains ≤7 interactive elements
- [ ] **S1.2**: White space comprises ≥40% of screen area
- [ ] **S1.3**: Clear visual hierarchy (primary, secondary, tertiary)
- [ ] **S1.4**: User testing confirms 90%+ can identify primary action
- [ ] **Evidence**: Screenshots, layout analysis, user test results

### Typography

- [ ] **S2.1**: Base font size is ≥18px for body text
- [ ] **S2.2**: Minimum font size anywhere is 14px
- [ ] **S2.3**: Line height is 1.5-1.8x font size
- [ ] **S2.4**: Line length is 50-75 characters maximum
- [ ] **S2.5**: Legible sans-serif fonts used (Inter, Open Sans, etc.)
- [ ] **Evidence**: CSS measurements, readability tests

### Color & Contrast

- [ ] **S3.1**: Text contrast ratio ≥7:1 (WCAG AAA)
- [ ] **S3.2**: Interactive element contrast ≥3:1
- [ ] **S3.3**: Color not sole means of conveying information
- [ ] **S3.4**: High contrast mode available
- [ ] **Evidence**: Contrast checker reports (WebAIM, Stark)

### Touch Targets

- [ ] **S4.1**: Interactive elements are ≥56x56px (optimal for seniors)
- [ ] **S4.2**: Minimum 8px spacing between touch targets
- [ ] **S4.3**: Full button/link area is clickable
- [ ] **S4.4**: Mis-tap rate <5% in user testing
- [ ] **Evidence**: DevTools measurements, touch testing results

### Actions & Navigation

- [ ] **S5.1**: One clear primary action per screen
- [ ] **S5.2**: Primary action 1.5-2x more prominent than secondary
- [ ] **S5.3**: Navigation location consistent across 100% of screens
- [ ] **S5.4**: Same navigation pattern used throughout
- [ ] **S5.5**: Home button available on every screen
- [ ] **Evidence**: Screen audit, navigation flow documentation

### Error Handling

- [ ] **S7.1**: Real-time form validation with helpful guidance
- [ ] **S7.2**: Destructive actions require confirmation
- [ ] **S7.3**: Input masks used for structured data
- [ ] **S7.4**: Error rate <10% across all tasks
- [ ] **S8.1**: Error mesELDERs in plain language (grade 8 level)
- [ ] **S8.2**: Errors explain how to fix the issue
- [ ] **S8.3**: User input preserved on errors
- [ ] **S8.4**: Undo available for important actions (30s window)
- [ ] **Evidence**: Error scenario testing, user recovery rates

### Information Architecture

- [ ] **S9.1**: Maximum 3-5 main pieces of information per screen
- [ ] **S9.2**: Information architecture ≤3 levels deep
- [ ] **S9.3**: Users recall 80%+ of key information in testing
- [ ] **S10.1**: Interactive elements follow platform conventions
- [ ] **S10.2**: User prediction of behavior 90%+ accurate
- [ ] **Evidence**: IA documentation, comprehension testing

---

## Empowered Autonomy Requirements

### User Control

- [ ] **A1.1**: All assistance features have on/off controls
- [ ] **A1.2**: Assistance preferences persist across sessions
- [ ] **A1.3**: Users can adjust assistance level granularly
- [ ] **A1.4**: 95%+ users can find assistance settings
- [ ] **Evidence**: Settings audit, user testing

### Assistance & Support

- [ ] **A2.1**: Assistance adapts to user skill level
- [ ] **A2.2**: Default assistance is minimal, not maximal
- [ ] **A2.3**: System reduces assistance as user becomes proficient
- [ ] **A6.1**: Help available on 100% of screens
- [ ] **A6.2**: Help accessible without leaving context
- [ ] **A6.3**: Help relevant to current task/screen
- [ ] **Evidence**: Assistance adaptation logs, help coverage audit

### Reversibility & Safety

- [ ] **A3.1**: Undo available for 100% of state-changing actions
- [ ] **A3.2**: Undo accessible within 3 interactions
- [ ] **A3.3**: Minimum 30-second undo window
- [ ] **A3.4**: 95%+ users successfully undo when needed
- [ ] **A4.1**: Important actions require explicit confirmation
- [ ] **A4.2**: Confirmations explain consequences clearly
- [ ] **A4.3**: Safe option is default focus
- [ ] **A8.1**: Preview/sandbox modes for risky operations
- [ ] **A8.2**: Auto-save protects work (every 30-60 seconds)
- [ ] **Evidence**: Undo testing, confirmation dialog review

### Defaults & Complexity

- [ ] **A5.1**: 80%+ users complete tasks with default settings
- [ ] **A5.2**: Defaults optimize for senior-friendly values
- [ ] **A5.3**: All defaults are overridable
- [ ] **A9.1**: Core features (80% use cases) in main interface
- [ ] **A9.2**: Advanced features behind "More options"
- [ ] **A9.3**: Clear path from basic to advanced
- [ ] **Evidence**: UELDER analytics, default modification rates

### Communication

- [ ] **A7.1**: Loading states visible for operations >2s
- [ ] **A7.2**: System actions explained in plain language
- [ ] **A7.3**: No unexpected behavior without explanation
- [ ] **A10.1**: Zero use of childish or patronizing language
- [ ] **A10.2**: Assistance phrased as offers, not instructions
- [ ] **A10.3**: Language assumes capability
- [ ] **A10.4**: Respect perception rating ≥4.5/5
- [ ] **Evidence**: Content audit, user surveys

---

## Directed Guidance Requirements

### Progress & Wayfinding

- [ ] **G1.1**: Multi-step flows (3+ steps) have progress indicators
- [ ] **G1.2**: Progress shows current, completed, and remaining steps
- [ ] **G1.3**: Users state position correctly 95%+ of time
- [ ] **G2.1**: 100% of screens have identifiable next action
- [ ] **G2.2**: Next action uses action-oriented language
- [ ] **G2.3**: 90%+ users identify next action in <3 seconds
- [ ] **G3.1**: Page titles visible on 100% of screens
- [ ] **G3.2**: Navigation shows current location
- [ ] **G3.3**: Breadcrumbs for hierarchies 3+ levels deep
- [ ] **Evidence**: Flow documentation, wayfinding tests

### Guidance & Help

- [ ] **G4.1**: Process steps follow logical, predictable sequence
- [ ] **G4.2**: 90%+ users predict next step correctly
- [ ] **G5.1**: Complex fields have contextual guidance
- [ ] **G5.2**: Guidance appears before/during input, not just after errors
- [ ] **G5.3**: Error rate decreases 30%+ with inline guidance
- [ ] **Evidence**: Sequence validation, guidance effectiveness testing

### Navigation & Control

- [ ] **G6.1**: Cancel/exit option on 100% of multi-step flows
- [ ] **G6.2**: Cancel consequences clearly explained
- [ ] **G6.3**: Partial progress saved when appropriate
- [ ] **G7.1**: Previously entered information reused appropriately
- [ ] **G7.2**: All pre-filled data is editable
- [ ] **G8.1**: Back button functions correctly 100% of time
- [ ] **G8.2**: Users can edit previous steps without restarting
- [ ] **G8.3**: Progress saved when navigating between steps
- [ ] **Evidence**: Navigation testing, data persistence verification

### Feedback

- [ ] **G9.1**: 100% of significant actions provide completion feedback
- [ ] **G9.2**: Feedback includes what happened and what's next
- [ ] **G9.3**: 95%+ users understand what happened
- [ ] **G10.1**: 100% of error states include recovery instructions
- [ ] **G10.2**: Error mesELDERs appear near error source
- [ ] **G10.3**: 90%+ users successfully recover from errors in <30s
- [ ] **Evidence**: Completion testing, error recovery metrics

---

## Emotional Trust Requirements

### Visual Consistency

- [ ] **E1.1**: Design system covers 95%+ of UI elements
- [ ] **E1.2**: Maximum 5-7 functional colors used
- [ ] **E1.3**: Maximum 2-3 font families used
- [ ] **E1.4**: 80%+ of UI uses standard components
- [ ] **Evidence**: Design system audit, component uELDER report

### Responsiveness & Feedback

- [ ] **E2.1**: Feedback appears within 100ms of interaction
- [ ] **E2.2**: Loading states for operations >200ms
- [ ] **E2.3**: 100% of interactive elements have hover/focus states
- [ ] **E2.4**: Responsiveness rating ≥4/5 in user testing
- [ ] **Evidence**: Performance testing, interaction audit

### Communication & Trust

- [ ] **E3.1**: Content tone complies with tone guidelines
- [ ] **E3.2**: Readability at grade 8 level or below
- [ ] **E3.3**: No technical jargon in user-facing content
- [ ] **E3.4**: Tone warmth rating ≥4/5
- [ ] **E4.1**: Security badges visible on sensitive pages
- [ ] **E4.2**: Privacy policy accessible within 2 clicks
- [ ] **E4.3**: Contact information clearly available
- [ ] **E4.4**: 90%+ users can identify trust indicators
- [ ] **Evidence**: Content audit, trust perception surveys

### Predictability & Performance

- [ ] **E5.1**: 95%+ interactions follow established patterns
- [ ] **E5.2**: UI patterns match platform conventions
- [ ] **E5.3**: Surprise/confusion rate <5%
- [ ] **E6.1**: Privacy policy in plain language (grade 8)
- [ ] **E6.2**: Data collection explained at point of collection
- [ ] **E6.3**: 85%+ users understand data practices
- [ ] **E8.1**: Page load time <2s on 4G
- [ ] **E8.2**: Time to interactive <3s
- [ ] **E8.3**: 99%+ uptime
- [ ] **Evidence**: Performance monitoring, privacy comprehension testing

### Support & Recognition

- [ ] **E7.1**: Contact options visible within 2 clicks
- [ ] **E7.2**: Multiple contact methods available
- [ ] **E7.3**: Support satisfaction ≥4/5
- [ ] **E9.1**: Key milestones trigger appropriate acknowledgment
- [ ] **E9.2**: Celebrations are dignified, not patronizing
- [ ] **E10.1**: Icon recognition rate >85%
- [ ] **E10.2**: Icons paired with text labels
- [ ] **Evidence**: Support metrics, recognition testing, icon comprehension

---

## Product Requirements Documentation

### Feature Specs Should Include:

- [ ] ELDER requirement IDs addressed
- [ ] Success criteria mapped to ELDER metrics
- [ ] User stories from senior perspective
- [ ] Acceptance criteria referencing ELDER compliance levels
- [ ] Accessibility requirements (WCAG + ELDER)

### User Stories Template:

```
As a senior user [persona],
I want to [action],
So that I can [goal],
Without [senior-specific barrier]

ELDER Requirements: [S1, A3, G2, etc.]
Acceptance Criteria:
- [ ] Meets S1 (visual clutter <7 elements)
- [ ] Meets A3 (undo within 3 clicks)
- [ ] Meets G2 (next action clear)
- [ ] User testing: 90%+ task completion
```

---

## Testing & Validation

### Before Feature Sign-Off:

- [ ] All applicable ELDER requirements checked
- [ ] User testing with ≥5 senior users (65+)
- [ ] Automated accessibility scan (WAVE, axe)
- [ ] Manual accessibility review
- [ ] Contrast and font size measurements
- [ ] Touch target measurements
- [ ] Error scenario testing
- [ ] Performance testing

### Evidence to Collect:

- [ ] Screenshots/recordings of implementation
- [ ] User testing session notes and videos
- [ ] Accessibility scan reports
- [ ] Measurement data (contrast, sizes, timing)
- [ ] Analytics baseline (for post-launch comparison)
- [ ] User satisfaction scores

---

## Compliance Summary

**Compliance Calculation**: (Checked items / Applicable items) × 100

**Target Compliance Levels**:
- **Minimum Product Viability**: 80% of Minimum requirements
- **ELDER Compliant**: 90% of Minimum + 70% of Recommended
- **ELDER Exemplary**: 95% of Minimum + 85% of Recommended + 50% of Strong

**Current Status**: ___% compliant

**Next Steps**:
1. ________________________________
2. ________________________________
3. ________________________________

---

**For translations, see:**
- [German (Deutsch)](product-checklist.de.md)
- [Arabic (العربية)](product-checklist.ar.md)

**Related Resources:**
- [UX Checklist](ux-checklist.en.md)
- [Engineering Checklist](engineering-checklist.en.md)
- [Core Specifications](../core/)
