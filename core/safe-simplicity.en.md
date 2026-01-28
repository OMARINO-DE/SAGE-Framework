# Safe Simplicity
## SAGE Framework - Pillar 1

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Goal

To reduce cognitive load without reducing functionality, creating interfaces that are immediately understandable, error-tolerant, and preserve essential features while eliminating unnecessary complexity.

## Scope

This specification applies to all user-facing digital interfaces intended for senior users, including:

- Web applications and websites
- Mobile applications (iOS, Android)
- Desktop applications
- Kiosks and public terminals
- Smart home interfaces
- Healthcare devices and applications
- Government digital services
- Financial services interfaces

Safe Simplicity principles should be applied throughout the entire user journey, from initial onboarding to advanced features.

## Definitions

- **Cognitive Load**: The mental effort required to use an interface or complete a task
- **Essential Functionality**: Core features necessary to accomplish the primary user goals
- **Visual Clutter**: Unnecessary visual elements that distract from primary tasks
- **Error Tolerance**: The system's ability to prevent, detect, and recover from errors
- **Progressive Complexity**: Revealing advanced features only when needed

---

## Requirements

### S1: Minimal Visual Clutter

**Statement**: Interfaces must minimize visual clutter by displaying only essential elements required for the current task.

**Rationale**: Senior users can experience difficulty processing dense visual information. Reducing clutter improves focus, reduces cognitive load, and prevents user overwhelm.

**Metrics**:
- Maximum of 7 ± 2 interactive elements visible per screen section
- White space comprises at least 40% of screen area
- Visual hierarchy with clear primary, secondary, and tertiary importance levels

**Test Procedure**:
1. Count interactive elements in each major screen section
2. Measure white space percentage using design tools
3. Conduct eye-tracking studies to verify attention focus
4. User testing: Ask 10 senior users to identify the primary action on each screen (success rate should exceed 90%)

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Displaying all available features simultaneously
- ❌ Using every available space for content or controls
- ❌ Multiple competing calls-to-action on one screen
- ❌ Dense layouts with minimal spacing

**Implementation Notes**:
- Use card-based layouts with generous padding
- Group related elements visually
- Employ progressive disclosure for advanced options
- Default to showing only primary actions

---

### S2: Large, Clear Typography

**Statement**: Text must be large enough to read comfortably without zooming or assistive technology, with clear typeface selection.

**Rationale**: Vision naturally declines with age. Larger text with high readability reduces eye strain and improves comprehension.

**Metrics**:
- Minimum base font size: 16px (1rem) for body text
- Recommended base font size: 18-20px for senior-focused applications
- Minimum font size for any text: 14px
- Line height (leading): 1.5-1.8 times the font size
- Paragraph line length: 50-75 characters maximum

**Test Procedure**:
1. Measure font sizes in CSS/code
2. Test readability with senior users at arm's length from screen
3. Verify with accessibility tools (WAVE, axe DevTools)
4. Conduct readability testing: Users should read sample text without errors at 95%+ accuracy

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Using default browser font sizes (typically 16px) as maximum
- ❌ Small print for "less important" information
- ❌ Condensed or stylized fonts that reduce legibility
- ❌ Overly long lines of text (>80 characters)

**Implementation Notes**:
- Use system fonts or highly legible sans-serif fonts (e.g., Inter, Open Sans, Segoe UI)
- Avoid decorative or script fonts for body text
- Allow user font size adjustment without breaking layout
- Test on actual devices at typical viewing distances

---

### S3: High Contrast Colors

**Statement**: All text and interactive elements must have sufficient contrast against their backgrounds to ensure readability.

**Rationale**: Age-related vision changes reduce contrast sensitivity. High contrast improves readability and reduces eye fatigue.

**Metrics**:
- Minimum contrast ratio: 7:1 for normal text (WCAG AAA)
- Minimum contrast ratio: 4.5:1 for large text (18pt+)
- Minimum contrast ratio: 3:1 for interactive elements and graphics
- Avoid low-contrast color combinations (gray on gray, pastels on white)

**Test Procedure**:
1. Use contrast checker tools (WebAIM, Stark, Figma plugins)
2. Test with color blindness simulators
3. View interface in different lighting conditions
4. User testing: Senior users identify all interactive elements with 95%+ success rate

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Light gray text on white backgrounds
- ❌ Colored text on colored backgrounds without contrast check
- ❌ Low-contrast "disabled" states that are still functional
- ❌ Relying solely on color to convey information

