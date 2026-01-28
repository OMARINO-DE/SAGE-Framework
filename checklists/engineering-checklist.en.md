# SAGE Framework - Engineering Checklist

**Developed and maintained by OMARINO IT Services .inh Omar Zaror in Germany**  
**Website:** https://www.omarino.de | **Email:** omar@omarino.de

**Version:** 1.0  
**Last Updated:** January 28, 2026  
**Language:** English (EN)

---

## Overview

This checklist helps Engineers implement SAGE-compliant features correctly. Use during development, code review, and QA testing.

**How to Use**:
- Reference during implementation
- Verify items before code review
- Validate in QA before deployment
- Use as part of Definition of Done

---

## Development Environment Setup

### Tools & Extensions

- [ ] Accessibility testing tools installed (axe DevTools, WAVE)
- [ ] Contrast checker available (WebAIM, Stark)
- [ ] Screen reader installed (NVDA, JAWS, VoiceOver)
- [ ] Font/spacing measurement tools configured
- [ ] Performance monitoring tools integrated
- [ ] Automated accessibility tests in CI/CD

---

## Implementation - Safe Simplicity

### S1: Minimal Visual Clutter

```javascript
// ✅ Good: Limited elements
<Screen>
  <Title>Send Money</Title>
  <AmountInput />
  <RecipientSelector />
  <SendButton primary />  {/* Primary action */}
  <CancelButton />        {/* Secondary action */}
</Screen>

// ❌ Bad: Too many elements
<Screen>
  <Title /><Subtitle /><Info />
  <Input1 /><Input2 /><Input3 /><Input4 />
  <Button1 /><Button2 /><Button3 />
  <Ad /><SocialShare /><RelatedLinks />
</Screen>
```

- [ ] Each screen section has ≤7 interactive elements
- [ ] Visual hierarchy implemented (size, weight, color)
- [ ] Primary action visually prominent
- [ ] White space CSS applied (padding, margins)

### S2: Large Typography

```css
/* ✅ SAGE-compliant typography */
:root {
  --font-base: 18px;          /* Body text */
  --font-large: 20px;         /* Important text */
  --font-small: 14px;         /* Minimum size */
  --line-height: 1.6;
  --line-length: 65ch;        /* Max width */
}

body {
  font-family: 'Inter', 'Open Sans', system-ui, sans-serif;
  font-size: var(--font-base);
  line-height: var(--line-height);
}
```

- [ ] Base font size ≥18px implemented
- [ ] No text smaller than 14px
- [ ] Line height 1.5-1.8x implemented
- [ ] Line length limited to 50-75 characters
- [ ] Legible font family used
- [ ] Font sizes tested on actual devices

### S3: High Contrast

```css
/* ✅ SAGE-compliant contrast */
:root {
  --text-primary: #000000;      /* On white: 21:1 */
  --text-secondary: #404040;    /* On white: 11.6:1 */
  --bg-primary: #FFFFFF;
  --accent: #0052CC;            /* Tested: 8.6:1 */
  --error: #C9372C;             /* Tested: 7.2:1 */
}

/* High contrast mode */
@media (prefers-contrast: high) {
  :root {
    --text-primary: #000000;
    --bg-primary: #FFFFFF;
    --accent: #003D99;          /* Higher contrast */
  }
}
```

- [ ] All text contrast ≥7:1 verified
- [ ] Interactive elements contrast ≥3:1
- [ ] High contrast mode implemented
- [ ] Contrast ratios documented in code comments
- [ ] Tested with browser contrast tools

### S4: Large Touch Targets

```css
/* ✅ SAGE-compliant touch targets */
.button {
  min-width: 56px;
  min-height: 56px;
  padding: 16px 24px;
  margin: 8px;                  /* Spacing between targets */
  cursor: pointer;
}

.link {
  padding: 12px 8px;            /* Increase clickable area */
  margin: 4px 0;
}

/* Ensure full area is interactive */
.card-link {
  display: block;
  text-decoration: none;
}
```

- [ ] Buttons ≥56x56px implemented
- [ ] Touch targets spaced ≥8px apart
- [ ] Full element area is clickable/tappable
- [ ] Touch target sizes verified with DevTools
- [ ] Tested on actual touch devices

