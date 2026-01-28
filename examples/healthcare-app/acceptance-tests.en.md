# Healthcare App Example - Acceptance Tests

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Overview

This document provides measurable, testable acceptance criteria for the HealthCompanion healthcare app example. All tests are designed to validate SAGE Framework compliance.

**Testing Philosophy**:
- Tests must be objective and measurable
- Senior users (65+) must be primary testers
- Real devices and conditions must be used
- Results must be documentable and repeatable

---

## Test Suite 1: Safe Simplicity (S1-S10)

### S1: Minimal Visual Clutter

**Requirement**: Each screen section contains ≤7 interactive elements, white space ≥40%

**Test Procedure**:
1. Navigate to each screen in the app
2. Count interactive elements (buttons, links, inputs, toggles) per section
3. Calculate white space percentage using design tools

**Pass Criteria**:
- [ ] Home screen: ≤7 interactive elements per section
- [ ] Medication list: ≤7 elements per medication card
- [ ] Refill flow screens: ≤7 elements each
- [ ] Test results screen: ≤7 elements per result
- [ ] White space ≥40% on all screens (measured in Figma/browser inspector)

**Evidence Required**:
- Screenshots with element count annotations
- White space measurement report
- Screen audit spreadsheet

**Test Result**: PASS / FAIL
**Measured Values**: ___ elements (avg), ___% white space
**Notes**: _________________________________

---

### S2: Large Typography

**Requirement**: Base font size ≥18px, minimum size ≥14px, line height 1.5-1.8x

**Test Procedure**:
1. Inspect all text elements using browser DevTools
2. Measure font sizes across all screens
3. Verify line height ratios
4. Test on physical devices at normal viewing distance

**Pass Criteria**:
- [ ] Body text: 18px
- [ ] Medication names: 20px
- [ ] Dosage values: 24px (critical information)
- [ ] Small text (captions): 14px minimum
- [ ] Line height: 1.5-1.8x font size
- [ ] Readable at arm's length (senior user validation)

**Evidence Required**:
- DevTools screenshots showing computed font sizes
- CSS inspection report
- User readability test results (5+ seniors)

**Test Result**: PASS / FAIL
**Measured Values**: Base ___px, Min ___px, LH ___x
**Notes**: _________________________________

---

### S3: High Contrast

**Requirement**: Text contrast ≥7:1, interactive elements ≥3:1, color not sole indicator

**Test Procedure**:
1. Use WebAIM Contrast Checker on all text
2. Use Stark or similar tool for batch checking
3. Test with color blindness simulators
4. Verify information conveyed without color

**Pass Criteria**:
- [ ] All body text: ≥7:1 contrast ratio
- [ ] All headings: ≥7:1 contrast ratio
- [ ] Button text: ≥7:1 contrast ratio
- [ ] Interactive elements: ≥3:1 contrast
- [ ] Status indicators use icon + color + text (not color alone)
- [ ] High contrast mode available and functional

**Evidence Required**:
- WebAIM contrast report for all color combinations
- Screenshots of status indicators showing icon+text
- High contrast mode screenshots

**Test Result**: PASS / FAIL
**Minimum Contrast Found**: ___:1 (Element: _______)
**Notes**: _________________________________

---

### S4: Large Touch Targets

**Requirement**: Interactive elements ≥56×56px, spacing ≥8px

**Test Procedure**:
1. Measure all buttons, links, and inputs using DevTools
2. Measure spacing between adjacent interactive elements
3. Test tap accuracy with 5+ senior users on tablets/phones
4. Record mis-tap rate

**Pass Criteria**:
- [ ] Primary buttons: ≥56×56px (optimal: 64px height)
- [ ] Secondary buttons: ≥56×56px
- [ ] Text links with padding: ≥48px tap area height
- [ ] Medication list items: ≥72px height
- [ ] Spacing between targets: ≥8px
- [ ] Mis-tap rate: <5% in user testing

**Evidence Required**:
- DevTools measurement screenshots
- Touch target audit spreadsheet
- User testing video/data (tap accuracy)

**Test Result**: PASS / FAIL
**Mis-tap Rate**: ___%
**Smallest Target**: ___×___px (Element: _______)
**Notes**: _________________________________

---

### S5: Single Primary Action

**Requirement**: One clear primary action per screen, 1.5-2x more prominent

**Test Procedure**:
1. Navigate to each screen
2. Identify primary action button
3. Measure visual prominence (size, color, position)
4. Test with 5+ users: "What should you do next on this screen?" (<3 sec response)

