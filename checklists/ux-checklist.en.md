# SAGE Framework - UX Checklist
**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de
**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Overview

This checklist helps UX Designers ensure their designs meet SAGE Framework standards throughout the design process. Use during wireframing, prototyping, and design review.

**How to Use**:
- Use at each design phase (wireframe, mockup, prototype)
- Check items as design progresses
- Validate with user testing before development handoff
- Re-check after design iterations

---

## Design Phase: Wireframes

### Layout & Structure (Safe Simplicity)

- [ ] Screen sections contain ≤7 interactive elements
- [ ] White space planned for ≥40% of screen
- [ ] Clear visual hierarchy sketched
- [ ] One primary action identified per screen
- [ ] Navigation placement consistent across screens
- [ ] Information architecture ≤3 levels deep
- [ ] Multi-step flows have progress indication planned

### Content Planning (Guided Interaction)

- [ ] Page titles defined for all screens
- [ ] Next action labeled with action verbs
- [ ] Help placement identified for complex features
- [ ] Error message locations planned
- [ ] Confirmation dialog flows mapped
- [ ] Breadcrumb paths for deep hierarchies

### Interaction Patterns (Assisted Autonomy)

- [ ] Undo mechanisms identified for important actions
- [ ] Confirmation points marked for destructive actions
- [ ] Progressive disclosure planned for complex features
- [ ] Help/assistance access points defined
- [ ] Cancel/exit options in multi-step flows

---

## Design Phase: Visual Mockups

### Typography (Safe Simplicity)

- [ ] Base font size: 18-20px specified
- [ ] Minimum font size: 14px enforced
- [ ] Line height: 1.5-1.8x defined
- [ ] Line length: 50-75 characters max
- [ ] Legible sans-serif font selected (Inter, Open Sans, Segoe UI)
- [ ] Font family limited to 2-3 maximum
- [ ] Text hierarchy clear (H1, H2, body, caption)

### Color & Contrast (Safe Simplicity)

- [ ] All text meets 7:1 contrast ratio (WCAG AAA)
- [ ] Interactive elements meet 3:1 contrast
- [ ] Color palette limited to 5-7 functional colors
- [ ] Color not sole indicator of information
- [ ] High contrast mode designed
- [ ] Contrast checked with WebAIM/Stark

### Touch Targets & Spacing (Safe Simplicity)

- [ ] Buttons designed at 56x56px minimum
- [ ] Interactive elements spaced 8px+ apart
- [ ] Full button area designed as clickable
- [ ] Touch zones adequate for finger taps
- [ ] Hover states designed
- [ ] Focus indicators designed (3px outline)

### Visual Consistency (Emotional Trust Layer)

- [ ] Design system/component library used
- [ ] Components reused across screens
- [ ] Consistent button styles
- [ ] Consistent spacing scale (4px/8px base)
- [ ] Consistent iconography style
- [ ] Consistent form element styling

### Feedback & Status (Emotional Trust Layer)

- [ ] Loading states designed for all async actions
- [ ] Success states designed
- [ ] Error states designed
- [ ] Progress indicators designed
- [ ] Hover states for all interactive elements
- [ ] Active/pressed states designed
- [ ] Disabled states clearly differentiated

---

## Design Phase: Interactive Prototype

### Navigation (Safe Simplicity)

- [ ] Navigation location consistent on all screens
- [ ] Current location highlighted
- [ ] Home button accessible everywhere
- [ ] Back button functionality works
- [ ] Breadcrumbs functional (if applicable)
- [ ] Navigation pattern singular (not mixing tabs/sidebar)

### User Flow (Guided Interaction)

- [ ] Multi-step progress indicators functional
- [ ] Next actions clearly labeled and positioned
- [ ] Cancel/exit available at all steps
- [ ] Previous steps editable
- [ ] Flow follows logical sequence
- [ ] Smart defaults pre-filled
- [ ] Data persists across navigation

### Assistance & Help (Assisted Autonomy)

- [ ] Help accessible on every screen
- [ ] Contextual help near complex features
- [ ] Tooltips functional on hover
- [ ] Inline guidance visible
- [ ] Examples provided in input fields
- [ ] Assistance can be dismissed
- [ ] Help doesn't require leaving context

### Error Prevention & Handling (Safe Simplicity)

- [ ] Real-time validation designed
- [ ] Input masks for structured data
- [ ] Confirmation dialogs for destructive actions
- [ ] Error messages near error source
- [ ] Error messages explain how to fix
- [ ] User input preserved on errors
- [ ] Undo options visible

### Interactions (Predictable)

- [ ] Links look like links (underlined/colored)
- [ ] Buttons look like buttons (filled/raised)
- [ ] Standard patterns used (dropdowns, checkboxes)
- [ ] Platform conventions followed
- [ ] No unexpected page reloads
- [ ] Actions match labels
- [ ] Animations subtle and purposeful

---

## Content & Microcopy

### Tone & Language (Emotional Trust Layer)

- [ ] All content in plain language (grade 8 level)
- [ ] No technical jargon
- [ ] Warm, supportive tone
- [ ] No patronizing language
- [ ] Positive framing used
- [ ] Error messages constructive, not blaming
- [ ] Success messages encouraging

### Content Examples:

**Good**:
- ✅ "Let's find that page. Try searching or return home."
- ✅ "Password must include a number"
- ✅ "Would you like help with this?"

**Bad**:
- ❌ "Error 404: Resource not found"
- ❌ "Invalid input"
- ❌ "Let me show you how to do this"