### S5: Single Primary Action

```jsx
// ✅ Good: Clear primary action
<ActionBar>
  <Button variant="primary" size="large">
    Continue to Payment
  </Button>
  <Button variant="secondary">
    Save for Later
  </Button>
</ActionBar>

// CSS ensures visual prominence
.button-primary {
  background: var(--accent);
  font-size: 20px;
  font-weight: 600;
  min-width: 200px;
}

.button-secondary {
  background: transparent;
  font-size: 16px;
  font-weight: 400;
}
```

- [ ] One primary action per screen implemented
- [ ] Primary action 1.5-2x more prominent
- [ ] Primary action positioned consistently
- [ ] Visual differentiation clear

### S6-S10: Navigation, Errors, Information

- [ ] Navigation location consistent across all pages
- [ ] Navigation HTML structure identical
- [ ] Home link present on every page
- [ ] Real-time form validation implemented
- [ ] Validation messages appear immediately
- [ ] Confirmation dialogs for destructive actions
- [ ] Error messages in plain language
- [ ] User input preserved on errors (localStorage/state)
- [ ] Undo mechanism implemented (30s+ window)
- [ ] Information limited to 3-5 key points per screen
- [ ] Content hierarchy enforced (H1 → H2 → H3)
- [ ] Interactive elements follow platform conventions

---

## Implementation - Assisted Autonomy

### A1: User Control

```javascript
// ✅ Persistent assistance settings
const AssistanceSettings = {
  save: (preferences) => {
    localStorage.setItem('sage-assistance', JSON.stringify(preferences));
  },
  load: () => {
    return JSON.parse(localStorage.getItem('sage-assistance')) || {
      showTooltips: true,
      autoComplete: true,
      confirmations: true
    };
  }
};

// Allow granular control
<Settings>
  <Toggle 
    label="Show helpful tips"
    value={settings.showTooltips}
    onChange={updateSetting}
  />
  <Toggle 
    label="Confirm important actions"
    value={settings.confirmations}
  />
</Settings>
```

- [ ] Assistance settings persisted (localStorage/backend)
- [ ] Settings accessible within 2 clicks
- [ ] Granular on/off controls implemented
- [ ] Settings apply immediately

### A2-A3: Progressive Assistance & Undo

```javascript
// ✅ Progressive assistance
const [skillLevel, setSkillLevel] = useState('beginner');

useEffect(() => {
  // Track successful completions
  const completions = getCompletionCount();
  if (completions > 10) setSkillLevel('intermediate');
  if (completions > 50) setSkillLevel('advanced');
}, []);

// Adapt UI based on skill
{skillLevel === 'beginner' && <InlineHelp />}

// ✅ Undo mechanism
const [history, setHistory] = useState([]);
const [undoTimer, setUndoTimer] = useState(null);

const performAction = (action) => {
  setHistory([...history, getCurrentState()]);
  applyAction(action);
  
  // Show undo toast for 30 seconds
  showUndoToast({
    duration: 30000,
    onUndo: () => restoreState(history[history.length - 1])
  });
};
```

- [ ] Progressive assistance implemented
- [ ] Skill tracking mechanism in place
- [ ] Undo available for all state-changing actions
- [ ] Undo accessible within 3 clicks/taps
- [ ] 30-second minimum undo window
- [ ] Undo UI clearly visible

### A4-A6: Confirmations, Defaults, Help

```jsx
// ✅ Confirmation dialog
<ConfirmDialog
  title="Delete this document?"
  message="This action cannot be undone. The document will be permanently removed."
  confirmLabel="Delete Document"
  cancelLabel="Keep Document"
  defaultFocus="cancel"  // Safe option focused
  onConfirm={handleDelete}
/>

// ✅ Smart defaults
<Form defaultValues={{
  country: userLocation.country,
  language: userPreference.language,
  fontSize: '18px'  // SAGE-compliant default
}} />

// ✅ Contextual help
<Field>
  <Label>Billing ZIP Code</Label>
  <Input type="text" pattern="[0-9]{5}" />
  <HelpIcon tooltip="Enter your 5-digit ZIP code. Example: 90210" />
</Field>
```