**Pass Criteria**:
- [ ] Each screen has one identifiable primary action
- [ ] Primary action button 1.5-2x larger than secondary
- [ ] Primary action uses high-contrast accent color
- [ ] 90%+ of test users identify primary action in <3 seconds
- [ ] Primary action uses action verbs (not "OK" or "Submit")

**Evidence Required**:
- Screen-by-screen primary action audit
- Button size comparison measurements
- User identification test results

**Test Result**: PASS / FAIL
**User Identification Rate**: ___% in ___sec average
**Notes**: _________________________________

---

### S6: Consistent Navigation

**Requirement**: Navigation location and pattern consistent across 100% of screens

**Test Procedure**:
1. Document navigation placement on all screens
2. Verify home button present everywhere
3. Test user wayfinding (5+ users locate navigation)

**Pass Criteria**:
- [ ] Navigation bar in same location on all screens (top or bottom)
- [ ] Navigation icons and labels consistent
- [ ] Home button present on all screens (except home)
- [ ] Same navigation pattern used (tabs/menu/breadcrumbs)
- [ ] 95%+ users can find home button in <3 seconds

**Evidence Required**:
- Navigation audit document
- Screenshots showing consistency
- User wayfinding test results

**Test Result**: PASS / FAIL
**Consistency**: ___% of screens
**Notes**: _________________________________

---

### S7: Error Prevention

**Requirement**: Real-time validation, confirmations, input masks reduce errors

**Test Procedure**:
1. Test form validation on all input fields
2. Verify confirmations for destructive actions
3. Check input masks for structured data
4. Measure error rate with 10+ users completing tasks

**Pass Criteria**:
- [ ] Form fields validate in real-time (as user types)
- [ ] Validation messages appear before submission
- [ ] Destructive actions require confirmation
- [ ] Input masks guide structured data entry
- [ ] Error rate <10% across all tasks

**Evidence Required**:
- Form validation test matrix
- Confirmation dialog screenshots
- User error rate data (task-by-task)

**Test Result**: PASS / FAIL
**Error Rate**: ___%
**Notes**: _________________________________

---

### S8: Error Tolerance

**Requirement**: Error messages in plain language, explain fix, preserve input, undo available

**Test Procedure**:
1. Trigger all possible error states
2. Verify error message clarity and helpfulness
3. Test that user input is preserved
4. Verify undo mechanisms function

**Pass Criteria**:
- [ ] Error messages at grade 8 reading level
- [ ] All errors explain how to fix the issue
- [ ] User input preserved on validation errors
- [ ] Undo available for important actions (30s window)
- [ ] 90%+ users successfully recover from errors in <30 seconds

**Evidence Required**:
- Error message catalog with readability scores
- Screenshots showing input preservation
- Undo mechanism test results
- User error recovery data

**Test Result**: PASS / FAIL
**Recovery Rate**: ___% in ___sec average
**Notes**: _________________________________

---

### S9: Limited Information

**Requirement**: 3-5 main pieces of information per screen, IA ≤3 levels deep

**Test Procedure**:
1. Audit each screen for information density
2. Map information architecture depth
3. Test comprehension (5+ users recall key info after 30 seconds)

**Pass Criteria**:
- [ ] Each screen presents 3-5 key pieces of information
- [ ] Information architecture ≤3 levels deep
- [ ] 80%+ of users recall key information in testing
- [ ] Complex information available via progressive disclosure

**Evidence Required**:
- Screen information audit
- IA depth map
- User comprehension test results

**Test Result**: PASS / FAIL
**Info Recall Rate**: ___%
**Max IA Depth**: ___ levels
**Notes**: _________________________________

---

### S10: Predictable Interactions

**Requirement**: Interactions follow conventions, 90%+ users predict correctly

**Test Procedure**:
1. Test all interactive elements
2. Verify platform conventions followed
3. User expectation testing: "What do you think will happen if you tap this?"

**Pass Criteria**:
- [ ] Buttons look like buttons (filled, raised, labeled)
- [ ] Links look like links (colored, underlined)
- [ ] Standard UI patterns used (toggles, dropdowns, checkboxes)
- [ ] No unexpected behavior without explanation
- [ ] 90%+ users correctly predict interaction outcome

**Evidence Required**:
- UI pattern audit
- User expectation test results
- Video recordings of user confusion points

**Test Result**: PASS / FAIL
**Prediction Accuracy**: ___%
**Notes**: _________________________________

---

## Test Suite 2: Assisted Autonomy (A1-A10)

### A1: User Control

