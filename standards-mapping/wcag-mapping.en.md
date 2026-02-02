# ELDER Framework - WCAG Mapping
**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de
**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Overview

This document maps ELDER Framework requirements to Web Content Accessibility Guidelines (WCAG) 2.1 success criteria. ELDER complements and extends WCAG by adding senior-specific considerations while maintaining full WCAG compliance.

## Relationship Between ELDER and WCAG

**ELDER is NOT a replacement for WCAG.** Instead:

- ✅ ELDER builds upon WCAG foundations
- ✅ ELDER adds senior-specific requirements
- ✅ ELDER provides implementation guidance for WCAG principles
- ✅ Following ELDER helps achieve WCAG AA/AAA compliance
- ✅ ELDER addresses aspects beyond WCAG scope (emotional trust, autonomy)

## Mapping Table

### Learning-Friendly → WCAG

| ELDER Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **S1: Minimal Visual Clutter** | 1.4.8 Visual Presentation (AAA) | Extends | ELDER emphasizes 40% white space; WCAG focuses on text presentation |
| **S2: Large, Clear Typography** | 1.4.4 Resize Text (AA)<br>1.4.8 Visual Presentation (AAA) | Strengthens | ELDER recommends 18-20px base vs WCAG's 200% zoom requirement |
| **S3: High Contrast Colors** | 1.4.3 Contrast Minimum (AA)<br>1.4.6 Contrast Enhanced (AAA) | Aligns | ELDER requires 7:1 (AAA level) as minimum for seniors |
| **S4: Large Touch Targets** | 2.5.5 Target Size (AAA) | Strengthens | ELDER recommends 56-64px vs WCAG's 44px minimum |
| **S5: Single Primary Action** | 2.4.4 Link Purpose (AA)<br>3.2.4 Consistent Identification (AA) | Complements | ELDER adds clarity through visual hierarchy |
| **S6: Consistent Navigation** | 3.2.3 Consistent Navigation (AA)<br>3.2.4 Consistent Identification (AA) | Aligns | Direct alignment with WCAG principles |
| **S7: Error Prevention** | 3.3.4 Error Prevention (Legal, Financial, Data) (AA)<br>3.3.6 Error Prevention (All) (AAA) | Strengthens | ELDER applies prevention to all actions, not just critical ones |
| **S8: Error Tolerance** | 3.3.1 Error Identification (A)<br>3.3.3 Error Suggestion (AA)<br>3.3.4 Error Prevention (AA) | Extends | ELDER adds undo requirements and data preservation |
| **S9: Limited Information** | 2.4.10 Section Headings (AAA) | Complements | ELDER focuses on cognitive load beyond structure |
| **S10: Predictable Interactions** | 3.2.1 On Focus (A)<br>3.2.2 On Input (A) | Aligns | Direct alignment with predictability principles |

### Empowered Autonomy → WCAG

| ELDER Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **A1: User Control of Assistance** | 2.2.1 Timing Adjustable (A)<br>2.2.4 Interruptions (AAA) | Extends | ELDER adds granular control over assistance features |
| **A2: Progressive Assistance** | N/A | Extends | Goes beyond WCAG scope - adaptive UI |
| **A3: Clear Undo Mechanisms** | 3.3.4 Error Prevention (AA)<br>3.3.6 Error Prevention (All) (AAA) | Complements | ELDER specifies undo requirements explicitly |
| **A4: Explicit Confirmations** | 3.3.4 Error Prevention (AA) | Aligns | ELDER adds specificity about confirmation dialogs |
| **A5: Intelligent Defaults** | N/A | Extends | Beyond WCAG scope - UX optimization |
| **A6: Contextual Help** | 3.3.5 Help (AAA) | Strengthens | ELDER requires inline help, not just availability |
| **A7: Transparent Behavior** | 4.1.3 Status MesELDERs (AA) | Aligns | ELDER emphasizes plain language |
| **A8: Safe Exploration** | 3.3.4 Error Prevention (AA) | Extends | ELDER adds preview/sandbox requirements |
| **A9: Graduated Complexity** | N/A | Extends | Beyond WCAG scope - progressive disclosure |
| **A10: Respectful Tone** | N/A | Extends | Beyond WCAG scope - emotional design |

