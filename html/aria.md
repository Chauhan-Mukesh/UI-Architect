# HTML — ARIA

## Purpose
Use ARIA only when native semantics are insufficient. First rule of ARIA: don't use ARIA.

## Rules
- Prefer native elements (`<button>`, `<input>`, `<details>`, `<dialog>`) — they carry semantics and keyboard for free.
- If a native element exists that does what you need, use it. Do not add `role`.
- If you must build a custom widget, implement the full ARIA pattern (roles, states, keyboard).
- Common valid uses:
  - `aria-label` / `aria-labelledby` — accessible name when visible label is absent or elsewhere.
  - `aria-describedby` — link help or error text.
  - `aria-expanded`, `aria-controls` — disclosure widgets.
  - `aria-current="page|step|location|true"` — indicate current item.
  - `aria-live="polite|assertive"` — announce dynamic changes.
  - `aria-hidden="true"` — hide decorative icons; never on interactive content.

## Rules for state
- Update ARIA state via JavaScript when the visible state changes; keep them in sync.
- Do not use `role="button"` on a `<div>` if `<button>` fits.
- Do not use `role="link"` on a `<span>` if `<a>` fits.

## Anti-patterns
- `role="presentation"` on interactive elements.
- Redundant roles (`<nav role="navigation">`).
- `aria-label` overriding better visible labels.
- Custom widgets missing keyboard patterns (arrow keys, Home/End, Escape).