- [ ] Confirmations for destructive actions
- [ ] Confirmations explain consequences
- [ ] Safe option is default focus
- [ ] Smart defaults implemented (80%+ use default)
- [ ] Help accessible on all screens
- [ ] Help contextual and relevant
- [ ] Help doesn't require navigation away

### A7-A10: Transparency, Safety, Complexity, Tone

- [ ] Loading states visible for operations >2s
- [ ] Progress indicators show percentage/time
- [ ] System behaviors explained in UI
- [ ] Preview mode for risky operations
- [ ] Auto-save implemented (30-60s interval)
- [ ] Saved state indicator visible
- [ ] Core features (80% use) in main UI
- [ ] Advanced features behind progressive disclosure
- [ ] All content respectful and capability-assuming
- [ ] Zero patronizing language in codebase

---

## Implementation - Guided Interaction

### G1-G3: Progress, Next Actions, Orientation

```jsx
// ✅ Multi-step progress
<ProgressIndicator current={2} total={4}>
  <Step completed>Personal Info</Step>
  <Step active>Payment Details</Step>
  <Step>Review</Step>
  <Step>Confirmation</Step>
</ProgressIndicator>

// ✅ Explicit next action
<ActionBar>
  <Button primary icon="→">
    Continue to Review
  </Button>
</ActionBar>

// ✅ Breadcrumbs
<Breadcrumbs>
  <Link to="/">Home</Link>
  <Link to="/account">Account</Link>
  <Current>Settings</Current>
</Breadcrumbs>
```

- [ ] Progress indicators on multi-step flows (3+ steps)
- [ ] Progress shows current, completed, remaining
- [ ] Next action clearly labeled (action verbs)
- [ ] Page titles visible on all screens
- [ ] Current location highlighted in navigation
- [ ] Breadcrumbs for hierarchies 3+ levels

### G4-G6: Sequence, Guidance, Exit

```javascript
// ✅ Inline guidance
<Input
  label="Create Password"
  type="password"
  helpText="Password must be at least 8 characters and include a number"
  validate={(value) => {
    if (value.length < 8) return "Must be at least 8 characters";
    if (!/\d/.test(value)) return "Must include a number";
    return null;
  }}
/>

// ✅ Cancel with confirmation
<MultiStepForm>
  <CancelButton onClick={() => {
    if (hasUnsavedChanges) {
      confirm("Your progress will be saved as a draft. Continue?");
    }
    exitFlow();
  }} />
</MultiStepForm>
```

- [ ] Process steps follow logical sequence
- [ ] Complex fields have inline guidance
- [ ] Guidance visible before errors occur
- [ ] Cancel/exit on all multi-step flows
- [ ] Cancel consequences explained
- [ ] Partial progress saved appropriately

### G7-G10: Defaults, Navigation, Feedback, Recovery

- [ ] Previously entered data reused intelligently
- [ ] Pre-filled data is editable
- [ ] Back button functions correctly
- [ ] Can edit previous steps without restart
- [ ] Progress saved during navigation
- [ ] Completion feedback for significant actions
- [ ] Feedback includes "what's next"
- [ ] Error messages include recovery instructions
- [ ] Error messages near error source

---

## Implementation - Emotional Trust Layer

### E1-E2: Consistency & Responsiveness

```javascript
// ✅ Design system implementation
import { Button, Input, Card } from '@company/sage-components';

// All components pre-configured for SAGE compliance

// ✅ Immediate feedback
const handleClick = async (action) => {
  setLoading(true);  // Immediate visual change
  
  try {
    const result = await performAction(action);
    showSuccess("Action completed!");
  } catch (error) {
    showError("Something went wrong. Please try again.");
  } finally {
    setLoading(false);
  }
};

// ✅ Performance monitoring
useEffect(() => {
  const interactionTime = performance.now() - interactionStart;
  if (interactionTime > 100) {
    logPerformanceWarning('Slow interaction', interactionTime);
  }
}, []);
```

