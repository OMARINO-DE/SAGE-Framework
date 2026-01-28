# Guided Interaction
## SAGE Framework - Pillar 3

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Goal

To provide clear, contextual guidance throughout the user journey that makes next steps obvious, manages complexity through progressive disclosure, and ensures users always know where they are and where they can go.

## Scope

This specification applies to all user flows, navigation, and wayfinding elements in digital interfaces for senior users, including:

- Onboarding and first-time user experiences
- Multi-step processes and workflows
- Navigation systems and information architecture
- Progress indicators and status communication
- Contextual cues and wayfinding
- Task completion guidance
- Error recovery and support

Guided Interaction principles ensure users never feel lost or uncertain about what to do next.

## Definitions

- **Wayfinding**: The ability to orient oneself and navigate through an interface
- **Progressive Disclosure**: Revealing information gradually to manage complexity
- **Contextual Cues**: Visual or textual hints about current location and available actions
- **Next Steps**: Clear indication of what action to take next
- **Orientation**: Understanding where you are within the system

---

## Requirements

### G1: Clear Progress Indication

**Statement**: Multi-step processes must show clear progress indicators revealing current step, completed steps, and remaining steps.

**Rationale**: Not knowing progress creates anxiety and uncertainty. Clear indicators build confidence and motivation.

**Metrics**:
- 100% of multi-step flows (3+ steps) have progress indicators
- Progress indicators show: current step, total steps, step names/descriptions
- Progress indicators visible throughout entire flow
- Visual differentiation between completed, current, and upcoming steps

**Test Procedure**:
1. Identify all multi-step processes
2. Verify progress indicator presence and completeness
3. User testing: Users accurately state current position in flow 95%+ of time
4. Measure abandonment rates (should decrease with clear progress)

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ No progress indication in multi-step flows
- ❌ Progress indicators that only show step numbers without context
- ❌ Hidden or unclear current step indication
- ❌ Inability to see overall journey

**Implementation Notes**:
- Use stepped progress bars or breadcrumbs
- Label steps clearly: "Step 2 of 4: Add Payment Method"
- Show checkmarks for completed steps
- Indicate approximate time remaining when appropriate

---

### G2: Explicit Next Actions

**Statement**: Every screen must clearly communicate what the user should do next through visual hierarchy, labeling, and positioning.

**Rationale**: Ambiguity about next steps causes confusion and abandonment. Explicit guidance maintains flow.

**Metrics**:
- 100% of screens have identifiable primary next action
- Next action button/link uses action-oriented language
- Next action positioned in predictable location (bottom-right, centered bottom)
- Next action visually prominent

**Test Procedure**:
1. Screen audit: identify primary next action on each screen
2. User testing: "What should I do next?" - 90%+ correct identification
3. Time-to-identify next action: <3 seconds
4. Task completion rates increase with clear next actions

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Screens with no clear next action
- ❌ Multiple actions with equal visual weight
- ❌ Vague labels: "Submit" instead of "Complete Purchase"
- ❌ Hidden or below-fold primary actions

**Implementation Notes**:
- Use specific action verbs: "Continue to Payment" not just "Next"
- Position consistently across flows
- Make primary action button larger and high-contrast
- Disable/hide inappropriate actions

---

### G3: Persistent Orientation Cues

**Statement**: Users must always know where they are within the application through persistent visual cues and navigation breadcrumbs.

**Rationale**: Getting lost in interfaces creates frustration and abandonment. Persistent orientation maintains confidence.

**Metrics**:
- Page titles visible on 100% of screens
- Navigation shows current location
- Breadcrumbs available for hierarchical structures (3+ levels deep)
- Location indicators use multiple cues (highlighting, color, position)

**Test Procedure**:
1. Navigation audit: verify location indicators on all screens
2. User testing: "Where are you?" - 95%+ accurate responses
3. Test with users navigating 5+ screens deep
4. Recovery testing: Users can return to known location within 10 seconds

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ No indication of current location
- ❌ Identical page titles across sections
- ❌ Navigation that doesn't highlight current location
- ❌ Deep hierarchies without breadcrumbs

**Implementation Notes**:
- Use descriptive page titles/headers
- Highlight current nav item with color/underline
- Implement breadcrumb navigation: Home > Account > Settings
- Show location in multiple ways (title, nav, breadcrumb)

---

### G4: Logical Step Sequencing

**Statement**: Multi-step processes must follow logical, predictable sequences that match user mental models and real-world workflows.

**Rationale**: Illogical sequences increase cognitive load. Natural flow reduces errors and improves completion.

