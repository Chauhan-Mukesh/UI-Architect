# CSS — Responsive Design

## Purpose
Deliver a usable experience on every viewport by adjusting layout at content breakpoints, not device breakpoints.

## Rules
- Mobile-first: base styles for small screens; `@media (min-width: …)` for larger.
- Break at content: when the layout starts to fail, that's a breakpoint.
- Common suggested breakpoints (starting points, not laws):
  - `@media (min-width: 40em)` — small tablet
  - `@media (min-width: 64em)` — desktop
  - `@media (min-width: 80em)` — wide desktop
- Prefer container queries for components that adapt to their slot, not the viewport.
- Fluid type with `clamp()`: `font-size: clamp(1rem, 0.9rem + 0.5vw, 1.25rem);`
- Fluid spacing with `clamp()` for section padding.

## Rules
- Avoid targeting specific devices (iPhone-specific queries).
- Do not hide critical content on mobile.
- Test at 320px width (narrowest common floor).

## Anti-patterns
- Hover-only interactions with no tap equivalent.
- `display: none` used for mobile navigation without preserving semantics.
- Fixed pixel widths in main content areas.
