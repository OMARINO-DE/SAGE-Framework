# SAGE Framework - WCAG Mapping
**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de
**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Overview

This document maps SAGE Framework requirements to Web Content Accessibility Guidelines (WCAG) 2.1 success criteria. SAGE complements and extends WCAG by adding senior-specific considerations while maintaining full WCAG compliance.

## Relationship Between SAGE and WCAG

**SAGE is NOT a replacement for WCAG.** Instead:

- ✅ SAGE builds upon WCAG foundations
- ✅ SAGE adds senior-specific requirements
- ✅ SAGE provides implementation guidance for WCAG principles
- ✅ Following SAGE helps achieve WCAG AA/AAA compliance
- ✅ SAGE addresses aspects beyond WCAG scope (emotional trust, autonomy)

## Mapping Table

### Safe Simplicity → WCAG

| SAGE Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **S1: Minimal Visual Clutter** | 1.4.8 Visual Presentation (AAA) | Extends | SAGE emphasizes 40% white space; WCAG focuses on text presentation |
| **S2: Large, Clear Typography** | 1.4.4 Resize Text (AA)<br>1.4.8 Visual Presentation (AAA) | Strengthens | SAGE recommends 18-20px base vs WCAG's 200% zoom requirement |
| **S3: High Contrast Colors** | 1.4.3 Contrast Minimum (AA)<br>1.4.6 Contrast Enhanced (AAA) | Aligns | SAGE requires 7:1 (AAA level) as minimum for seniors |
| **S4: Large Touch Targets** | 2.5.5 Target Size (AAA) | Strengthens | SAGE recommends 56-64px vs WCAG's 44px minimum |
| **S5: Single Primary Action** | 2.4.4 Link Purpose (AA)<br>3.2.4 Consistent Identification (AA) | Complements | SAGE adds clarity through visual hierarchy |
| **S6: Consistent Navigation** | 3.2.3 Consistent Navigation (AA)<br>3.2.4 Consistent Identification (AA) | Aligns | Direct alignment with WCAG principles |
| **S7: Error Prevention** | 3.3.4 Error Prevention (Legal, Financial, Data) (AA)<br>3.3.6 Error Prevention (All) (AAA) | Strengthens | SAGE applies prevention to all actions, not just critical ones |
| **S8: Error Tolerance** | 3.3.1 Error Identification (A)<br>3.3.3 Error Suggestion (AA)<br>3.3.4 Error Prevention (AA) | Extends | SAGE adds undo requirements and data preservation |
| **S9: Limited Information** | 2.4.10 Section Headings (AAA) | Complements | SAGE focuses on cognitive load beyond structure |
| **S10: Predictable Interactions** | 3.2.1 On Focus (A)<br>3.2.2 On Input (A) | Aligns | Direct alignment with predictability principles |

### Assisted Autonomy → WCAG

| SAGE Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **A1: User Control of Assistance** | 2.2.1 Timing Adjustable (A)<br>2.2.4 Interruptions (AAA) | Extends | SAGE adds granular control over assistance features |
| **A2: Progressive Assistance** | N/A | Extends | Goes beyond WCAG scope - adaptive UI |
| **A3: Clear Undo Mechanisms** | 3.3.4 Error Prevention (AA)<br>3.3.6 Error Prevention (All) (AAA) | Complements | SAGE specifies undo requirements explicitly |
| **A4: Explicit Confirmations** | 3.3.4 Error Prevention (AA) | Aligns | SAGE adds specificity about confirmation dialogs |
| **A5: Intelligent Defaults** | N/A | Extends | Beyond WCAG scope - UX optimization |
| **A6: Contextual Help** | 3.3.5 Help (AAA) | Strengthens | SAGE requires inline help, not just availability |
| **A7: Transparent Behavior** | 4.1.3 Status Messages (AA) | Aligns | SAGE emphasizes plain language |
| **A8: Safe Exploration** | 3.3.4 Error Prevention (AA) | Extends | SAGE adds preview/sandbox requirements |
| **A9: Graduated Complexity** | N/A | Extends | Beyond WCAG scope - progressive disclosure |
| **A10: Respectful Tone** | N/A | Extends | Beyond WCAG scope - emotional design |

### Guided Interaction → WCAG

| SAGE Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **G1: Clear Progress Indication** | 2.4.8 Location (AAA)<br>4.1.3 Status Messages (AA) | Aligns | SAGE specifies visual progress requirements |
| **G2: Explicit Next Actions** | 2.4.4 Link Purpose (AA)<br>2.4.9 Link Purpose (Link Only) (AAA) | Strengthens | SAGE adds visual hierarchy requirements |
| **G3: Persistent Orientation** | 2.4.8 Location (AAA)<br>3.2.3 Consistent Navigation (AA) | Aligns | Direct alignment with wayfinding principles |
| **G4: Logical Step Sequencing** | 3.2.3 Consistent Navigation (AA) | Complements | SAGE adds mental model alignment |
| **G5: Inline Guidance** | 3.3.2 Labels or Instructions (A)<br>3.3.5 Help (AAA) | Strengthens | SAGE requires proactive, contextual guidance |
| **G6: Cancel and Exit Options** | 3.2.5 Change on Request (AAA) | Aligns | SAGE emphasizes psychological safety |
| **G7: Smart Defaults** | 1.3.5 Identify Input Purpose (AA) | Complements | SAGE adds pre-filling requirements |
| **G8: Forgiving Navigation** | 3.2.2 On Input (A)<br>3.2.5 Change on Request (AAA) | Extends | SAGE adds flexible navigation requirements |
| **G9: Completion Feedback** | 3.3.1 Error Identification (A)<br>4.1.3 Status Messages (AA) | Extends | SAGE emphasizes success messaging, not just errors |
| **G10: Error Recovery** | 3.3.1 Error Identification (A)<br>3.3.3 Error Suggestion (AA) | Aligns | SAGE adds context preservation requirements |