### Directed Guidance → WCAG

| ELDER Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **G1: Clear Progress Indication** | 2.4.8 Location (AAA)<br>4.1.3 Status MesELDERs (AA) | Aligns | ELDER specifies visual progress requirements |
| **G2: Explicit Next Actions** | 2.4.4 Link Purpose (AA)<br>2.4.9 Link Purpose (Link Only) (AAA) | Strengthens | ELDER adds visual hierarchy requirements |
| **G3: Persistent Orientation** | 2.4.8 Location (AAA)<br>3.2.3 Consistent Navigation (AA) | Aligns | Direct alignment with wayfinding principles |
| **G4: Logical Step Sequencing** | 3.2.3 Consistent Navigation (AA) | Complements | ELDER adds mental model alignment |
| **G5: Inline Guidance** | 3.3.2 Labels or Instructions (A)<br>3.3.5 Help (AAA) | Strengthens | ELDER requires proactive, contextual guidance |
| **G6: Cancel and Exit Options** | 3.2.5 Change on Request (AAA) | Aligns | ELDER emphasizes psychological safety |
| **G7: Smart Defaults** | 1.3.5 Identify Input Purpose (AA) | Complements | ELDER adds pre-filling requirements |
| **G8: Forgiving Navigation** | 3.2.2 On Input (A)<br>3.2.5 Change on Request (AAA) | Extends | ELDER adds flexible navigation requirements |
| **G9: Completion Feedback** | 3.3.1 Error Identification (A)<br>4.1.3 Status MesELDERs (AA) | Extends | ELDER emphasizes success messaging, not just errors |
| **G10: Error Recovery** | 3.3.1 Error Identification (A)<br>3.3.3 Error Suggestion (AA) | Aligns | ELDER adds context preservation requirements |

### Emotional Trust → WCAG

| ELDER Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **E1: Consistent Visual Language** | 1.4.1 Use of Color (A)<br>3.2.4 Consistent Identification (AA) | Complements | ELDER adds design system requirements |
| **E2: Immediate Response Feedback** | 2.1.1 Keyboard (A)<br>4.1.3 Status MesELDERs (AA) | Complements | ELDER specifies timing requirements (100ms) |
| **E3: Reassuring Language** | 3.1.5 Reading Level (AAA) | Extends | ELDER adds tone and emotional considerations |
| **E4: Trust Indicators** | N/A | Extends | Beyond WCAG scope - credibility signals |
| **E5: Predictable Patterns** | 3.2.1 On Focus (A)<br>3.2.2 On Input (A)<br>3.2.4 Consistent Identification (AA) | Aligns | Direct alignment with predictability |
| **E6: Transparent Data Handling** | N/A | Extends | Beyond WCAG scope - privacy considerations (covered by GDPR) |
| **E7: Human Support** | N/A | Extends | Beyond WCAG scope - support availability |
| **E8: Graceful Performance** | 2.2.1 Timing Adjustable (A) | Complements | ELDER adds performance requirements |
| **E9: Success Celebration** | N/A | Extends | Beyond WCAG scope - emotional design |
| **E10: Familiar Metaphors** | 3.1.3 Unusual Words (AAA) | Complements | ELDER applies to visual metaphors |

---

## WCAG Compliance Through ELDER

### How ELDER Helps Achieve WCAG AA

Implementing all ELDER "Minimum" compliance requirements will help achieve or exceed most WCAG 2.1 Level AA criteria. Specifically:

**Perceivable**
- S2, S3, S4 address text sizing, contrast, and touch targets
- G1, G3 address orientation and location

**Operable**
- S6, S10 address consistent, predictable navigation
- A3, G6 address user control and reversibility
- S4, E2 address adequate interaction time and feedback