### Labeling (Guided Interaction)

- [ ] Button labels use action verbs
- [ ] Labels descriptive, not generic
- [ ] "Next" buttons specify destination
- [ ] Icons paired with text labels
- [ ] Form labels clear and specific
- [ ] Placeholder text provides examples

---

## Accessibility Integration

### WCAG Alignment

- [ ] All WCAG AA criteria addressed
- [ ] Keyboard navigation planned
- [ ] Screen reader labels defined
- [ ] Skip links included
- [ ] Focus order logical
- [ ] ARIA labels where needed

### Senior-Specific Considerations

- [ ] Larger text than WCAG minimum
- [ ] Higher contrast than WCAG AA
- [ ] Larger touch targets than WCAG AAA
- [ ] Simpler language than typical
- [ ] More generous timing than standard
- [ ] Explicit undo beyond standard

---

## Design Reviews

### Self-Review Checklist

- [ ] All screens checked against S1-S10
- [ ] All flows checked against G1-G10
- [ ] All interactions checked against A1-A10
- [ ] All visual elements checked against E1-E10
- [ ] Contrast checked with tools
- [ ] Touch targets measured
- [ ] Content reviewed for tone

### Peer Review Questions

1. Can you identify the primary action on each screen?
2. Is the navigation predictable and consistent?
3. Are error states helpful and clear?
4. Is the visual hierarchy obvious?
5. Would your grandmother understand this?

### Stakeholder Review

- [ ] Product requirements addressed
- [ ] Business goals supported
- [ ] Technical feasibility confirmed
- [ ] Content strategy aligned
- [ ] Brand guidelines followed (with SAGE adaptations)

---

## User Testing Preparation

### Test Materials

- [ ] Interactive prototype ready
- [ ] Task scenarios written
- [ ] Success criteria defined per SAGE metrics
- [ ] Recruitment criteria (age 65+, diverse tech skills)
- [ ] Test script prepared
- [ ] Consent forms ready

### Test Scenarios Should Check:

- [ ] Primary action identification (<3 seconds)
- [ ] Navigation wayfinding (location awareness)
- [ ] Error recovery (successful resolution)
- [ ] Task completion rates
- [ ] Assistance discoverability
- [ ] Trust and comfort levels
- [ ] Confusion points

### Metrics to Capture:

- [ ] Task completion rates
- [ ] Time on task
- [ ] Error frequency
- [ ] Navigation paths
- [ ] Help usage
- [ ] Emotional responses (confidence, frustration)
- [ ] Satisfaction ratings

---

## Handoff to Development

### Design Documentation

- [ ] Annotated mockups with SAGE requirement IDs
- [ ] Design system/component library
- [ ] Interaction specifications
- [ ] Animation/transition specs (timing, easing)
- [ ] Responsive behavior defined
- [ ] Error state variations
- [ ] Loading state specifications

### Measurements to Include:

- [ ] Font sizes (all text elements)
- [ ] Color hex codes and contrast ratios
- [ ] Spacing values (padding, margins)
- [ ] Touch target dimensions
- [ ] Border radius, shadow values
- [ ] Animation durations

### SAGE Compliance Notes:

- [ ] Which requirements each screen addresses
- [ ] Compliance level achieved (Minimum/Recommended/Strong)
- [ ] Any deviations with justification
- [ ] Testing results that validate design
- [ ] Areas requiring special attention

---

## Post-Launch Monitoring

### Analytics to Track:

- [ ] Page/screen completion rates
- [ ] Drop-off points in flows
- [ ] Error frequency and types
- [ ] Help/support usage
- [ ] Search queries (what users can't find)
- [ ] Time on task trends
- [ ] Return visit patterns

### Continuous Improvement:

- [ ] Regular user feedback collection
- [ ] Support ticket analysis
- [ ] A/B testing opportunities
- [ ] Quarterly SAGE audit
- [ ] Annual comprehensive review

---

## Design Patterns Library

### SAGE-Compliant Patterns to Reuse:

**Primary Action Button**:
- 56x56px minimum
- High contrast (≥7:1)
- Action verb label
- Positioned bottom-right or centered

**Error Message**:
- Near error source
- Plain language explanation
- How-to-fix instructions
- Input preserved
- Supportive tone

**Progress Indicator**:
- Shows current, completed, remaining
- Step labels, not just numbers
- Always visible
- Clickable for completed steps

**Help Icon**:
- (?) icon + "Help" text label
- Positioned near complex feature
- Tooltip on hover
- Modal or inline content

**Confirmation Dialog**:
- Specific consequence explanation
- "Cancel" as default focus
- Action verb on confirm button
- No double confirmations

---

## Compliance Summary

**Quick Check**: Count yes answers in each category

- Safe Simplicity (S1-S10): ___/30 items
- Assisted Autonomy (A1-A10): ___/25 items
- Guided Interaction (G1-G10): ___/20 items
- Emotional Trust Layer (E1-E10): ___/25 items

**Overall Compliance**: ___% (target: 90%+)

**Priority Fixes**:
1. ________________________________
2. ________________________________
3. ________________________________

---

**For translations, see:**
- [German (Deutsch)](ux-checklist.de.md)
- [Arabic (العربية)](ux-checklist.ar.md)

**Related Resources:**
- [Product Checklist](product-checklist.en.md)
- [Engineering Checklist](engineering-checklist.en.md)
- [Core Specifications](../core/)