**Requirement**: All assistance features have on/off controls, settings persist, 95%+ can find

**Test Procedure**:
1. Identify all assistance features
2. Verify each has user control
3. Test persistence across sessions
4. User testing: "Can you find the settings to turn off tips?" (time and success)

**Pass Criteria**:
- [ ] Tooltips: on/off control
- [ ] Notifications: on/off control with granularity
- [ ] Auto-fill: on/off control
- [ ] Confirmations: on/off control
- [ ] Settings persist after app restart
- [ ] 95%+ users can locate settings in <30 seconds

**Evidence Required**:
- Settings audit document
- Persistence test results
- User findability test data

**Test Result**: PASS / FAIL
**Findability**: ___% in ___sec average
**Notes**: _________________________________

---

### A2: Progressive Assistance

**Requirement**: Assistance adapts to skill level, defaults to minimal

**Test Procedure**:
1. Test app with new account (beginner state)
2. Complete 10+ tasks and verify assistance reduces
3. Check that defaults are minimal, not maximal

**Pass Criteria**:
- [ ] New users see contextual help and tooltips
- [ ] Assistance reduces after successful task completions
- [ ] Skill level tracked and stored
- [ ] Default assistance level is minimal (user can increase)
- [ ] User can manually adjust assistance level

**Evidence Required**:
- Assistance state documentation
- Skill tracking implementation proof
- Before/after screenshots showing reduction

**Test Result**: PASS / FAIL
**Adaptation Functioning**: YES / NO
**Notes**: _________________________________

---

### A3: Undo Mechanisms

**Requirement**: Undo available for all state-changing actions, accessible in ≤3 interactions, ≥30s window

**Test Procedure**:
1. Identify all state-changing actions
2. Perform each action and verify undo availability
3. Time undo window
4. Count interactions to access undo
5. User testing: 95%+ successfully undo when needed

**Pass Criteria**:
- [ ] Marking medication as taken: undo available
- [ ] Sending message: undo available
- [ ] Changing settings: undo available
- [ ] Undo accessible in ≤3 taps/clicks
- [ ] Undo window ≥30 seconds (measured)
- [ ] 95%+ users successfully use undo in testing

**Evidence Required**:
- Action-undo audit matrix
- Undo window timing measurements
- User success rate data

**Test Result**: PASS / FAIL
**Undo Window**: ___sec
**User Success Rate**: ___%
**Notes**: _________________________________

---

### A4: Confirmations

**Requirement**: Important actions require confirmation, consequences explained, safe option default

**Test Procedure**:
1. Identify all destructive/important actions
2. Verify confirmation dialogs appear
3. Check explanation clarity
4. Verify safe option is default focus

**Pass Criteria**:
- [ ] Deleting data: confirmation required
- [ ] Marking medication taken: confirmation for look-alikes
- [ ] Confirmations explain consequences clearly
- [ ] Safe/cancel option is default focus
- [ ] Users understand consequences (90%+ comprehension)

**Evidence Required**:
- Confirmation dialog audit
- User comprehension test results
- Focus order verification

**Test Result**: PASS / FAIL
**Comprehension Rate**: ___%
**Notes**: _________________________________

---

### A5: Intelligent Defaults

**Requirement**: 80%+ users complete tasks with default settings

**Test Procedure**:
1. Track default usage vs. customization
2. Monitor task completion with defaults
3. Verify defaults are senior-optimized

**Pass Criteria**:
- [ ] Pharmacy defaults to user's usual location
- [ ] Quantity defaults to standard supply
- [ ] Font size defaults to 18px (senior-friendly)
- [ ] Notifications default to multiple channels
- [ ] 80%+ users complete tasks without changing defaults

**Evidence Required**:
- Analytics showing default usage rates
- Default configuration documentation
- User task completion data

**Test Result**: PASS / FAIL
**Default Usage Rate**: ___%
**Notes**: _________________________________

---

### A6: Contextual Help

**Requirement**: Help available on 100% of screens, accessible without leaving context, relevant

**Test Procedure**:
1. Audit every screen for help availability
2. Verify help accessibility
3. Check help relevance to current context
4. User testing: help discoverability and usefulness

