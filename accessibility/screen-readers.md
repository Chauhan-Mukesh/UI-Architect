# Accessibility — Screen Readers

## Purpose
Screen readers translate the DOM into speech. Semantic markup + correct ARIA = correct speech.

## Rules
- Every image has meaningful alt (or `alt=""` when truly decorative).
- Every interactive element has an accessible name (`<label>`, `aria-label`, or visible text).
- Live regions announce dynamic changes (`aria-live="polite"` for info, `assertive` for errors).
- Skip-link at page start.
- Landmarks (`<header>`, `<nav>`, `<main>`, `<footer>`) present and labeled.

## Announcements
- Use `aria-live` for content that changes without focus shift (form success, cart count, search result count).
- Do not use `aria-live` for content that already has focus (screen reader will announce it).
- Debounce announcements — avoid spamming on every keystroke.

## Testing
- Test with VoiceOver (macOS/iOS) and NVDA (Windows).
- Rotor / landmarks list should read a sensible outline.
- Read the whole page top to bottom; check heading order.

## Anti-patterns
- Icons without labels.
- Multiple `<h1>`s.
- Visually-hidden labels that don't match visible text (mismatch confuses voice control users).
- `aria-hidden="true"` on interactive content.