- [ ] Component library used consistently
- [ ] Maximum 5-7 colors in palette
- [ ] Maximum 2-3 font families
- [ ] Feedback appears within 100ms
- [ ] Loading states for operations >200ms
- [ ] All interactive elements have hover/focus states
- [ ] Performance monitored and optimized

### E3-E5: Communication, Trust, Predictability

```javascript
// ✅ Plain language errors
const errorMessages = {
  'auth/wrong-password': 'The password is incorrect. Try again or reset your password.',
  'auth/user-not-found': 'We couldn\'t find an account with that email. Check the spelling or create a new account.',
  'network-error': 'We\'re having trouble connecting. Check your internet and try again.'
};

// ✅ Trust indicators
<SecurePage>
  <SecurityBadge icon="🔒" text="256-bit encryption" />
  <PrivacyLink>How we protect your data</PrivacyLink>
  <SupportContact>Need help? Call 1-800-SUPPORT</SupportContact>
</SecurePage>

// ✅ Predictable patterns
// Use standard HTML elements, follow platform conventions
<button onClick={handleClick}>  {/* Not <div> styled as button */}
<a href="/page">                {/* Not onClick navigation */}
```

- [ ] All content at grade 8 reading level
- [ ] No jargon in user-facing text
- [ ] Error messages constructive
- [ ] Security indicators on sensitive pages
- [ ] Privacy policy accessible (≤2 clicks)
- [ ] Contact information visible
- [ ] UI patterns follow platform conventions
- [ ] No unexpected behaviors

### E6-E10: Privacy, Support, Performance, Recognition

- [ ] Privacy policy in plain language
- [ ] Data collection explained at point of collection
- [ ] Contact methods visible within 2 clicks
- [ ] Multiple support channels available
- [ ] Page load <2s on 4G
- [ ] Time to interactive <3s
- [ ] Uptime monitoring in place
- [ ] Success celebrations implemented
- [ ] Milestones acknowledged appropriately
- [ ] Icons paired with text labels
- [ ] Familiar metaphors used (folder, trash, etc.)

---

## Code Quality & Testing

### Accessibility Testing

```javascript
// ✅ Automated accessibility tests
describe('LoginPage', () => {
  it('meets WCAG AAA standards', async () => {
    const { container } = render(<LoginPage />);
    const results = await axe(container);
    expect(results.violations).toHaveLength(0);
  });

  it('has correct contrast ratios', () => {
    const button = screen.getByRole('button');
    const contrast = calculateContrast(button);
    expect(contrast).toBeGreaterThanOrEqual(7);
  });

  it('has large enough touch targets', () => {
    const buttons = screen.getAllByRole('button');
    buttons.forEach(button => {
      const size = button.getBoundingClientRect();
      expect(size.width).toBeGreaterThanOrEqual(56);
      expect(size.height).toBeGreaterThanOrEqual(56);
    });
  });
});
```

- [ ] Automated accessibility tests in test suite
- [ ] Contrast ratio tests passing
- [ ] Touch target size tests passing
- [ ] Keyboard navigation tests passing
- [ ] Screen reader tests passing
- [ ] Performance tests passing (<2s load, <100ms interaction)

### Manual Testing

- [ ] Tested with screen reader (NVDA/JAWS/VoiceOver)
- [ ] Tested with keyboard only (no mouse)
- [ ] Tested with high contrast mode
- [ ] Tested with 200% browser zoom
- [ ] Tested on touch devices
- [ ] Tested with slow network (throttling)
- [ ] Tested with JavaScript disabled (graceful degradation)

### SAGE-Specific Tests

```javascript
describe('SAGE Compliance', () => {
  it('S1: has ≤7 interactive elements per section', () => {
    const section = screen.getByRole('main');
    const interactive = section.querySelectorAll('button, a, input, select');
    expect(interactive.length).toBeLessThanOrEqual(7);
  });

  it('A3: undo available within 30 seconds', async () => {
    fireEvent.click(screen.getByText('Delete'));
    const undoButton = await screen.findByText('Undo');
    expect(undoButton).toBeVisible();
    
    await waitFor(() => {
      expect(undoButton).toBeVisible();
    }, { timeout: 30000 });
  });

  it('G2: next action is clear', () => {
    const primaryAction = screen.getByRole('button', { name: /continue|next|submit/i });
    expect(primaryAction).toHaveClass('primary');
  });
});
```

