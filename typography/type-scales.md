# Typography — Type Scales

## Purpose
A modular scale gives every text size a purpose. Steps derive from a base and a ratio.

## Rules
- Base body size: 16–18px (`1rem`–`1.125rem`).
- Ratios: 1.125 (compact), 1.2 (standard), 1.25 (comfortable), 1.333 (editorial), 1.414 (dramatic).
- Emit as CSS variables in rems.
- Fluid type via `clamp()`: `font-size: clamp(min, preferred, max);`

## Suggested roles
- `--size-caption`: 0.75rem
- `--size-body-sm`: 0.875rem
- `--size-body`: 1rem
- `--size-body-lg`: 1.125rem
- `--size-h4`: 1.25rem
- `--size-h3`: 1.5rem
- `--size-h2`: 2rem
- `--size-h1`: 2.5rem
- `--size-display`: `clamp(3rem, 6vw, 5rem)`

## Anti-patterns
- Pixel-value tokens (breaks user zoom).
- One-off sizes outside the scale.
- Scale that skips a step and forces awkward gaps.