### Emotional Trust Layer → WCAG

| SAGE Req | WCAG Criteria | Relationship | Notes |
|----------|---------------|--------------|-------|
| **E1: Consistent Visual Language** | 1.4.1 Use of Color (A)<br>3.2.4 Consistent Identification (AA) | Complements | SAGE adds design system requirements |
| **E2: Immediate Response Feedback** | 2.1.1 Keyboard (A)<br>4.1.3 Status Messages (AA) | Complements | SAGE specifies timing requirements (100ms) |
| **E3: Reassuring Language** | 3.1.5 Reading Level (AAA) | Extends | SAGE adds tone and emotional considerations |
| **E4: Trust Indicators** | N/A | Extends | Beyond WCAG scope - credibility signals |
| **E5: Predictable Patterns** | 3.2.1 On Focus (A)<br>3.2.2 On Input (A)<br>3.2.4 Consistent Identification (AA) | Aligns | Direct alignment with predictability |
| **E6: Transparent Data Handling** | N/A | Extends | Beyond WCAG scope - privacy considerations (covered by GDPR) |
| **E7: Human Support** | N/A | Extends | Beyond WCAG scope - support availability |
| **E8: Graceful Performance** | 2.2.1 Timing Adjustable (A) | Complements | SAGE adds performance requirements |
| **E9: Success Celebration** | N/A | Extends | Beyond WCAG scope - emotional design |
| **E10: Familiar Metaphors** | 3.1.3 Unusual Words (AAA) | Complements | SAGE applies to visual metaphors |

---

## WCAG Compliance Through SAGE

### How SAGE Helps Achieve WCAG AA

Implementing all SAGE "Minimum" compliance requirements will help achieve or exceed most WCAG 2.1 Level AA criteria. Specifically:

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
- E2 addresses status messages and feedback

### Beyond WCAG: What SAGE Adds

SAGE addresses aspects not covered by WCAG:

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
2. **Add SAGE Minimum requirements** for senior-friendliness
3. **Test with actual senior users**, not just automated tools
4. **Document compliance** for both WCAG and SAGE

### Priority Order

**Phase 1: Foundation (WCAG AA + SAGE Minimum)**
- S2, S3, S4: Typography, contrast, touch targets
- S6, S10: Consistent, predictable navigation
- S7, S8: Error prevention and tolerance
- A3, A4: Undo and confirmations
- G1, G2, G3: Progress, next actions, orientation

**Phase 2: Enhancement (SAGE Recommended)**
- S1, S9: Visual clarity and information density
- A2, A6, A9: Progressive assistance and complexity
- G4, G5, G7, G8: Flow optimization
- E4, E7, E8: Trust and performance

**Phase 3: Excellence (SAGE Strong)**
- E9: Success celebration
- All "Recommended" items from phases above

---

## Testing and Validation

### WCAG Testing
- **Automated tools**: WAVE, axe DevTools, Lighthouse
- **Manual testing**: Keyboard navigation, screen readers
- **Compliance audit**: Against WCAG 2.1 AA/AAA checklist

### SAGE Testing
- **User testing**: With actual seniors (65+)
- **Cognitive load assessment**: NASA-TLX or similar
- **Usability metrics**: Task completion, error rates, satisfaction
- **Emotional response**: Trust, confidence, comfort levels

### Combined Approach
1. Run automated WCAG tests
2. Conduct manual accessibility audit
3. Perform SAGE compliance audit using checklists
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

### SAGE Resources
- [SAGE Checklists](../checklists/)
- [SAGE Examples](../examples/)
- [SAGE Whitepaper](../research/whitepaper.en.md)

---

## Conclusion

SAGE and WCAG are complementary frameworks. WCAG provides the technical foundation for accessibility, while SAGE adds senior-specific usability, emotional design, and autonomy considerations. Together, they create digital experiences that are both accessible and genuinely senior-friendly.

**Key Takeaway**: Meeting WCAG AA is necessary but not sufficient for senior users. SAGE provides the additional layer needed to create truly empowering digital experiences for seniors.

---

**For translations, see:**
- [German (Deutsch)](wcag-mapping.de.md)
- [Arabic (العربية)](wcag-mapping.ar.md)

**Version:** 1.0  
**Last Updated:** January 28, 2026
