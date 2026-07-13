# Toast (Notification)

## Purpose
Confirm a completed action or surface a low-priority message without interrupting flow.

## Structure
- Container region positioned in a corner (usually bottom-right or top-right).
- Individual toast: icon (optional), message, optional action, close button.

## Variants
- Success, warning, error, info, neutral.
- With action (Undo, Retry).
- Persistent (until dismissed) vs auto-dismiss.

## States
- Enter, visible, dismissing, dismissed.
- Timer paused on hover/focus.

## Mobile
- Positioned to avoid the primary CTA and system UI.
- Auto-dismiss timers longer on mobile (users read slower on the go).

## Accessibility
- Container is `aria-live="polite"` for info, `aria-live="assertive"` for errors.
- Actions inside toast reachable via keyboard.
- Do not rely on toast alone for critical feedback — pair with inline surface where the action originated.

## Anti-patterns
- Toast used for form validation errors.
- Toast that auto-dismisses too quickly (<4s) with actions inside.
- Stacked toasts covering the primary UI.
