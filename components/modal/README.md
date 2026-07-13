# Modal (Dialog)

## Purpose
Interrupt with focused action or information that cannot happen inline. Use rarely.

## Structure
- Native `<dialog>` where possible.
- Header (title + close), body, footer (actions).
- Backdrop overlay dims the page behind.

## Variants
- Confirm (destructive or high-stakes).
- Form dialog.
- Content dialog (info, help).
- Non-modal dialog (`<dialog>` without `showModal()`).

## States
- Closed, opening, open, closing.
- Loading state within dialog (buttons disabled + spinner).

## Mobile
- Full-screen on small viewports.
- Close affordance always visible.
- Body scroll locked while open.

## Accessibility
- `role="dialog" aria-modal="true"` with `aria-labelledby` (title) and optional `aria-describedby`.
- Focus trapped inside; Escape closes.
- Focus returns to invoking element on close.
- No dialog inside a dialog (redesign the flow).

## Anti-patterns
- Modal on page load without user intent.
- Modal to display marketing content.
- Multiple stacked modals.
- Close button as an icon-only `<div>` without a label.
