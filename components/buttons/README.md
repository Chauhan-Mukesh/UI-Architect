# Buttons

## Purpose
Trigger an action or navigation. Buttons carry the site's action language — treat them as tokens, not one-offs.

## Structure
- `<button type="button|submit|reset">` for actions.
- `<a href>` styled as a button for navigation to another URL.
- Never a `<div onclick>`.

## Variants
- Primary — one per section max; carries the section's dominant action.
- Secondary — supporting action; visually subordinate.
- Ghost / text — low-emphasis inline action.
- Destructive — reserved for delete/remove; distinct color and confirmation flow.
- Icon-only — must include `aria-label`; touch target ≥ 44×44 px.
- Loading — disabled + spinner or label change, retaining width to prevent layout shift.

## States
- Default, hover, focus-visible, active, disabled, loading.
- Focus-visible ring 3:1 against adjacent surface.
- Disabled: reduced opacity but text/icon still readable; not achieved by removing color.

## Mobile
- Touch target ≥ 44×44 px.
- Adjacent buttons have ≥ 8px gap to prevent mis-taps.
- Full-width primary on narrow screens when the primary is the only action in view.

## Accessibility
- Descriptive labels ("Save changes" not "OK").
- Icon-only buttons: `aria-label`; icon `aria-hidden="true"`.
- Toggle buttons use `aria-pressed`.
- Loading state announces via `aria-busy` or accessible name change.

## Anti-patterns
- Two primaries in one row.
- Buttons that look like links or vice versa.
- Destructive action styled the same as primary.
- Text-only "click here" without context.