---

## Code Review Checklist

### Before Requesting Review

- [ ] All SAGE requirements addressed
- [ ] Code comments reference requirement IDs
- [ ] Automated tests pass
- [ ] Manual testing completed
- [ ] Accessibility checked with tools
- [ ] Performance benchmarked
- [ ] No console errors or warnings
- [ ] Documentation updated

### For Reviewers

- [ ] SAGE requirements correctly implemented
- [ ] Code follows team standards
- [ ] Accessibility properly implemented
- [ ] No accessibility anti-patterns
- [ ] Performance acceptable
- [ ] Error handling robust
- [ ] Security considerations addressed
- [ ] Tests adequate

---

## Performance Benchmarks

### Required Metrics

```javascript
// ✅ Performance monitoring
const metrics = {
  FCP: 1.8,  // First Contentful Paint (target: <2s)
  LCP: 2.5,  // Largest Contentful Paint (target: <2.5s)
  TTI: 2.8,  // Time to Interactive (target: <3s)
  CLS: 0.05, // Cumulative Layout Shift (target: <0.1)
  FID: 80    // First Input Delay (target: <100ms)
};

// Track and report
if ('PerformanceObserver' in window) {
  new PerformanceObserver((list) => {
    list.getEntries().forEach((entry) => {
      logMetric(entry.name, entry.duration);
    });
  }).observe({ entryTypes: ['navigation', 'paint', 'largest-contentful-paint'] });
}
```

- [ ] Page load time <2s measured
- [ ] Time to interactive <3s measured
- [ ] Interaction feedback <100ms measured
- [ ] Performance regressions monitored
- [ ] Performance budget defined and enforced

---

## Deployment Checklist

### Pre-Deployment

- [ ] All tests passing (unit, integration, e2e)
- [ ] Accessibility audit passed
- [ ] Performance benchmarks met
- [ ] Security scan passed
- [ ] Code review approved
- [ ] QA sign-off received
- [ ] Staging environment tested
- [ ] Rollback plan documented

### Post-Deployment

- [ ] Production smoke tests passed
- [ ] Monitoring/alerting verified
- [ ] Performance metrics baseline established
- [ ] User feedback monitoring active
- [ ] Error tracking configured
- [ ] Analytics events firing
- [ ] Support team notified

---

## Documentation Requirements

### Code Documentation

```javascript
/**
 * Primary action button component
 * 
 * SAGE Requirements: S4 (touch targets), S5 (single primary)
 * Compliance: Minimum ✓
 * 
 * @param {string} label - Action verb label (e.g., "Continue", "Submit")
 * @param {function} onClick - Click handler
 * @returns {JSX.Element}
 */
export const PrimaryButton = ({ label, onClick }) => {
  return (
    <button
      className="sage-button-primary"
      style={{ minWidth: '56px', minHeight: '56px' }}  // S4
      onClick={onClick}
    >
      {label}
    </button>
  );
};
```

- [ ] SAGE requirement IDs in code comments
- [ ] Component documentation includes compliance notes
- [ ] API documentation includes accessibility notes
- [ ] README includes SAGE implementation notes

---

## Compliance Verification

**Quick Check**: Verify implementation

- [ ] S1-S10 (Safe Simplicity): All 10 requirements addressed
- [ ] A1-A10 (Assisted Autonomy): All 10 requirements addressed
- [ ] G1-G10 (Guided Interaction): All 10 requirements addressed
- [ ] E1-E10 (Emotional Trust Layer): All 10 requirements addressed

**Test Coverage**: ___% (target: 80%+)

**Accessibility Score**: ___/100 (target: 100)

**Performance Score**: ___/100 (target: 90+)

**Next Steps**:
1. ________________________________
2. ________________________________
3. ________________________________

---

**For translations, see:**
- [German (Deutsch)](engineering-checklist.de.md)
- [Arabic (العربية)](engineering-checklist.ar.md)

**Related Resources:**
- [Product Checklist](product-checklist.en.md)
- [UX Checklist](ux-checklist.en.md)
- [Core Specifications](../core/)
