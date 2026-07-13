# Stats

## Purpose
Show quantifiable claims quickly and honestly. Trust breaks if the numbers are stale or unlabeled.

## Structure
- Row or grid of stat items, each with a number, unit, and label.
- Optional supporting subtext (source, timeframe).

## Variants
- Row (2–5 stats).
- Grid (4–8).
- Featured single stat with context.

## States
- Static by default. Optional count-up animation on scroll.
- Tabular numbers to prevent digit jitter.

## Mobile
- 1–2 columns; keep numbers large and labels legible.

## Accessibility
- Numbers and labels in the same semantic group; use `<dl>` with `<dt>` (label) and `<dd>` (number), or `<div role="group">` with `aria-labelledby`.
- Count-up animations paused for `prefers-reduced-motion`.
- Do not lose the value if animation is paused — final value renders regardless.

## Anti-patterns
- Vanity metrics without context ("500%").
- Missing timeframe on rates.
- Ambiguous units ("500K users" — total or monthly?).
