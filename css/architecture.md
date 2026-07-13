# CSS — Architecture

## Purpose
A predictable, low-friction structure for styles that scales without rewriting.

## Rules
- Global order: reset → tokens → base → layout → components → utilities.
- Use CSS `@layer` when the project has enough styles to benefit; keep the order explicit.
- One responsibility per file. Naming reflects the responsibility.
- Prefer semantic class names over utility soup for maintainability.
- Third-party styles enter their own layer so they can be overridden without `!important`.
- No inline styles except for computed values (progress bars, dynamic transforms).

## File organization
- `tokens.css` — CSS custom properties (colors, spacing, type, radii, shadows, motion).
- `base.css` — element resets and defaults.
- `layout.css` — page-scale composition (grid, containers).
- `components/*.css` — one file per component.
- `utilities.css` — small helpers (visually-hidden, container, etc.). Keep few.

## Anti-patterns
- Global cascade with unpredictable specificity.
- `!important` sprinkled to fight the cascade.
- Component styles referencing another component's classes.
- Tokens duplicated across files.