**Metrics**:
- Process steps follow chronological or logical order
- No backtracking required for normal flow
- Steps group related information
- 90%+ users predict next step correctly

**Test Procedure**:
1. Map user mental models through interviews
2. Compare process flows to mental models
3. User testing: Prediction of next step
4. Monitor back-button usage (high usage suggests poor sequencing)

**Compliance Level**: Recommended

**Anti-Patterns**:
- ❌ Asking for payment before delivery address
- ❌ Requiring information that should be auto-filled
- ❌ Splitting related information across multiple steps
- ❌ Arbitrary step ordering

**Implementation Notes**:
- Follow real-world process order
- Group related fields together
- Allow editing previous steps without restarting
- Test sequences with users before implementation

---

### G5: Inline Guidance and Hints

**Statement**: Complex fields and actions must provide contextual guidance directly where needed, without requiring external help.

**Rationale**: Context switching to find help disrupts flow. Inline guidance maintains focus and reduces errors.

**Metrics**:
- 100% of complex/novel inputs have guidance
- Guidance appears before or during input, not just after errors
- Guidance uses plain language and examples
- Guidance doesn't create visual clutter

**Test Procedure**:
1. Identify all complex input fields/actions
2. Verify inline guidance presence
3. Error rate measurement: Should decrease 30%+ with inline guidance
4. User testing: Successful first-time completion rates

**Compliance Level**: Recommended

**Anti-Patterns**:
- ❌ No explanation of complex fields
- ❌ Guidance only in separate help section
- ❌ Technical jargon in hints
- ❌ Guidance shown after errors rather than proactively

**Implementation Notes**:
- Use placeholder text with examples: "e.g., john.smith@email.com"
- Add help text below fields: "Must be 8-12 characters"
- Use (?) icons with tooltips for additional context
- Show format masks for structured data (phone, date)

---

### G6: Cancel and Exit Options

**Statement**: Users must be able to exit or cancel any process at any time with clear indication of consequences.

**Rationale**: Feeling trapped creates anxiety. Clear exit paths provide psychological safety and control.

**Metrics**:
- Cancel/exit option on 100% of multi-step flows
- Cancel option clearly labeled and accessible
- Consequences of cancellation explained
- Partial progress saved when appropriate

**Test Procedure**:
1. Test cancellation from every step in flows
2. Verify warning/confirmation for cancel actions
3. User testing: Users successfully exit without frustration
4. Monitor forced-continuation incidents (target: 0)

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ No way to exit multi-step processes
- ❌ Cancel button hard to find or hidden
- ❌ Losing all progress when canceling
- ❌ Unclear what happens if you cancel

**Implementation Notes**:
- Always provide "Cancel" or "Exit" option
- Position consistently (typically top-left or bottom-left)
- Warn if canceling will lose data: "Progress will not be saved"
- Offer "Save as Draft" for longer processes

---

### G7: Smart Defaults in Flows

**Statement**: Multi-step processes should pre-fill or suggest information whenever possible, requiring confirmation rather than re-entry.

**Rationale**: Data re-entry is tedious and error-prone. Smart defaults reduce effort while maintaining control.

**Metrics**:
- Previously entered information is reused when appropriate
- Address, payment, profile information pre-filled
- Suggestions offered based on context or history
- All defaults are editable/overridable

**Test Procedure**:
1. Test data reuse across flows
2. Measure time-to-complete with and without smart defaults
3. Error rate comparison
4. User satisfaction with pre-filled information

**Compliance Level**: Recommended

**Anti-Patterns**:
- ❌ Asking for same information multiple times
- ❌ Not remembering user preferences
- ❌ Requiring re-entry of known information
- ❌ Pre-filling with incorrect/outdated information

**Implementation Notes**:
- Store user information securely
- Offer "Use previous address" options
- Suggest based on past behavior
- Always allow editing of pre-filled data
- Clear indication that data was pre-filled

---

### G8: Forgiving Navigation

**Statement**: Users must be able to navigate backward, forward, and jump between steps without losing data or progress.

**Rationale**: Rigid navigation creates stress. Flexible navigation accommodates different user needs and workflows.

**Metrics**:
- Back button functions correctly 100% of time
- Users can edit previous steps without restarting
- Progress saved when navigating between steps
- Jump navigation available for completed steps

**Test Procedure**:
1. Test back/forward navigation through all flows
2. Verify data persistence across navigation
3. User testing: Navigation freedom reduces anxiety
4. Monitor restart rates (should be near 0 for navigation reasons)