**Pass Criteria**:
- [ ] Help icon/link on 100% of screens
- [ ] Help opens inline or modal (doesn't navigate away)
- [ ] Help content relevant to current screen/task
- [ ] Complex features have inline guidance
- [ ] 90%+ users rate help as useful

**Evidence Required**:
- Screen-by-screen help audit
- Help content relevance review
- User feedback on help usefulness

**Test Result**: PASS / FAIL
**Help Coverage**: ___% of screens
**Usefulness Rating**: ___/5
**Notes**: _________________________________

---

### A7: Transparent Behavior

**Requirement**: System actions explained, loading states visible for >2s operations

**Test Procedure**:
1. Identify all system-initiated actions
2. Verify explanations are present
3. Test all operations >2s for loading states
4. Measure loading state appearance timing

**Pass Criteria**:
- [ ] Auto-save: user notified
- [ ] Data sync: loading indicator shown
- [ ] Background operations: status visible
- [ ] Loading states appear for operations >2 seconds
- [ ] No unexpected behavior without explanation

**Evidence Required**:
- System action audit
- Loading state screenshots
- Performance measurements

**Test Result**: PASS / FAIL
**Explanation Coverage**: ___% of actions
**Notes**: _________________________________

---

### A8: Safe Exploration

**Requirement**: Preview modes for risky operations, auto-save protects work

**Test Procedure**:
1. Test all risky operations for preview/sandbox
2. Verify auto-save frequency and reliability
3. Test work protection in scenarios (app crash, accidental exit)

**Pass Criteria**:
- [ ] Refill cost preview before submitting
- [ ] Message preview before sending
- [ ] Auto-save every 30-60 seconds
- [ ] Progress saved when navigating away
- [ ] Work recoverable after crash/interruption

**Evidence Required**:
- Preview feature demonstrations
- Auto-save timing logs
- Recovery test results

**Test Result**: PASS / FAIL
**Auto-save Interval**: ___sec
**Recovery Success**: ___% of tests
**Notes**: _________________________________

---

### A9: Graduated Complexity

**Requirement**: Core features (80% use cases) in main UI, advanced behind progressive disclosure

**Test Procedure**:
1. Analyze feature usage analytics
2. Verify 80/20 rule applied to UI
3. Check advanced features are accessible but not prominent

**Pass Criteria**:
- [ ] Most-used features immediately visible
- [ ] Advanced features behind "More options" or similar
- [ ] Clear path from basic to advanced
- [ ] 80%+ of tasks completable without accessing advanced features

**Evidence Required**:
- Feature usage analytics
- UI complexity audit
- User task completion data

**Test Result**: PASS / FAIL
**Core Feature Accessibility**: ___% tasks without advanced
**Notes**: _________________________________

---

### A10: Respectful Tone

**Requirement**: Zero patronizing language, assistance as offers not commands, respect rating ≥4.5/5

**Test Procedure**:
1. Content audit of all microcopy
2. Senior user panel reviews tone
3. Survey 20+ users on respectfulness

**Pass Criteria**:
- [ ] No childish language or imagery
- [ ] Assistance phrased as "Would you like help?" not "Let me show you"
- [ ] Language assumes capability
- [ ] Error messages constructive, not blaming
- [ ] 90%+ users rate tone as respectful (≥4.5/5)

**Evidence Required**:
- Complete content audit with tone analysis
- User survey results on respectfulness
- Before/after examples of tone improvements

**Test Result**: PASS / FAIL
**Respect Rating**: ___/5
**Notes**: _________________________________

---

## Test Suite 3: Guided Interaction (G1-G10)

### G1: Progress Indication

**Requirement**: Multi-step flows (3+ steps) have progress indicators showing current/completed/remaining

**Test Procedure**:
1. Identify all multi-step flows
2. Verify progress indicators present
3. Test user wayfinding (95%+ state position correctly)

**Pass Criteria**:
- [ ] Refill flow (3 steps): progress indicator present
- [ ] Sign-up flow (if applicable): progress shown
- [ ] Indicator shows: current step, completed steps, remaining steps
- [ ] 95%+ users correctly state their position in flow

**Evidence Required**:
- Multi-step flow documentation
- Progress indicator screenshots
- User wayfinding test results

**Test Result**: PASS / FAIL
**User Position Awareness**: ___%
**Notes**: _________________________________

---

### G2: Explicit Next Actions

**Requirement**: 100% of screens have identifiable next action, action-oriented language, 90%+ users identify in <3sec

**Test Procedure**:
1. Audit all screens for next action clarity
2. Verify action verb usage
3. User testing: "What should you do next?" (time and accuracy)

**Pass Criteria**:
- [ ] Every screen has clear next action
- [ ] Button labels use action verbs ("Continue to Review," "Submit Refill")
- [ ] No generic labels ("OK," "Submit," "Next" alone)
- [ ] 90%+ users identify next action in <3 seconds

**Evidence Required**:
- Screen-by-screen next action audit
- User identification test results

**Test Result**: PASS / FAIL
**Identification Rate**: ___% in ___sec
**Notes**: _________________________________

---

### G3: Orientation Cues

**Requirement**: Page titles on 100%, current location in navigation, breadcrumbs for 3+ level hierarchies

**Test Procedure**:
1. Verify page titles on all screens
2. Check navigation highlights current location
3. Test breadcrumbs on deep pages

**Pass Criteria**:
- [ ] Page title visible on 100% of screens
- [ ] Current location highlighted in navigation
- [ ] Breadcrumbs for pages 3+ levels deep
- [ ] Breadcrumbs functional (clickable)

**Evidence Required**:
- Page title audit
- Navigation highlighting screenshots
- Breadcrumb functionality test

**Test Result**: PASS / FAIL
**Coverage**: ___% of screens have titles
**Notes**: _________________________________

---

### G4: Logical Sequencing

**Requirement**: Process steps follow predictable sequence, 90%+ users predict next step

**Test Procedure**:
1. Document all multi-step processes
2. Verify logical ordering
3. User testing: "What do you think comes next?" (accuracy)

**Pass Criteria**:
- [ ] Refill flow: pharmacy → review → confirm (logical)
- [ ] All flows follow expected patterns
- [ ] No unexpected step orders
- [ ] 90%+ users correctly predict next step

**Evidence Required**:
- Process flow documentation
- User prediction test results

**Test Result**: PASS / FAIL
**Prediction Accuracy**: ___%
**Notes**: _________________________________

---

### G5: Inline Guidance

**Requirement**: Complex fields have contextual guidance, appears before/during input, reduces errors 30%+

**Test Procedure**:
1. Identify complex input fields
2. Verify guidance presence and timing
3. Measure error rates with/without guidance

**Pass Criteria**:
- [ ] Password field: requirements shown inline
- [ ] Date fields: format example provided
- [ ] Guidance visible before errors occur
- [ ] Error rate decreases 30%+ with inline guidance

**Evidence Required**:
- Inline guidance audit
- Error rate comparison data

**Test Result**: PASS / FAIL
**Error Reduction**: ___%
**Notes**: _________________________________

---

### G6: Cancel/Exit Options

**Requirement**: Cancel/exit on 100% of multi-step flows, consequences explained, partial progress saved

**Test Procedure**:
1. Test cancel/exit in all flows
2. Verify consequence explanations
3. Check partial progress saving

**Pass Criteria**:
- [ ] Cancel button present in all multi-step flows
- [ ] Cancel explains what happens to progress
- [ ] Partial progress saved appropriately
- [ ] Can resume later from saved progress

**Evidence Required**:
- Cancel option audit
- Progress saving test results

**Test Result**: PASS / FAIL
**Coverage**: ___% of flows have cancel
**Notes**: _________________________________

---

### G7: Smart Defaults

**Requirement**: Previously entered info reused, all pre-filled data editable

**Test Procedure**:
1. Complete flow with data
2. Start flow again and verify data reuse
3. Verify all defaults are editable

**Pass Criteria**:
- [ ] Pharmacy selection remembered
- [ ] Contact information reused
- [ ] All pre-filled fields are editable
- [ ] Smart defaults don't prevent customization

**Evidence Required**:
- Data reuse test results
- Editability verification

**Test Result**: PASS / FAIL
**Reuse Functioning**: YES / NO
**Notes**: _________________________________

---

### G8: Forgiving Navigation

**Requirement**: Back button works 100% of time, can edit previous steps, progress saved

**Test Procedure**:
1. Test back button on all screens
2. Attempt to edit previous steps in flows
3. Verify progress persistence

**Pass Criteria**:
- [ ] Back button functions correctly 100% of time
- [ ] Can navigate to previous steps and edit
- [ ] Progress saved when using back
- [ ] No data loss during navigation

**Evidence Required**:
- Back button test matrix
- Progress persistence test results

**Test Result**: PASS / FAIL
**Back Button Success**: ___%
**Notes**: _________________________________

---

### G9: Completion Feedback

**Requirement**: 100% of significant actions provide completion feedback, includes what happened and what's next

**Test Procedure**:
1. Identify all significant actions
2. Verify completion feedback
3. Check feedback quality (what happened + what's next)

**Pass Criteria**:
- [ ] Medication taken: confirmation with what's next
- [ ] Refill submitted: confirmation with timeline
- [ ] Message sent: confirmation with expected response time
- [ ] 95%+ users understand what happened

**Evidence Required**:
- Completion feedback audit
- User comprehension test results

**Test Result**: PASS / FAIL
**Feedback Coverage**: ___% of actions
**Comprehension**: ___%
**Notes**: _________________________________

---

### G10: Error Recovery

**Requirement**: 100% of errors include recovery instructions, near error source, 90%+ successful recovery in <30sec

**Test Procedure**:
1. Trigger all error states
2. Verify recovery instructions present and clear
3. User testing: successful error recovery

**Pass Criteria**:
- [ ] All errors have recovery instructions
- [ ] Error messages appear near error source
- [ ] Instructions are actionable
- [ ] 90%+ users successfully recover in <30 seconds

**Evidence Required**:
- Error recovery test matrix
- User recovery success data

**Test Result**: PASS / FAIL
**Recovery Success**: ___% in ___sec
**Notes**: _________________________________

---

## Test Suite 4: Emotional Trust Layer (E1-E10)

### E1: Consistent Visual Language

**Requirement**: Design system covers 95%+ UI, max 5-7 colors, max 2-3 fonts, 80%+ standard components

**Test Procedure**:
1. Audit all UI elements against design system
2. Count colors in use
3. Count font families
4. Calculate component reuse percentage

**Pass Criteria**:
- [ ] 95%+ of UI uses design system components
- [ ] Color palette limited to 5-7 functional colors
- [ ] Maximum 2-3 font families used
- [ ] 80%+ of UI uses standard components (not custom)

**Evidence Required**:
- Design system coverage audit
- Color and font usage reports
- Component usage analysis

**Test Result**: PASS / FAIL
**DS Coverage**: ___%
**Colors Used**: ___
**Fonts Used**: ___
**Notes**: _________________________________

---

### E2: Immediate Feedback

**Requirement**: Feedback within 100ms, loading states for >200ms operations, 100% interactive elements have hover/focus

**Test Procedure**:
1. Measure interaction response times
2. Test all buttons/links for hover/focus states
3. Verify loading states appear timely

**Pass Criteria**:
- [ ] Button press feedback: <100ms (visual change)
- [ ] Form input feedback: <100ms
- [ ] Loading states for operations >200ms
- [ ] 100% of interactive elements have hover states
- [ ] 100% of interactive elements have focus states
- [ ] Responsiveness rating ≥4/5 in user testing

**Evidence Required**:
- Performance measurement logs
- Interaction state audit screenshots
- User responsiveness ratings

**Test Result**: PASS / FAIL
**Avg Feedback Time**: ___ms
**State Coverage**: ___%
**User Rating**: ___/5
**Notes**: _________________________________

---

### E3: Reassuring Language

**Requirement**: Grade 8 readability, no jargon, warmth rating ≥4/5

**Test Procedure**:
1. Run readability analysis on all content
2. Audit for technical jargon
3. User survey on language warmth and clarity

**Pass Criteria**:
- [ ] All content at grade 8 reading level or below
- [ ] Zero unexplained medical jargon
- [ ] Positive, supportive tone throughout
- [ ] Error messages constructive, not blaming
- [ ] 90%+ users rate tone warmth ≥4/5

**Evidence Required**:
- Readability analysis reports (Flesch-Kincaid)
- Content audit document
- User tone perception survey results

**Test Result**: PASS / FAIL
**Reading Level**: Grade ___
**Warmth Rating**: ___/5
**Notes**: _________________________________

---

### E4: Trust Indicators

**Requirement**: Security badges on sensitive pages, privacy policy accessible in ≤2 clicks, contact visible, 90%+ can identify

**Test Procedure**:
1. Audit sensitive pages for trust indicators
2. Count clicks to privacy policy from various screens
3. Verify contact information visibility
4. User testing: "How do you know this app is secure?"

**Pass Criteria**:
- [ ] Security/encryption badges visible on login, payment, health data screens
- [ ] Privacy policy accessible in ≤2 clicks from anywhere
- [ ] Contact information visible on all screens or in menu
- [ ] Doctor credentials visible in messaging
- [ ] 90%+ users can identify trust indicators

**Evidence Required**:
- Trust indicator audit
- Click path documentation
- User trust perception test results

**Test Result**: PASS / FAIL
**User Identification**: ___%
**Notes**: _________________________________

---

### E5: Predictable Patterns

**Requirement**: 95%+ interactions follow established patterns, match platform conventions, surprise/confusion <5%

**Test Procedure**:
1. Audit all interactions against platform standards
2. User testing: measure confusion/surprise reactions
3. Track unexpected behavior reports

**Pass Criteria**:
- [ ] 95%+ interactions follow iOS/Android conventions
- [ ] UI patterns consistent within app
- [ ] No unexpected page reloads
- [ ] Actions match labels
- [ ] Surprise/confusion rate <5% in testing

**Evidence Required**:
- Platform convention compliance audit
- User confusion rate data
- Video analysis of user testing

**Test Result**: PASS / FAIL
**Pattern Consistency**: ___%
**Confusion Rate**: ___%
**Notes**: _________________________________

---

### E6: Transparent Data Handling

**Requirement**: Privacy policy grade 8 language, data collection explained at point, 85%+ understand practices

**Test Procedure**:
1. Readability analysis of privacy policy
2. Audit data collection points for explanations
3. User comprehension testing

**Pass Criteria**:
- [ ] Privacy policy at grade 8 reading level
- [ ] Data usage explained when requested (location, contacts, camera)
- [ ] Clear consent for each data type
- [ ] 85%+ users understand what data is collected and why

**Evidence Required**:
- Privacy policy readability report
- Data collection point audit
- User comprehension test results

**Test Result**: PASS / FAIL
**Privacy Policy Reading Level**: Grade ___
**User Comprehension**: ___%
**Notes**: _________________________________

---

### E7: Human Support Access

**Requirement**: Contact visible in ≤2 clicks, multiple channels, satisfaction ≥4/5

**Test Procedure**:
1. Count clicks to reach support from various screens
2. Verify multiple contact methods available
3. User feedback on support accessibility

**Pass Criteria**:
- [ ] Contact options reachable in ≤2 clicks from any screen
- [ ] Multiple channels: phone, chat, message, email
- [ ] Phone number tap-to-call enabled
- [ ] Support hours clearly stated
- [ ] Support satisfaction ≥4/5 in surveys

**Evidence Required**:
- Click path documentation
- Support channel audit
- User satisfaction survey results

**Test Result**: PASS / FAIL
**Max Clicks to Support**: ___
**Satisfaction Rating**: ___/5
**Notes**: _________________________________

---

### E8: Graceful Performance

**Requirement**: Page load <2s on 4G, time to interactive <3s, 99%+ uptime

**Test Procedure**:
1. Performance testing on 4G connection
2. Measure load times and TTI across all screens
3. Monitor uptime over 30-day period

**Pass Criteria**:
- [ ] Average page load time <2 seconds on 4G
- [ ] Time to interactive <3 seconds
- [ ] No layout shifts (CLS <0.1)
- [ ] Uptime 99%+ (measured over 30 days)
- [ ] Graceful offline handling

**Evidence Required**:
- Lighthouse performance reports
- Real-world 4G testing data
- Uptime monitoring dashboard
- Core Web Vitals measurements

**Test Result**: PASS / FAIL
**Avg Load Time**: ___sec
**TTI**: ___sec
**Uptime**: ___%
**Notes**: _________________________________

---

### E9: Success Celebration

**Requirement**: Key milestones acknowledged, dignified (not patronizing), appropriate to context

**Test Procedure**:
1. Identify all success/milestone moments
2. Verify acknowledgment present
3. Review celebration tone with senior users

**Pass Criteria**:
- [ ] Medication adherence milestones acknowledged
- [ ] Task completions acknowledged appropriately
- [ ] Celebrations dignified, not childish
- [ ] Appropriate to context (health-related)
- [ ] Users feel encouraged, not patronized (survey)

**Evidence Required**:
- Celebration audit document
- User tone perception feedback
- Screenshots of success messages

**Test Result**: PASS / FAIL
**User Perception**: Appropriate / Patronizing
**Notes**: _________________________________

---

### E10: Familiar Metaphors

**Requirement**: Icon recognition >85%, icons paired with text labels

**Test Procedure**:
1. Test icon recognition with 10+ seniors
2. Verify all icons have text labels
3. Check for culturally appropriate metaphors

**Pass Criteria**:
- [ ] Icon recognition rate >85% without labels
- [ ] 100% of icons paired with text labels
- [ ] Standard icons used (home, search, settings, help)
- [ ] No obscure or unclear metaphors

**Evidence Required**:
- Icon recognition test results
- Icon-label audit
- Cultural appropriateness review

**Test Result**: PASS / FAIL
**Recognition Rate**: ___%
**Label Coverage**: ___%
**Notes**: _________________________________

---

## Integration Testing

### End-to-End User Scenarios

Test complete user journeys with real senior users (age 65+, n=10 minimum):

#### Scenario 1: First-Time User Setup

**Task**: Download app, create account, add first medication

**Pass Criteria**:
- [ ] 90%+ complete setup independently
- [ ] Average time <10 minutes
- [ ] Error rate <10%
- [ ] Confidence rating ≥4/5 after setup

**Test Result**: PASS / FAIL
**Completion Rate**: ___%
**Avg Time**: ___min
**Confidence**: ___/5
**Notes**: _________________________________

---

#### Scenario 2: Daily Medication Management

**Task**: View today's medications, mark one as taken, check tomorrow's schedule

**Pass Criteria**:
- [ ] 95%+ complete all sub-tasks successfully
- [ ] Average time <2 minutes
- [ ] Error rate <5%
- [ ] Satisfaction rating ≥4/5

**Test Result**: PASS / FAIL
**Completion Rate**: ___%
**Avg Time**: ___min
**Satisfaction**: ___/5
**Notes**: _________________________________

---

#### Scenario 3: Prescription Refill

**Task**: Request refill for a medication that's running low

**Pass Criteria**:
- [ ] 90%+ complete refill request successfully
- [ ] Average time <5 minutes
- [ ] Error rate <10%
- [ ] Understands next steps (90%+ comprehension)

**Test Result**: PASS / FAIL
**Completion Rate**: ___%
**Avg Time**: ___min
**Comprehension**: ___%
**Notes**: _________________________________

---

#### Scenario 4: Viewing and Understanding Test Results

**Task**: View recent lab results, understand if they're normal, access help for one result

**Pass Criteria**:
- [ ] 90%+ can locate test results
- [ ] 85%+ correctly identify normal vs. abnormal
- [ ] 90%+ successfully access contextual help
- [ ] 80%+ understand explanations (comprehension test)

**Test Result**: PASS / FAIL
**Location Success**: ___%
**Result Interpretation**: ___%
**Help Access**: ___%
**Comprehension**: ___%
**Notes**: _________________________________

---

#### Scenario 5: Error Recovery

**Task**: Accidentally mark wrong medication as taken, undo the mistake

**Pass Criteria**:
- [ ] 95%+ successfully find and use undo
- [ ] Average time to recovery <30 seconds
- [ ] Zero instances of giving up
- [ ] Confidence in recovery ≥4/5

**Test Result**: PASS / FAIL
**Recovery Success**: ___%
**Avg Time**: ___sec
**Confidence**: ___/5
**Notes**: _________________________________

---

## Compliance Summary

### Overall SAGE Compliance Score

| Pillar | Requirements | Tests Passed | Compliance % |
|--------|--------------|--------------|--------------|
| Safe Simplicity (S1-S10) | 10 | __ / 10 | ___% |
| Assisted Autonomy (A1-A10) | 10 | __ / 10 | ___% |
| Guided Interaction (G1-G10) | 10 | __ / 10 | ___% |
| Emotional Trust Layer (E1-E10) | 10 | __ / 10 | ___% |
| **TOTAL** | **40** | **__ / 40** | **___%** |

### Compliance Level Achieved

- [ ] **Minimum** (80%+ of Minimum requirements) – Basic SAGE compliance
- [ ] **Recommended** (90%+ Min + 70%+ Rec) – Strong SAGE compliance
- [ ] **Strong** (95%+ Min + 85%+ Rec + 50%+ Strong) – Exemplary SAGE compliance

**Level Achieved**: _________________________

---

### Critical Issues Found

1. _________________________________
2. _________________________________
3. _________________________________

### Recommendations for Improvement

1. _________________________________
2. _________________________________
3. _________________________________

---

### Testing Metadata

**Test Execution Date**: _________________________
**Test Environment**: _________________________
**Devices Used**: _________________________
**Senior User Demographics**: 
- Age range: _________________________
- Tech experience levels: _________________________
- Health conditions represented: _________________________

**Sign-Off**:
- **QA Lead**: _________________________ Date: _____
- **Accessibility Lead**: _________________________ Date: _____
- **Product Owner**: _________________________ Date: _____

---

## Resources

### Related Documentation
- [Overview](overview.en.md) – Feature descriptions
- [User Flows](user-flows.en.md) – Detailed interaction walkthroughs

### Translations
- [German (Deutsch)](acceptance-tests.de.md)
- [Arabic (العربية)](acceptance-tests.ar.md)

### SAGE Framework
- [Core Specifications](../../core/)
- [Checklists](../../checklists/)

---

**Note**: This acceptance test suite represents measurable validation criteria. All pass/fail decisions must be based on objective measurements and senior user testing data, not subjective assessments.