**Implementation Notes**:
- Use dark text (near-black) on light backgrounds, or light text on dark backgrounds
- Avoid pure black (#000) on pure white (#FFF) - slightly soften both
- Provide high-contrast mode option
- Test contrast at component design time, not just final implementation

---

### S4: Large Touch Targets

**Statement**: All interactive elements must be large enough to tap accurately without precision motor control.

**Rationale**: Fine motor control can decline with age. Larger touch targets reduce errors and frustration, especially on touch devices.

**Metrics**:
- Minimum touch target size: 44x44 CSS pixels (iOS HIG standard)
- Recommended touch target size: 48x48 CSS pixels (Material Design)
- Optimal touch target size for seniors: 56x56 to 64x64 CSS pixels
- Minimum spacing between touch targets: 8px

**Test Procedure**:
1. Measure interactive element dimensions in inspector tools
2. Test on touch devices with senior users (including those with tremors)
3. Measure error rates when tapping buttons
4. Success criteria: <5% mis-tap rate among senior users

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Small icon-only buttons (32px or smaller)
- ❌ Densely packed navigation items
- ❌ Inline text links in paragraphs without adequate spacing
- ❌ Slider controls with small handles

**Implementation Notes**:
- Increase padding around clickable areas
- Ensure full button/link area is clickable, not just text
- Space out menu items and navigation
- Make entire card/row clickable when appropriate

---

### S5: Single Primary Action per Screen

**Statement**: Each screen or view should have one clear primary action, with secondary actions visually de-emphasized.

**Rationale**: Multiple competing calls-to-action create decision paralysis. A clear primary action guides users and reduces cognitive load.

**Metrics**:
- One primary button per screen (visually prominent)
- Maximum 2-3 secondary actions per screen
- Primary action button is 1.5-2x more visually prominent than secondary actions
- Primary action relates directly to the screen's purpose

**Test Procedure**:
1. Show screen to senior users and ask "What should I do next?"
2. Success rate: >90% correctly identify primary action
3. Time-to-identify primary action: <3 seconds
4. Visual prominence testing: Primary button draws attention first in eye-tracking

**Compliance Level**: Recommended

**Anti-Patterns**:
- ❌ Multiple buttons with equal visual weight
- ❌ Unclear distinction between primary and secondary actions
- ❌ Destructive actions (Delete, Cancel) styled as primary
- ❌ Primary action hidden below the fold

**Implementation Notes**:
- Use high-contrast, filled button for primary action
- Use outline or ghost buttons for secondary actions
- Position primary action prominently (typically bottom-right or centered)
- Ensure primary action is always visible (sticky positioning if needed)

---

### S6: Consistent Navigation Patterns

**Statement**: Navigation structure and patterns must remain consistent across all screens and sections of the application.

**Rationale**: Consistency reduces learning curve and cognitive load. Predictable navigation allows users to build mental models.

**Metrics**:
- Navigation location consistent across 100% of screens
- Navigation element order consistent
- Same navigation pattern used application-wide
- No more than one navigation paradigm (e.g., don't mix tabs and sidebar)

**Test Procedure**:
1. Audit all screens for navigation consistency
2. User testing: Users navigate to 5 different sections without errors
3. Measure time-to-navigate to specific sections (should decrease over sessions)
4. Mental model testing: Users predict where to find functions with >80% accuracy

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Moving navigation location between screens
- ❌ Changing navigation labels or icons for the same function
- ❌ Different navigation patterns for different sections
- ❌ Hiding navigation unexpectedly

**Implementation Notes**:
- Use standard navigation patterns (top bar, side menu, bottom tabs)
- Keep navigation visible and accessible at all times
- Use the same icons and labels consistently
- Provide "Home" button on every screen

---

### S7: Clear Error Prevention

**Statement**: The system must prevent errors before they occur through constraints, warnings, and confirmations.

**Rationale**: Error recovery can be challenging for senior users. Prevention is more effective than correction.

**Metrics**:
- Form validation occurs in real-time with helpful guidance
- Destructive actions require explicit confirmation
- Disabled controls have clear explanation of requirements
- Invalid inputs are prevented or caught immediately

**Test Procedure**:
1. Attempt to create all possible error conditions
2. Verify each has appropriate prevention or warning
3. User testing: Error rate should be <10% across all tasks
4. Measure user confidence levels before/after error prevention

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Only validating forms on submission
- ❌ Allowing destructive actions without confirmation
- ❌ Unclear error messages after the fact
- ❌ Disabling controls without explanation

**Implementation Notes**:
- Use input masks and constraints (e.g., date pickers vs. text fields)
- Provide inline validation with helpful messages
- Show confirmation dialogs for important actions
- Use clear, specific constraint messages ("Must be 6-12 characters" not "Invalid")

---

### S8: Generous Error Tolerance

**Statement**: When errors occur, the system must provide clear explanations, easy correction paths, and prevent data loss.

**Rationale**: Errors are inevitable. Graceful error handling maintains user confidence and prevents abandonment.

**Metrics**:
- All error messages explain what happened and how to fix it
- Error messages use plain language (reading level: grade 8 or below)
- Users can correct errors without losing entered data
- Undo functionality available for all non-trivial actions

**Test Procedure**:
1. Trigger all error conditions deliberately
2. Verify each error message is clear and actionable
3. User testing: 90%+ users successfully recover from errors
4. Measure time-to-recover from common errors (<30 seconds target)

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Technical error messages ("Error 404", "Exception in line 42")
- ❌ Error messages that don't explain how to fix the issue
- ❌ Clearing form data on validation errors
- ❌ No way to undo actions

**Implementation Notes**:
- Write error messages in plain language: "We couldn't find that page"
- Always provide next steps: "Try searching or return to the home page"
- Preserve user input on errors
- Implement undo for important actions (30-60 second window)

---

### S9: Limited Information Per View

**Statement**: Each screen or view should present a limited amount of information focused on a single task or concept.

**Rationale**: Information overload causes cognitive strain. Focused screens improve comprehension and task completion.

**Metrics**:
- Maximum 3-5 main pieces of information per screen
- One primary task/goal per screen
- Content fits on one screen without scrolling for primary actions (when possible)
- Information architecture: maximum 3 levels deep

**Test Procedure**:
1. Count distinct pieces of information per screen
2. User testing: Comprehension testing (users recall 80%+ of key information)
3. Task completion rates for multi-step flows
4. Cognitive load assessment using NASA-TLX with senior users

**Compliance Level**: Recommended

**Anti-Patterns**:
- ❌ "Dashboard" screens with 10+ different metrics/widgets
- ❌ Endless scrolling content without clear sections
- ❌ Combining multiple unrelated tasks on one screen
- ❌ Deep hierarchical navigation (>3 levels)

**Implementation Notes**:
- Break complex flows into multiple steps
- Use progressive disclosure for additional details
- Implement "chunking" - group related information
- Provide clear section breaks and headings

---

### S10: Predictable Interactions

**Statement**: All interactive elements must behave in predictable, standard ways that match user expectations.

**Rationale**: Unexpected behavior increases cognitive load and reduces trust. Predictable interactions leverage existing mental models.

**Metrics**:
- Interactive elements follow platform conventions (iOS HIG, Material Design, Windows UX)
- Links look like links, buttons look like buttons
- Hover/focus states provide clear feedback
- Actions have predictable outcomes matching their labels

**Test Procedure**:
1. Audit all interactive elements against platform standards
2. User testing: Users predict element behavior with 90%+ accuracy
3. Measure confusion incidents (target: <5% of interactions)
4. A/B test standard vs. non-standard implementations

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Links styled as buttons or vice versa
- ❌ Custom controls that don't behave like standard versions
- ❌ Unexpected page reloads or navigation
- ❌ Controls that do different things in different contexts

**Implementation Notes**:
- Use standard UI component libraries
- Follow platform-specific design guidelines
- Ensure links navigate, buttons perform actions
- Provide clear hover and focus states
- Test with screen readers to ensure semantic correctness

---

## Summary Table of Requirements

| ID | Requirement | Compliance Level |
|----|-------------|------------------|
| S1 | Minimal Visual Clutter | Minimum |
| S2 | Large, Clear Typography | Minimum |
| S3 | High Contrast Colors | Minimum |
| S4 | Large Touch Targets | Minimum |
| S5 | Single Primary Action per Screen | Recommended |
| S6 | Consistent Navigation Patterns | Minimum |
| S7 | Clear Error Prevention | Minimum |
| S8 | Generous Error Tolerance | Minimum |
| S9 | Limited Information Per View | Recommended |
| S10 | Predictable Interactions | Minimum |

---

## Implementation Guidelines

### Design Phase
1. Create wireframes with Safe Simplicity requirements in mind
2. Conduct cognitive walkthroughs with specifications
3. Test with senior users early and often
4. Measure compliance against metrics before development

### Development Phase
1. Use component libraries that support accessibility
2. Implement responsive designs that maintain simplicity
3. Build in error prevention mechanisms
4. Test across devices and screen sizes

### Testing Phase
1. Automated testing for contrast, font sizes, touch targets
2. Manual testing with senior users (age 65+)
3. Cognitive load assessment
4. Error scenario testing

### Maintenance Phase
1. Regular audits against Safe Simplicity requirements
2. Monitor user feedback for complexity issues
3. Continuously simplify based on usage data
4. Update as standards and best practices evolve

---

## Related Standards

- **WCAG 2.1 Level AAA**: Contrast, text sizing, error prevention
- **ISO 9241-210**: Human-centered design principles
- **Nielsen Heuristics**: Consistency, error prevention, recognition vs. recall
- **Apple HIG**: Clarity, feedback, user control
- **Material Design**: Clear hierarchy, meaningful motion

---

## References and Resources

### Tools
- **Contrast Checkers**: WebAIM Contrast Checker, Stark, Colorable
- **Typography**: Modular Scale, Type Scale
- **Touch Target Measurement**: Browser DevTools, Figma
- **Cognitive Load Assessment**: NASA-TLX, PSSUQ

### Further Reading
- Nielsen Norman Group: Senior-Friendly Design
- AARP Research on Technology Use
- W3C Cognitive Accessibility Guidance
- Age-Inclusive UX Research

---

**For translations, see:**
- [German (Deutsch)](safe-simplicity.de.md)
- [Arabic (العربية)](safe-simplicity.ar.md)

**For implementation checklists, see:**
- [Product Checklist](../checklists/product-checklist.en.md)
- [UX Checklist](../checklists/ux-checklist.en.md)
- [Engineering Checklist](../checklists/engineering-checklist.en.md)