**Understandable**
- S7, S8, G10 address error prevention and recovery
- A7, E3 address clear language and transparency
- G2, G9 address clear instructions and feedback

**Robust**
- S10, E5 address standard, predictable interactions
- E2 addresses status mesELDERs and feedback

### Beyond WCAG: What ELDER Adds

ELDER addresses aspects not covered by WCAG:

1. **Emotional Design** (E3, E9, A10): Tone, reassurance, respect
2. **Adaptive Complexity** (A2, A9): Progressive assistance and feature revelation
3. **Autonomy Preservation** (A1, A8): User control over assistance
4. **Cognitive Load Management** (S1, S9): Information density beyond structure
5. **Trust Building** (E4, E6, E7): Credibility, privacy, human support
6. **Performance** (E8): Speed and reliability requirements

---

## Implementation Strategy

### For WCAG Compliance

1. **Start with WCAG AA** as baseline
2. **Add ELDER Minimum requirements** for senior-friendliness
3. **Test with actual senior users**, not just automated tools
4. **Document compliance** for both WCAG and ELDER

### Priority Order

**Phase 1: Foundation (WCAG AA + ELDER Minimum)**
- S2, S3, S4: Typography, contrast, touch targets
- S6, S10: Consistent, predictable navigation
- S7, S8: Error prevention and tolerance
- A3, A4: Undo and confirmations
- G1, G2, G3: Progress, next actions, orientation

**Phase 2: Enhancement (ELDER Recommended)**
- S1, S9: Visual clarity and information density
- A2, A6, A9: Progressive assistance and complexity
- G4, G5, G7, G8: Flow optimization
- E4, E7, E8: Trust and performance

**Phase 3: Excellence (ELDER Strong)**
- E9: Success celebration
- All "Recommended" items from phases above

---

## Testing and Validation

### WCAG Testing
- **Automated tools**: WAVE, axe DevTools, Lighthouse
- **Manual testing**: Keyboard navigation, screen readers
- **Compliance audit**: Against WCAG 2.1 AA/AAA checklist

### ELDER Testing
- **User testing**: With actual seniors (65+)
- **Cognitive load assessment**: NASA-TLX or similar
- **Usability metrics**: Task completion, error rates, satisfaction
- **Emotional response**: Trust, confidence, comfort levels

### Combined Approach
1. Run automated WCAG tests
2. Conduct manual accessibility audit
3. Perform ELDER compliance audit using checklists
4. Test with senior users
5. Iterate based on findings

---

## Resources

### WCAG Resources
- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [Understanding WCAG 2.1](https://www.w3.org/WAI/WCAG21/Understanding/)
- [How to Meet WCAG (Quick Reference)](https://www.w3.org/WAI/WCAG21/quickref/)

### Testing Tools
- [WAVE Web Accessibility Evaluation Tool](https://wave.webaim.org/)
- [axe DevTools](https://www.deque.com/axe/devtools/)
- [Lighthouse](https://developers.google.com/web/tools/lighthouse)
- [Color Contrast Analyzer](https://www.tpgi.com/color-contrast-checker/)

### ELDER Resources
- [ELDER Checklists](../checklists/)
- [ELDER Examples](../examples/)
- [ELDER Whitepaper](../research/whitepaper.en.md)

---

## Conclusion

ELDER and WCAG are complementary frameworks. WCAG provides the technical foundation for accessibility, while ELDER adds senior-specific usability, emotional design, and autonomy considerations. Together, they create digital experiences that are both accessible and genuinely senior-friendly.

**Key Takeaway**: Meeting WCAG AA is necessary but not sufficient for senior users. ELDER provides the additional layer needed to create truly empowering digital experiences for seniors.

---

**For translations, see:**
- [German (Deutsch)](wcag-mapping.de.md)
- [Arabic (العربية)](wcag-mapping.ar.md)

**Version:** 1.0  
**Last Updated:** January 28, 2026