**Compliance Level**: Recommended

**Anti-Patterns**:
- ❌ Breaking back button functionality
- ❌ Forcing linear progression through steps
- ❌ Losing data when going back
- ❌ No way to review/edit previous steps

**Implementation Notes**:
- Support browser back button
- Implement "Edit" links on summary screens
- Auto-save progress at each step
- Allow jumping to any completed step
- Warn before leaving with unsaved changes

---

### G9: Completion Feedback

**Statement**: When tasks complete, provide clear, specific confirmation of what was accomplished and what happens next.

**Rationale**: Ambiguous completion creates uncertainty. Clear confirmation builds confidence and understanding.

**Metrics**:
- 100% of significant actions provide completion feedback
- Feedback includes: what happened, what's next, relevant details
- Confirmation remains visible for adequate time (5+ seconds)
- Option to view details or take next action

**Test Procedure**:
1. Test all completion points
2. Verify feedback clarity and completeness
3. User testing: Users understand what happened 95%+ of time
4. Monitor support requests about completion status

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Silent completion with no feedback
- ❌ Generic "Success!" messages
- ❌ Unclear what was actually completed
- ❌ No indication of next steps

**Implementation Notes**:
- Specific confirmation: "Payment of $24.99 processed successfully"
- Indicate next steps: "Your order will arrive in 3-5 days"
- Provide confirmation number/reference
- Offer relevant actions: "Track order" or "Return to home"
- Use success page, not just toast notification

---

### G10: Error Recovery Guidance

**Statement**: When errors occur, provide specific guidance on how to fix them and continue, maintaining context and progress.

**Rationale**: Errors without guidance cause abandonment. Clear recovery paths maintain momentum.

**Metrics**:
- 100% of error states include recovery instructions
- Error messages appear near the error source
- Specific explanation of what's wrong and how to fix
- Progress and data preserved during error recovery

**Test Procedure**:
1. Trigger all possible error conditions
2. Verify recovery guidance clarity
3. User testing: 90%+ successfully recover from errors
4. Time-to-recover measurement (<30 seconds target)
5. Error-related abandonment rate

**Compliance Level**: Minimum

**Anti-Patterns**:
- ❌ Generic error messages: "Invalid input"
- ❌ Errors at top of page, far from source
- ❌ No guidance on how to fix
- ❌ Clearing all data on error

**Implementation Notes**:
- Place error message near the problematic field
- Specific guidance: "Phone number must include area code"
- Highlight the error field visually
- Preserve all user input
- Provide examples of correct format

---

## Summary Table of Requirements

| ID | Requirement | Compliance Level |
|----|-------------|------------------|
| G1 | Clear Progress Indication | Minimum |
| G2 | Explicit Next Actions | Minimum |
| G3 | Persistent Orientation Cues | Minimum |
| G4 | Logical Step Sequencing | Recommended |
| G5 | Inline Guidance and Hints | Recommended |
| G6 | Cancel and Exit Options | Minimum |
| G7 | Smart Defaults in Flows | Recommended |
| G8 | Forgiving Navigation | Recommended |
| G9 | Completion Feedback | Minimum |
| G10 | Error Recovery Guidance | Minimum |

---

## Implementation Guidelines

### Design Phase
1. Map complete user journeys
2. Identify decision and transition points
3. Design progress indicators
4. Plan contextual guidance placement

### Development Phase
1. Implement progress tracking systems
2. Build flexible navigation systems
3. Create contextual help components
4. Implement error recovery mechanisms

### Testing Phase
1. Test all user flows end-to-end
2. Verify guidance effectiveness
3. Navigation testing (back, forward, skip)
4. Error scenario and recovery testing

### Maintenance Phase
1. Monitor user flow analytics
2. Identify drop-off points
3. Refine guidance based on support requests
4. A/B test flow improvements

---

## Related Standards

- **ISO 9241-210**: User guidance and feedback
- **Nielsen Heuristics**: Visibility of system status, user control, error prevention
- **WCAG 2.1**: Navigable, predictable
- **UX Best Practices**: Progressive disclosure, feedback, wayfinding

---

**For translations, see:**
- [German (Deutsch)](guided-interaction.de.md)
- [Arabic (العربية)](guided-interaction.ar.md)

**For implementation checklists, see:**
- [Product Checklist](../checklists/product-checklist.en.md)
- [UX Checklist](../checklists/ux-checklist.en.md)
- [Engineering Checklist](../checklists/engineering-checklist.en.md)
